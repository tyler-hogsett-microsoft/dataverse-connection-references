using Microsoft.Xrm.Sdk;
using System;

namespace Contoso.Plugins
{
    public class AllWidgetsAreFoos : IPlugin
    {
        public void Execute(IServiceProvider serviceProvider)
        {
            var context = (IPluginExecutionContext)
                serviceProvider.GetService(typeof(IPluginExecutionContext));
            var target = (Entity)context.InputParameters["Target"];
            target["contoso_name"] = "Foobar";
        }
    }
}
