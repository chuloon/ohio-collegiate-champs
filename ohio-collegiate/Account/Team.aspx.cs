using System;
using System.Linq;
using System.Web.Security;

namespace ohio_collegiate.Account
{
    public partial class Team : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CreateTeamButton.Visible = false;
            EditMembersButton.Visible = false;

            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string[] teamName = Roles.GetRolesForUser();

                if (!Roles.IsUserInRole("captain"))
                {
                    EditMembersButton.Visible = false;
                }
                else
                {
                    EditMembersButton.Visible = true;
                }

                if (teamName.Length > 0)
                {
                    string[] teamMembers;
                    if (Roles.GetUsersInRole(teamName[0])[0] != "captain" && teamName.Length >= 2)
                    {
                        teamMembers = Roles.GetUsersInRole(teamName[1]);
                    }
                    else
                    {
                        teamMembers = Roles.GetUsersInRole(teamName[0]);
                    }
                    string displayTeam = "";

                    foreach(string temp in teamMembers)
                    {
                        displayTeam += temp + "<br />";
                    }

                    TeamLabel.Text = displayTeam;
                }
                else
                {
                    TeamLabel.Text = "You currently aren't in a team! Create a team or contact your team captain for an invite.";
                    CreateTeamButton.Visible = true;
                }
            }
            else
            {
                TeamLabel.Text = "Login or register to create a team!";
            }
        }

        protected void EditMembersButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/EditMembers");
        }

        protected void CreateTeamButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Join");
        }
    }
}