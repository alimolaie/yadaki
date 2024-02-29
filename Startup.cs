using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(portal_asp.Startup))]
namespace portal_asp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
