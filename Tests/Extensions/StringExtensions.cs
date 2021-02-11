using System.Security;

namespace Contoso.Tests.Extensions
{
    internal static class StringExtensions
    {
        public static SecureString ToSecureString(string secret)
        {
            var secureString = new SecureString();
            foreach(var character in secret)
            {
                secureString.AppendChar(character);
            }
            return secureString;
        }
    }
}
