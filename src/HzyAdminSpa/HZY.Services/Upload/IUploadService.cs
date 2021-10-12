﻿using HZY.Infrastructure.ScanDIService.Interface;
using Microsoft.AspNetCore.Http;

namespace HZY.Services.Upload;

public interface IUploadService : IDITransient
{
    string HandleUploadFile(IFormFile iFormFile, params string[] format);

    string HandleUploadImageFile(IFormFile iFormFile, string folder = "files");
}
