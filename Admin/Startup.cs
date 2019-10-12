using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.SpaServices.ReactDevelopmentServer;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace Admin
{
    using System.Text.Json;
    using Admin.AppService;
    using Microsoft.AspNetCore.SpaServices;
    using VueCliMiddleware;

    public class Startup
    {
        public Startup(IConfiguration configuration, IWebHostEnvironment _IWebHostEnvironment)
        {
            Configuration = configuration;
            env = _IWebHostEnvironment;
        }

        public IConfiguration Configuration { get; }
        public IWebHostEnvironment env { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            #region 跨域配置 配置跨域处理
            services.AddCors(options =>
            {
                options.AddPolicy("ApiAny", builder =>
                {
                    builder.WithOrigins("*")
                        .AllowAnyMethod()
                        .AllowAnyHeader();
                    //.AllowAnyOrigin()
                    //.AllowCredentials();
                });
            });
            #endregion

            services
                .AddControllersWithViews(options =>
                {
                    options.Filters.Add(new AppService.AppExceptionFilter());
                })
                .AddJsonOptions(options =>
                {
                    options.JsonSerializerOptions.PropertyNamingPolicy = null;
                });

            #region AdminConfig
            services.AdminConfigureServices(Configuration, env);
            #endregion

            #region 使用 单页面
            services.AddSpaStaticFiles(opt => opt.RootPath = "ClientApp/hzyAdminVue/dist");
            #endregion

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, IHostApplicationLifetime applicationLifetime)
        {
            //if (env.IsDevelopment())
            //{
            //    app.UseDeveloperExceptionPage();
            //}
            //else
            //{
            //    app.UseExceptionHandler("/Error");
            //    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
            //    app.UseHsts();
            //}

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            #region 使用 单页面
            app.UseSpaStaticFiles();
            #endregion

            app.UseRouting();

            #region 使用跨域 警告: 通过终结点路由，CORS 中间件必须配置为在对UseRouting和UseEndpoints的调用之间执行。 配置不正确将导致中间件停止正常运行。
            app.UseCors("ApiAny");
            #endregion

            #region AdminConfig
            app.AdminConfigure(env, applicationLifetime);
            #endregion

            app.UseEndpoints(endpoints =>
            {
                //endpoints.MapControllerRoute(
                //    name: "default",
                //    pattern: "{controller}/{action=Index}/{id?}");
                endpoints.MapControllers();

                #region 使用 单页面
                //                    // note: output of vue cli or quasar cli should be wwwroot
                //                    endpoints.MapFallbackToFile("ClientApp/hzyAdminVue/public/index.html");

                // Note: only use vuecliproxy in development. 
                // Production should use "UseSpaStaticFiles()" and the webpack dist
                if (env.IsDevelopment())
                {
                    endpoints.MapToVueCliProxy(
                    "{*path}",
                    new SpaOptions { SourcePath = "ClientApp/hzyAdminVue" },
                    //npmScript: (System.Diagnostics.Debugger.IsAttached) ? "serve" : null,
                    npmScript: "serve",
                    port: 6666
                    );
                }

                #endregion

            });

            //#region 使用 单页面 .net core 2.2 

            //app.UseSpa(spa =>
            //{
            //    spa.Options.SourcePath = "ClientApp/hzyAdminVue/";
            //    if (env.IsDevelopment())
            //    {
            //        //vue-cli-service serve
            //        //spa.UseProxyToSpaDevelopmentServer("http://localhost:8080");//使用这个需要自己启动 vue 项目
            //        spa.UseVueCli(npmScript: "serve", port: 6666); //自动启动服务
            //    }
            //});

            //#endregion


        }
    }
}
