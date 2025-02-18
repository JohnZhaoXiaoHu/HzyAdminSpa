﻿using HZY.EFCore.Extensions;
using HZY.EFCore.Models;
using HZY.Infrastructure;
using HZY.Infrastructure.ApiResultManage;
using HZY.Model.BO;
using HZY.Models.DTO;
using HZY.Models.Entities;
using HZY.Models.Entities.Framework;
using HZY.Repositories.Framework;
using HZY.Services.Accounts;
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
/// 菜单服务
/// </summary>
public class SysMenuService : AdminBaseService<SysMenuRepository>
{
    private readonly SysFunctionRepository _sysFunctionRepository;
    private readonly SysMenuFunctionRepository _sysMenuFunctionRepository;
    private readonly SysRoleMenuFunctionRepository _sysRoleMenuFunctionRepository;
    private readonly AccountInfo _accountInfo;
    private readonly AppConfiguration _appConfiguration;

    public SysMenuService(SysMenuRepository repository,
        SysFunctionRepository sysFunctionRepository,
        SysMenuFunctionRepository sysMenuFunctionRepository,
        SysRoleMenuFunctionRepository sysRoleMenuFunctionRepository,
        IAccountService accountService,
        AppConfiguration appConfiguration) : base(
        repository)
    {
        _sysFunctionRepository = sysFunctionRepository;
        _sysMenuFunctionRepository = sysMenuFunctionRepository;
        _sysRoleMenuFunctionRepository = sysRoleMenuFunctionRepository;
        _appConfiguration = appConfiguration;
        this._accountInfo = accountService.GetAccountInfo();
    }

    /// <summary>
    /// 获取列表数据
    /// </summary>
    /// <param name="page"></param>
    /// <param name="size"></param>
    /// <param name="search"></param>
    /// <returns></returns>
    public async Task<PagingViewModel> FindListAsync(int page, int size, SysMenu search)
    {
        var query = (from sysMenu in this.Repository.Orm.SysMenu
                     from sysMenuParent in this.Repository.Orm.SysMenu.Where(w => w.Id == sysMenu.ParentId).DefaultIfEmpty()
                     select new { t1 = sysMenu, t2 = sysMenuParent })
              .WhereIf(search?.ParentId == Guid.Empty || search?.ParentId == null, w => w.t1.ParentId == null || w.t1.ParentId == Guid.Empty)
              .WhereIf(search?.ParentId != Guid.Empty && search?.ParentId != null, w => w.t1.ParentId == search.ParentId)
              .WhereIf(!string.IsNullOrWhiteSpace(search?.Name), a => a.t1.Name.Contains(search.Name))
              .OrderBy(w => w.t1.Number)
              .Select(w => new
              {
                  w.t1.Id,
                  w.t1.Number,
                  w.t1.Name,
                  w.t1.Url,
                  父级菜单 = w.t2.Name,
                  w.t1.ComponentName,
                  w.t1.Router,
                  w.t1.Icon,
                  w.t1.Close,
                  w.t1.Show,
                  UpdateTime = w.t1.UpdateTime.ToString("yyyy-MM-dd"),
                  CreateTime = w.t1.CreateTime.ToString("yyyy-MM-dd"),
              })
          ;

        return await this.Repository.AsPagingViewModelAsync(query, page, size);
    }

    /// <summary>
    /// 根据id数组删除
    /// </summary>
    /// <param name="ids"></param>
    /// <returns></returns>
    public async Task DeleteListAsync(List<Guid> ids)
    {
        await this._sysRoleMenuFunctionRepository.DeleteAsync(w => ids.Contains(w.MenuId));
        await this._sysMenuFunctionRepository.DeleteAsync(w => ids.Contains(w.MenuId));
        await this.Repository.DeleteByIdsAsync(ids);
    }

    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Dictionary<string, object>> FindFormAsync(Guid id)
    {
        var res = new Dictionary<string, object>();

        var form = await this.Repository.FindByIdAsync(id);
        var allFunctions = await this._sysFunctionRepository.Select
            .OrderBy(w => w.Number)
            .ToListAsync();
        var functionIds = await this._sysMenuFunctionRepository.Select
            .Where(w => w.MenuId == id)
            .Select(w => w.FunctionId)
            .ToListAsync();

        res[nameof(id)] = id == Guid.Empty ? "" : id;
        res[nameof(form)] = form.NullSafe();
        res[nameof(allFunctions)] = allFunctions;
        res[nameof(functionIds)] = functionIds;
        return res;
    }

