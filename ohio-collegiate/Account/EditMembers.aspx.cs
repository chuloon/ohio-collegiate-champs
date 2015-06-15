using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ohio_collegiate.Account
{
    public partial class EditMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Roles.IsUserInRole("captain"))
            {
                blockLabel.Visible = false;
                memberList.Visible = true;
                addMembersButton.Visible = true;
                addMembersLabel.Visible = true;
                addMembersTextbox.Visible = true;
                removeMembersLabel.Visible = true;
            }
            else
            {
                blockLabel.Visible = true;
                memberList.Visible = false;
                addMembersButton.Visible = false;
                addMembersLabel.Visible = false;
                addMembersTextbox.Visible = false;
                removeMembersLabel.Visible = false;
            }

            string[] usersGroup;

            string[] currentGroup = Roles.GetRolesForUser();
            if (currentGroup[0] != "captain")
            {
                usersGroup = Roles.GetUsersInRole(currentGroup[0]);
            }
            else
            {
                usersGroup = Roles.GetUsersInRole(currentGroup[1]);
            }

            if (memberList.Items.Count == 0)
            {
                foreach (string temp in usersGroup)
                {
                    memberList.Items.Add(temp);
                }
            }
        }

        protected void addMembersButton_Click(object sender, EventArgs e)
        {
            string[] userRoles = Roles.GetRolesForUser(addMembersTextbox.Text);
            string[] captRoles = Roles.GetRolesForUser();

            if (userRoles.Length == 0)
            {
                try
                {
                    if (captRoles[0] != "captain")
                    {
                        Roles.AddUserToRole(addMembersTextbox.Text, captRoles[0]);
                    }
                    else
                    {
                        Roles.AddUserToRole(addMembersTextbox.Text, captRoles[1]);
                    }

                    Response.Redirect("/Account/Team");
                }
                catch (Exception ex)
                {
                    string errorScript = @"<script language""javascript""> alert('User name not valid.');</script>;";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript", errorScript);
                }
            }
            else
            {
                string errorScript = @"<script language""javascript""> alert('User is already on another team.');</script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript", errorScript);
            }
        }

        protected void removeMembersButton_Click(object sender, EventArgs e)
        {
            string[] captRoles = Roles.GetRolesForUser();

            if (!Roles.IsUserInRole("captain"))
            {
                if (captRoles[0] != "captain")
                {
                    Roles.RemoveUserFromRole(memberList.SelectedValue, captRoles[0]);
                }
                else
                {
                    Roles.RemoveUserFromRole(memberList.SelectedValue, captRoles[1]);
                }
            }
            else
            {
                if (captRoles[0] == "captain")
                {
                    Roles.RemoveUserFromRole(memberList.SelectedValue, captRoles[0]);
                    Roles.RemoveUserFromRole(memberList.SelectedValue, "captain");
                }
                else
                {
                    Roles.RemoveUserFromRole(memberList.SelectedValue, captRoles[1]);
                    Roles.RemoveUserFromRole(memberList.SelectedValue, "captain");
                }
                Response.Redirect("/Account/Team");
            }

            Response.Redirect("/Account/Team");
        }
    }
}