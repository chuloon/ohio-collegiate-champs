using System;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace ohio_collegiate
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.EnableFriendlyUrls();
        }
    }
}
