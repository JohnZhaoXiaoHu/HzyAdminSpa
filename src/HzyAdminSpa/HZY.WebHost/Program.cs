using HZY.Infrastructure.ApiResultManage;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.MessageQueue;
using HZY.Infrastructure.NLogService;
using HZY.Infrastructure.TextJson;
using HZY.WebHost.Configure;
using HZY.WebHost.Filters;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NLog.Web;
using System;
using System.Text.Json;

var logger = NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();

try
{
    #region ��������
    var builder = WebApplication.CreateBuilder(args);

    //��ַ
    //builder.WebHost.UseUrls("http://*:5555", "http://localhost:5555");
    //builder.WebHost.UseUrls("http://*:5555");

    //ʹ�� Nlog
    builder.WebHost.UseNLog();

    //����NLog
    NLogUtil.Init(logger);
    logger.Debug("��ʼ�� Main !");

    // Add services to the container.
    builder.Services.AddControllers(options =>
    {
        options.Filters.Add<ApiExceptionFilter>();
        options.Filters.Add<ApiAuthorizationActionFilter>();
    })
    .AddJsonOptions(options =>
    {
        //���� ����� Dictionary ��ô �� json ���л� �� key ���ַ� ���� С�շ� ����
        options.JsonSerializerOptions.DictionaryKeyPolicy = JsonNamingPolicy.CamelCase;
        options.JsonSerializerOptions.Converters.Add(new DateTimeJsonConverter());
        options.JsonSerializerOptions.Converters.Add(new DateTimeNullJsonConverter());
    })
    ;

    //���񹹽�
    AppConfigureServices.Build(builder.Services, builder.Configuration);

    var app = builder.Build();

    #endregion

    #region Ӧ�÷���

    var messageQueueProvider = app.Services.GetRequiredService<IMessageQueueProvider>();

    if (app.Environment.IsDevelopment())
    {
        app.UseDeveloperExceptionPage();
        //app.UseSwagger();
        //app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "HZY.WebHost v1"));
    }

    app.UseHttpsRedirection();

    app.UseRouting();

    //app.UseAuthorization();

    //���ù���
    AppConfigure.Build(app, app.Environment, app.Services, messageQueueProvider);

    app.UseEndpoints(endpoints =>
    {
        endpoints.MapControllers();
    });

    app.Run();

    #endregion

}
catch (Exception exception)
{
    if (exception is not MessageBox)
    {
        //NLog: catch setup errors
        logger.Error(exception, "�����쳣��ֹͣ����!");
        throw;
    }
}
finally
{
    // Ensure to flush and stop internal timers/threads before application-exit (Avoid segmentation fault on Linux)
    NLog.LogManager.Shutdown();
}