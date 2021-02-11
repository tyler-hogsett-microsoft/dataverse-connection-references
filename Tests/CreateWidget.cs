using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Security;
using System.Configuration;
using Microsoft.Dynamics365.UIAutomation.Api;
using Microsoft.Dynamics365.UIAutomation.Browser;

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
            using (var browser = new Browser(
                new BrowserOptions
                {
                    BrowserType = BrowserType.Chrome,
                    Headless = true
                }))
            {
                browser.LoginPage.Login(Url, Username, Password);

            }
        }
    }
}
