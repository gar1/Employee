using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EmpPay.Startup))]
namespace EmpPay
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
