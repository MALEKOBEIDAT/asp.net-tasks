using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(task2_User_control_new.Startup))]
namespace task2_User_control_new
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
