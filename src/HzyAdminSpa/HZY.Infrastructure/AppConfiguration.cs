﻿using System;
using HZY.Infrastructure;
using HZY.Infrastructure.ScanDIService.Attributes;
using HZY.Infrastructure.ScanDIService.Enums;
using Microsoft.Extensions.Configuration;

namespace HZY.Infrastructure;

/// <summary>
/// 程序配置信息映射类 appsettings.json
/// </summary>
[DIService(DIType.Singleton)]
public class AppConfiguration
{
    private readonly IConfiguration _configuration;

    public AppConfiguration(IConfiguration configuration)
    {
        this._configuration = configuration;
        //AppConfig 
        this.Mapping(nameof(AppConfiguration));
    }

    /// <summary>
    /// 映射数据 到 属性
    /// </summary>
    /// <param name="key"></param>
    private void Mapping(string key)
    {
        var properties = this.GetType().GetProperties();
        foreach (var item in properties)
        {
            var value = _configuration[$"{key}:{item.Name}"];

            if (item.PropertyType == typeof(Guid))
            {
                item.SetValue(this, value.ToGuid());
            }
            else if (item.PropertyType == typeof(int))
            {
                item.SetValue(this, value.ToInt32());
            }
            else
            {
                item.SetValue(this, value);
            }
        }
    }

    public string AppTitle { get; set; }
    public string JwtKeyName { get; set; }
    public string JwtSecurityKey { get; set; }
    public Guid AdminRoleId { get; set; }
    public Guid SysMenuId { get; set; }
    public string AuthorizationKeyName { get; set; }
}