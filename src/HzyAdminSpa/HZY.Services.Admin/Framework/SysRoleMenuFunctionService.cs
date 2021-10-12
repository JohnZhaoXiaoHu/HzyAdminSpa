﻿using HZY.EFCore.Extensions;
using HZY.EFCore.Models;
using HZY.Infrastructure;
using HZY.Infrastructure.ApiResultManage;
using HZY.Models.DTO;
using HZY.Models.Entities;
using HZY.Models.Entities.Framework;
using HZY.Repositories.Framework;
using HZY.Services.Admin.ServicesAdmin;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Services.Admin.Framework;

/// <summary>
/// 角色 菜单 功能服务
/// </summary>
public class SysRoleMenuFunctionService : AdminBaseService<SysRoleMenuFunctionRepository>
{
    private readonly SysMenuRepository _sysMenuRepository;
    private readonly SysFunctionRepository _sysFunctionRepository;
    private readonly SysMenuFunctionRepository _sysMenuFunctionRepository;

    public SysRoleMenuFunctionService(SysRoleMenuFunctionRepository repository,
        SysMenuRepository sysMenuRepository,
        SysFunctionRepository sysFunctionRepository,
        SysMenuFunctionRepository sysMenuFunctionRepository) : base(repository)
    {
        _sysMenuRepository = sysMenuRepository;
        _sysFunctionRepository = sysFunctionRepository;
        _sysMenuFunctionRepository = sysMenuFunctionRepository;
    }


    /// <summary>
    /// 保存数据
    /// </summary>
    /// <param name="form"></param>
    /// <returns></returns>
    public async Task<Guid> SaveFormAsync(SysRoleMenuFunctionFormDto form)
    {
        var roleId = form.RoleId;
        var menuId = form.MenuId;
        var functionIds = form.FunctionIds;

        await this.Repository.DeleteAsync(w => w.RoleId == roleId && w.MenuId == menuId);

        var sysRoleMenuFunctions = functionIds
            .Select(item => new SysRoleMenuFunction { MenuId = menuId, RoleId = roleId, FunctionId = item })
            .ToList();

        await this.Repository.InsertRangeAsync(sysRoleMenuFunctions);

        return roleId;
    }

    #region 角色菜单功能 Tree

    private readonly List<Guid> _ids = new();

    public async Task<(List<Guid>, List<object>)> GetRoleMenuFunctionTreeAsync(Guid roleId)
    {
        var sysMenuList = await this._sysMenuRepository.Select.OrderBy(w => w.Number).ToListAsync();
        var sysFunctionList = await this._sysFunctionRepository.Select.OrderBy(w => w.Number).ToListAsync();
        var sysMenuFunctionList =
            await this._sysMenuFunctionRepository.Select.OrderBy(w => w.CreateTime).ToListAsync();
        var sysRoleMenuFunctionList = await this.Repository.Select.Where(w => w.RoleId == roleId).ToListAsync();

        return (_ids, this.CreateRoleMenuFunctionTree(Guid.Empty, sysMenuList, sysFunctionList,
            sysMenuFunctionList,
            sysRoleMenuFunctionList));
    }

    /// <summary>
    /// 角色权限树
    /// </summary>
    /// <param name="id"></param>
    /// <param name="sysMenuAllList"></param>
    /// <param name="sysFunctionList"></param>
    /// <param name="sysMenuFunctionList"></param>
    /// <param name="sysRoleMenuFunctionList"></param>
    /// <returns></returns>
    private List<object> CreateRoleMenuFunctionTree(Guid id, List<SysMenu> sysMenuAllList,
        List<SysFunction> sysFunctionList, List<SysMenuFunction> sysMenuFunctionList,
        List<SysRoleMenuFunction> sysRoleMenuFunctionList)
    {
        var res = new List<object>();
        var menus = id == Guid.Empty
            ? sysMenuAllList.Where(w => w.ParentId == null || w.ParentId == Guid.Empty).ToList()
            : sysMenuAllList.Where(w => w.ParentId == id).ToList();

        foreach (var item in menus)
        {
            var children = new List<object>();
            var functions = new List<object>();
            var checkFunctions = new List<object>();
            if (sysMenuAllList.Any(w => w.ParentId == item.Id))
            {
                children = this.CreateRoleMenuFunctionTree(item.Id, sysMenuAllList, sysFunctionList,
                    sysMenuFunctionList, sysRoleMenuFunctionList);
            }
            else
            {
                //if (string.IsNullOrWhiteSpace(item.Menu_Url)) continue;
                //遍历功能
                foreach (var function in sysFunctionList)
                {
                    //判断是否 该菜单下 是否勾选了 该功能
                    var isChecked = sysMenuFunctionList
                        .Any(w => w.MenuId == item.Id && w.FunctionId == function.Id);

                    if (!isChecked) continue;

                    var key = $"{function.Id}";

                    functions.Add(new
                    {
                        id = key,
                        //label = $"{_Function.Name}-{_Function.ByName}-{_Function.Number}"
                        label = function.Name
                    });

                    //判断该角色 对应的菜单和功能是否存在
                    var any = sysRoleMenuFunctionList.Any(w => w.MenuId == item.Id && w.FunctionId == function.Id);

                    if (any) checkFunctions.Add(key);
                }
            }

            //
            if (children.Count > 0) _ids.Add(item.Id);
            res.Add(new
            {
                id = item.Id,
                label = $"{item.Name}-{item.Number}",
                children = children.Count == 0 ? null : children,
                functions,
                checkFunction = checkFunctions,
                checkAll = false
            });
        }

        return res;
    }

    #endregion
}