using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Emloyee.Startup))]
namespace Emloyee
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
