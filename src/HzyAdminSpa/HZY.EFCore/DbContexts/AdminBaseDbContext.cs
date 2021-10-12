﻿/*
 * *******************************************************
 *
 * 作者：hzy
 *
 * 开源地址：https://gitee.com/hzy6
 *
 * *******************************************************
 */

using System;
using System.Linq;
using System.Linq.Expressions;
using HZY.EFCore.Interface;
using HZY.Infrastructure.Token;
using HZY.Models.Entities;
using HZY.Models.Entities.BaseEntitys;
using HZY.Models.Entities.Framework;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;

namespace HZY.EFCore.DbContexts;

/// <summary>
/// 后台权限管理系统 DbContext
/// </summary>
public class AdminBaseDbContext : BaseDbContext<AdminBaseDbContext>
{
    private readonly ICacheEntity _cacheEntity;
    private readonly TokenService _tokenService;

    public AdminBaseDbContext(DbContextOptions<AdminBaseDbContext> options, ICacheEntity cacheEntity, TokenService tokenService) : base(options)
    {
        this.SavingChanges += (sender, args) => this.SavingChangesEvent(sender, args);
        _cacheEntity = cacheEntity;
        _tokenService = tokenService;
    }

    #region DbSet

    #region 后台系统 基础
    public DbSet<SysFunction> SysFunction { get; set; }
    public DbSet<SysMenu> SysMenu { get; set; }
    public DbSet<SysMenuFunction> SysMenuFunction { get; set; }
    public DbSet<SysRole> SysRole { get; set; }
    public DbSet<SysRoleMenuFunction> SysRoleMenuFunction { get; set; }
    public DbSet<SysUser> SysUser { get; set; }
    public DbSet<SysUserRole> SysUserRole { get; set; }
    public DbSet<SysOrganization> SysOrganization { get; set; }
    public DbSet<SysPost> SysPost { get; set; }
    public DbSet<SysUserPost> SysUserPost { get; set; }
    public DbSet<SysDictionary> SysDictionary { get; set; }
    public DbSet<SysOperationLog> SysOperationLog { get; set; }
    #endregion

    #region 业务

    public DbSet<Member> Member { get; set; }

    #endregion

    #endregion

    /// <summary>
    /// 获取实体信息缓存服务
    /// </summary>
    public virtual ICacheEntity CacheEntity => this._cacheEntity;

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        //扫描表 并 缓存 属性 xml 信息
        _cacheEntity.Set(modelBuilder.Model.GetEntityTypes().Select(item => item.ClrType));

        #region 过滤软删除

        foreach (var entityType in modelBuilder.Model
            .GetEntityTypes()
            .Where(w => typeof(IDeleteBaseEntity).IsAssignableFrom(w.ClrType)))
        {
            var parameter = Expression.Parameter(entityType.ClrType);
            var propertyMethodInfo = typeof(EF).GetMethod(nameof(EF.Property)).MakeGenericMethod(typeof(bool));
            var isDeletedProperty = Expression.Call(propertyMethodInfo, parameter, Expression.Constant(nameof(IDeleteBaseEntity.IsDeleted)));
            BinaryExpression compareExpression = Expression.MakeBinary(ExpressionType.Equal, isDeletedProperty, Expression.Constant(false));
            var lambda = Expression.Lambda(compareExpression, parameter);
            modelBuilder.Entity(entityType.ClrType).HasQueryFilter(lambda);
        }

        #endregion
    }

    /// <summary>
    /// 在调用SaveChanges结束时激发的事件 
    /// </summary>
    protected void SavingChangesEvent(object sender, SavingChangesEventArgs e)
    {
        var userId = _tokenService.GetAccountIdByToken();

        var entries = ChangeTracker.Entries();
        var entityEntries = entries as EntityEntry[] ?? entries.ToArray();

        #region 处理 DefaultBaseEntity

        //Update
        var updateEntries_BaseModel = entityEntries
            .Where(w => w.Entity is DefaultBaseEntity && w.State == EntityState.Modified) // || w.State == EntityState.Unchanged
            .Select(item => (DefaultBaseEntity)item.Entity)
            .ToList();
        updateEntries_BaseModel.ForEach(w => w.UpdateTime = DateTime.Now);

        //Insert
        var insertEntries_BaseModel = entityEntries
            .Where(w => w.Entity is DefaultBaseEntity && w.State == EntityState.Added)
            .Select(item => (DefaultBaseEntity)item.Entity)
            .ToList();
        foreach (var entity in insertEntries_BaseModel)
        {
            entity.CreateTime = DateTime.Now;
            entity.UpdateTime = DateTime.Now;
        }

        #endregion

        #region 处理 BaseEntity

        //Insert
        var insertEntries = entityEntries
            .Where(w => w.Entity is ICreateBaseEntity && w.State == EntityState.Added)
            .Select(item => (ICreateBaseEntity)item.Entity)
            .ToList();
        foreach (var item in insertEntries)
        {
            item.CreateTime = DateTime.Now;
            item.CreateUserId = userId;
        }

        //Update
        var updateEntries = entityEntries
            .Where(w => w.Entity is IUpdateBaseEntity && w.State == EntityState.Modified) // || w.State == EntityState.Unchanged
            .Select(item => (IUpdateBaseEntity)item.Entity)
            .ToList();
        foreach (var item in updateEntries)
        {
            item.UpdateTime = DateTime.Now;
            item.UpdateUserId = userId;
        }

        //Delete
        var deleteEntries = entityEntries
            .Where(w => w.Entity is IDeleteBaseEntity && w.State == EntityState.Deleted);
        foreach (var item in deleteEntries)
        {
            item.State = EntityState.Modified;
            var entity = (IDeleteBaseEntity)item.Entity;
            entity.IsDeleted = true;
            entity.DeleteTime = DateTime.Now;
            entity.DeleteUserId = userId;
        }

        #endregion


    }


}