    /// <summary>
    /// 保存数据
    /// </summary>
    /// <param name="form"></param>
    /// <returns></returns>
    public async Task<SysMenu> SaveFormAsync(SysMenuFormDto form)
    {
        var model = form.Form;
        var functionIds = form.FunctionIds;

        model = await this.Repository.InsertOrUpdateAsync(model);

        await this._sysMenuFunctionRepository.DeleteAsync(w => w.MenuId == model.Id);
        if (functionIds.Count <= 0) return model;

        var sysMenuFunctionList = await this._sysMenuFunctionRepository.Select
            .Where(w => w.MenuId == model.Id)
            .ToListAsync();
        foreach (var item in functionIds)
        {
            var sysMenuFunction = sysMenuFunctionList.FirstOrDefault(w => w.FunctionId == item) ?? new SysMenuFunction();
            sysMenuFunction.Id = sysMenuFunction.Id == Guid.Empty ? Guid.Empty : sysMenuFunction.Id;
            sysMenuFunction.FunctionId = item;
            sysMenuFunction.MenuId = model.Id;
            await this._sysMenuFunctionRepository.InsertAsync(sysMenuFunction);
        }

        return model;
    }

    /// <summary>
    /// 导出Excel
    /// </summary>
    /// <param name="search"></param>
    /// <returns></returns>
    public async Task<byte[]> ExportExcelAsync(SysMenu search)
    {
        var tableViewModel = await this.FindListAsync(1, 999999, search);
        return this.ExportExcelByPagingViewModel(tableViewModel, null, "Id");
    }

    #region 创建系统左侧菜单

    /// <summary>
    /// 根据角色ID 获取菜单
    /// </summary>
    /// <returns></returns>
    public async Task<List<SysMenu>> GetMenusByCurrentRoleAsync()
    {
        var sysMenuAllList = await this.Repository.Select
            .Where(w => w.Show == 1)
            .OrderBy(w => w.Number)
            .ToListAsync();

        if (this._accountInfo.IsAdministrator) return sysMenuAllList;

        var sysMenuList = await (
            from t1 in this.Repository.Orm.SysRoleMenuFunction
            from t2 in this.Repository.Orm.SysFunction.Where(w => w.Id == t1.FunctionId && w.ByName == ServicesAdminConsts.Function_Display).DefaultIfEmpty()
            from t3 in this.Repository.Orm.SysMenu.Where(w => w.Id == t1.MenuId).DefaultIfEmpty()
            where this._accountInfo.SysRoles.Select(w => w.Id).Contains(t1.RoleId) && t3.Show == 1
            select t3)
            .ToListAsync()
            ;

        var newSysMenuList = new List<SysMenu>();

        foreach (var item in sysMenuList)
        {
            this.CheckUpperLevel(sysMenuAllList, sysMenuList, newSysMenuList, item);
            var item1 = item;
            if (newSysMenuList.Find(w => w.Id == item1.Id) == null)
                newSysMenuList.Add(item);
        }

        return newSysMenuList.OrderBy(w => w.Number).ToList();
    }

    private void CheckUpperLevel(List<SysMenu> sysMenuAllList, List<SysMenu> oldSysMenuList,
        List<SysMenu> newSysMenuList, SysMenu menu)
    {
        if (oldSysMenuList.Find(w => w.Id == menu.ParentId.ToGuid()) != null ||
            newSysMenuList.Find(w => w.Id == menu.ParentId) != null) return;

        var item = sysMenuAllList.Find(w => w.Id == menu.ParentId);
        if (item == null) return;

        newSysMenuList.Add(item);

        this.CheckUpperLevel(sysMenuAllList, oldSysMenuList, newSysMenuList, item);
    }

