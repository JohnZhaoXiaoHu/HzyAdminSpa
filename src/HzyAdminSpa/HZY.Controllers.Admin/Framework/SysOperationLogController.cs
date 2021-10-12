﻿using HZY.Controllers.Admin.ControllersAdmin;
using HZY.EFCore.Attributes;
using HZY.EFCore.Models;
using HZY.Infrastructure;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.DTO;
using HZY.Models.Entities.Framework;
using HZY.Repositories.Framework;
using HZY.Services.Accounts;
using HZY.Services.Admin.Framework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Controllers.Admin.Framework;

/// <summary>
/// 操作日志控制器
/// </summary>
[ControllerDescriptor("10e7b3cf-d846-4b1b-7662-08d95814698b")]
public class SysOperationLogController : AdminBaseController<SysOperationLogService>
{
    public SysOperationLogController(SysOperationLogService defaultService) : base(defaultService)
    {

    }

    /// <summary>
    /// 获取表单数据
    /// </summary>
    /// <param name="size"></param>
    /// <param name="page"></param>
    /// <param name="search"></param>
    /// <returns></returns>
    [HttpPost("FindList/{size}/{page}")]
    public async Task<PagingViewModel> FindListAsync([FromRoute] int size, [FromRoute] int page, [FromBody] SysOperationLog search)
    {
        return await DefaultService.FindListAsync(page, size, search);
    }
    [HttpGet("DeleteAllData")]
    public async Task<bool> DeleteAllDataAsync()
    {
        return await DefaultService.DeletedAllData();
    }
    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    [HttpGet("FindForm/{id?}")]
    public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id)
    {
        return await this.DefaultService.FindFormAsync(id);
    }

}