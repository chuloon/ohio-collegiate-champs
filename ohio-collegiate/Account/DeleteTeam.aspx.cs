using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ohio_collegiate.Account
{
    public partial class DeleteTeam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deleteTeamButton_Click(object sender, EventArgs e)
        {
            string[] rolesRemove = Roles.GetRolesForUser();

            if (rolesRemove.Length > 0)
            {
                if (rolesRemove[0] != "captain")
                {
                    Roles.RemoveUserFromRole(User.Identity.Name, rolesRemove[0]);
                    Response.Redirect("/Account/Team");
                }
                else
                {
                    Roles.RemoveUserFromRole(User.Identity.Name, "captain");
                    Response.Redirect("/Account/Team");
                }
            }
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/Team");
        }
    }
}