    /// <summary>
    /// 创建菜单
    /// </summary>
    /// <param name="id"></param>
    /// <param name="sysMenuList"></param>
    public List<Dictionary<string, object>> CreateMenus(Guid id, List<SysMenu> sysMenuList)
    {
        var menus = id == Guid.Empty
            ? sysMenuList.Where(w => w.ParentId == null || w.ParentId == Guid.Empty).ToList()
            : sysMenuList.Where(w => w.ParentId == id).ToList();

        return menus.Select(item => new Dictionary<string, object>
        {
            ["id"] = item.Id,
            ["name"] = item.Name,
            ["componentName"] = item.ComponentName,
            ["url"] = item.Url,
            ["router"] = item.Router,
            ["jumpUrl"] = string.IsNullOrWhiteSpace(item.JumpUrl) ? item.Router : item.JumpUrl,
            ["icon"] = item.Icon,
            ["close"] = item.Close,
            ["parentId"] = item.ParentId,
            ["children"] = this.CreateMenus(item.Id.ToGuid(), sysMenuList)
        }).ToList();
    }

    /// <summary>
    /// 获取拥有的菜单对象的权限
    /// </summary>
    /// <param name="sysMenuList"></param>
    /// <returns></returns>
    public async Task<List<Dictionary<string, object>>> GetPowerByMenusAsync(List<SysMenu> sysMenuList)
    {
        var sysFunctionList = await this._sysFunctionRepository.Select.OrderBy(w => w.Number).ToListAsync();
        var sysMenuFunctionList = await this._sysMenuFunctionRepository.Select.ToListAsync();
        var sysRoleMenuFunctionList = await this._sysRoleMenuFunctionRepository.Select
            .Where(w => this._accountInfo.SysRoles.Select(w => w.Id).Contains(w.RoleId))
            .ToListAsync();

        var res = new List<Dictionary<string, object>>();

        if (this._accountInfo.IsAdministrator)
        {
            foreach (var item in sysMenuList)
            {
                var power = new Dictionary<string, object>
                {
                    ["MenuId"] = item.Id
                };
                foreach (var sysFunction in sysFunctionList)
                {
                    if (string.IsNullOrWhiteSpace(sysFunction.ByName)) continue;

                    var isPower = sysMenuFunctionList
                        .Any(w => w.MenuId == item.Id && w.FunctionId == sysFunction.Id);
                    if (sysFunction.ByName == ServicesAdminConsts.Function_Display || item.ParentId == this._appConfiguration.SysMenuId)
                        isPower = true;
                    power.Add(sysFunction.ByName, isPower);
                }

                res.Add(power);
            }

            return res;
        }

        foreach (var item in sysMenuList)
        {
            var power = new Dictionary<string, object>
            {
                ["MenuId"] = item.Id
            };
            foreach (var sysFunction in sysFunctionList)
            {
                if (string.IsNullOrWhiteSpace(sysFunction.ByName)) continue;

                if (_accountInfo.SysRoles.Select(w => w.Id).Any())
                {
                    var isPower = sysRoleMenuFunctionList
                        .Any(w =>
                            this._accountInfo.SysRoles.Select(w => w.Id).Contains(w.RoleId) && w.MenuId == item.Id &&
                            w.FunctionId == sysFunction.Id);
                    power.Add(sysFunction.ByName, isPower);
                }
                else
                {
                    power.Add(sysFunction.ByName, false);
                }
            }

            res.Add(power);
        }

        return res;
    }

    /// <summary>
    /// 根据菜单获取权限
    /// </summary>
    /// <param name="menuId"></param>
    /// <returns></returns>
    public async Task<Dictionary<string, bool>> GetPowerStateByMenuId(Guid menuId)
    {
        var sysMenu = await this.Repository.FindByIdAsync(menuId);
        var sysFunctionList = await this._sysFunctionRepository.Select.OrderBy(w => w.Number).ToListAsync();
        var sysMenuFunctionList = await this._sysMenuFunctionRepository.Select.ToListAsync();
        var sysRoleMenuFunctionList = await this._sysRoleMenuFunctionRepository.Select
            .Where(w => this._accountInfo.SysRoles.Select(w => w.Id).Contains(w.RoleId))
            .ToListAsync();

        var power = new Dictionary<string, bool>();

        if (this._accountInfo.IsAdministrator)
        {
            foreach (var item in sysFunctionList)
            {
                if (string.IsNullOrWhiteSpace(item.ByName)) continue;

                var isPower = sysMenuFunctionList.Any(w => w.MenuId == menuId && w.FunctionId == item.Id);
                if (item.ByName == ServicesAdminConsts.Function_Display || sysMenu.ParentId == this._appConfiguration.SysMenuId)
                    isPower = true;
                power.Add(item.ByName, isPower);
            }

            return power;
        }

        foreach (var item in sysFunctionList)
        {
            if (string.IsNullOrWhiteSpace(item.ByName)) continue;

            if (_accountInfo.SysRoles.Select(w => w.Id).Any())
            {
                var isPower = sysRoleMenuFunctionList
                    .Any(w => this._accountInfo.SysRoles.Select(w => w.Id).Contains(w.RoleId) && w.MenuId == menuId &&
                              w.FunctionId == item.Id);
                power.Add(item.ByName, isPower);
            }
            else
            {
                power.Add(item.ByName, false);
            }
        }

        return power;
    }

