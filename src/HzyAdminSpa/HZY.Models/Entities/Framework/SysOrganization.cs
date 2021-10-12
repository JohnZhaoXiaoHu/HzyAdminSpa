﻿using System;
using HZY.Models.Entities.BaseEntitys;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections.Generic;

namespace HZY.Models.Entities.Framework;

/// <summary>
/// 组织机构
/// </summary>
public class SysOrganization : DefaultBaseEntity<Guid>
{
    /// <summary>
    /// 组织名称
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// 组织排序号
    /// </summary>
    public int? OrderNumber { get; set; }

    /// <summary>
    /// 负责人
    /// </summary>
    public string Leader { get; set; }

    /// <summary>
    /// 联系电话
    /// </summary>
    public string Phone { get; set; }

    /// <summary>
    /// 邮箱
    /// </summary>
    public string Email { get; set; }

    /// <summary>
    /// 状态
    /// </summary>
    public StateEnum? State { get; set; } = StateEnum.正常;

    /// <summary>
    /// 父级Id
    /// </summary>
    public Guid? ParentId { get; set; }

    [ForeignKey(nameof(ParentId))]
    public virtual ICollection<SysOrganization> Children { get; set; } = new List<SysOrganization>();

}

