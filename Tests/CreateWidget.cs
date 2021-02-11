using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.Dynamics365.UIAutomation.Browser;
using Microsoft.PowerApps.UIAutomation.Api;
using System;
using System.Security;
using System.Configuration;

namespace Contoso.Tests
{
    [TestClass]
    public class CreateWidget
    {
        private readonly Uri Url = new Uri(
            ConfigurationManager.AppSettings["URL"]
        );
        private readonly SecureString Username =
            ConfigurationManager.AppSettings["USERNAME"].ToSecureString();
        private readonly SecureString Password =
            ConfigurationManager.AppSettings["PASSWORD"].ToSecureString();

        [TestMethod]
        public void EnsureNameOverride()
        {
            using (var browser = new PowerAppBrowser(
                new BrowserOptions
                {
                    BrowserType = BrowserType.Chrome
                }))
            {
                browser.OnlineLogin.Login(Url, Username, Password,
                    eventArgs =>
                    {
                        Console.WriteLine(eventArgs.Driver.Url);
                    });
                
            }
        }
    }
}