    public async Task<SysMenu> GetMenuByIdAsync(Guid menuId) => await this.Repository.FindByIdAsync(menuId);

    #endregion 左侧菜单

    #region 创建菜单 功能 树

    public async Task<(List<object>, List<Guid>, List<string>)> GetMenuFunctionTreeAsync()
    {
        var sysMenus = await this.Repository.Select.OrderBy(w => w.Number).ToListAsync();
        var sysFunctions = await this._sysFunctionRepository.Select.OrderBy(w => w.Number).ToListAsync();
        var sysMenuFunctions =
            await this._sysMenuFunctionRepository.Select.OrderBy(w => w.CreateTime).ToListAsync();
        List<Guid> defaultExpandedKeys = new();
        List<string> defaultCheckedKeys = new();
        var tree = this.CreateMenuFunctionTree(Guid.Empty, sysMenus, sysFunctions, sysMenuFunctions, defaultExpandedKeys, defaultCheckedKeys);
        return (tree, defaultExpandedKeys, defaultCheckedKeys);
    }

    /// <summary>
    /// 获取菜单与功能树
    /// </summary>
    /// <param name="id"></param>
    /// <param name="sysMenuAllList"></param>
    /// <param name="sysFunctions"></param>
    /// <param name="sysMenuFunctions"></param>
    /// <param name="defaultExpandedKeys"></param>
    /// <param name="defaultCheckedKeys"></param>
    /// <returns></returns>
    private List<object> CreateMenuFunctionTree(Guid id, List<SysMenu> sysMenuAllList,
        List<SysFunction> sysFunctions,
        List<SysMenuFunction> sysMenuFunctions, List<Guid> defaultExpandedKeys, List<string> defaultCheckedKeys)
    {
        var res = new List<object>();
        var menus = id == Guid.Empty
            ? sysMenuAllList.Where(w => w.ParentId == null || w.ParentId == Guid.Empty).ToList()
            : sysMenuAllList.Where(w => w.ParentId == id).ToList();

        foreach (var item in menus)
        {
            var children = new List<object>();
            if (sysMenuAllList.Any(w => w.ParentId == item.Id))
            {
                defaultExpandedKeys.Add(item.Id);

                children = this.CreateMenuFunctionTree(item.Id, sysMenuAllList, sysFunctions, sysMenuFunctions,
                    defaultExpandedKeys, defaultCheckedKeys);
            }
            else
            {
                //if (string.IsNullOrWhiteSpace(item.Menu_Url)) continue;
                //遍历功能
                foreach (var function in sysFunctions)
                {
                    //判断是否 该菜单下 是否勾选了 该功能
                    var isChecked = sysMenuFunctions.Any(w => w.FunctionId == function.Id && w.MenuId == item.Id);

                    var key = $"{item.Id}${function.Id}";
                    if (isChecked) defaultCheckedKeys.Add(key);

                    children.Add(new
                    {
                        key,
                        title = $"{function.Name}-{function.ByName}-{function.Number}",
                        disabled = true,
                        children = new ArrayList()
                    });
                }
            }

            res.Add(new
            {
                key = item.Id,
                title = $"{item.Name}-{item.Number}",
                disableCheckbox = true,
                children
            });
        }

        return res;
    }

    #endregion
}