﻿using HZY.Models.Entities.Framework;
using System;
using System.Collections.Generic;

namespace HZY.Models.DTO;

public class SysMenuFormDto
{
    public SysMenu Form { get; set; }
    public List<Guid> FunctionIds { get; set; }
}