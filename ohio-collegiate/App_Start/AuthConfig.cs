using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace ohio_collegiate
{
    internal static class AuthConfig
    {
        public static void RegisterOpenAuth()
        {
            // See http://go.microsoft.com/fwlink/?LinkId=252803 for details on setting up this ASP.NET
            // application to support logging in via external services.

            OpenAuth.AuthenticationClients.AddFacebook(
                appId: "689453854513692",
                appSecret: "ed8695c7e8e2d54f619759453c41cb9b",
                extraData:new { Icon = "/Images/FacebookButton.png" });

            //OpenAuth.AuthenticationClients.AddMicrosoft(
            //    clientId: "your Microsoft account client id",
            //    clientSecret: "your Microsoft account client secret");

            OpenAuth.AuthenticationClients.AddGoogle(
                extraData: new { Icon = "/Images/sign-in-with-google.png" });

            //OpenAuth.AuthenticationClients.AddTwitter(
               // consumerKey: "J79a8O83TkJlH1r7c2Fdrga8t",
               // consumerSecret: "ilVPao9zL8n5sNhTDCAs1XCaPJcyOJ9RzfI9K17Bj1FoTuaZDm",
                //extraData: new { Icon = "/Images/login-with-twitter.png" });
        }
    }
}