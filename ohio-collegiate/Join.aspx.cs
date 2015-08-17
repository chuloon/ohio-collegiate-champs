using System;
using System.Linq;

namespace ohio_collegiate
{
    public partial class Join : System.Web.UI.Page
    { /*
        protected void registerButton_Click(object sender, EventArgs e)
        {
            if (captainNameTextBox.Text.Length == 0 || 
                captainSummonerTextBox.Text.Length == 0 ||
                player2NameTextBox.Text.Length == 0 ||
                player2SummonerTextBox.Text.Length == 0 ||
                player3NameTextBox.Text.Length == 0 ||
                player3SummonerTextBox.Text.Length == 0 ||
                player4NameTextBox.Text.Length == 0 ||
                player4SummonerTextBox.Text.Length == 0 ||
                player5NameTextBox.Text.Length == 0 ||
                player5SummonerTextBox.Text.Length == 0 ||
                captainEmailTextBox.Text.Length == 0)
            {
                string errorScript = @"<script language""javascript""> alert('All text fields require a response.');</script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript", errorScript);
            }
            else
            {
                SqlConnection cnn = new SqlConnection();

                cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from tournamentSignupTable1";
                cmd.Connection = cnn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds, "tournamentSignupTable1");
                SqlCommandBuilder cb = new SqlCommandBuilder(da);

                DataRow drow = ds.Tables["tournamentSignupTable1"].NewRow();
                drow["teamName"] = teamNameTextBox.Text;
                drow["school"] = schoolTextBox.Text;
                drow["player1Name"] = captainNameTextBox.Text;
                drow["player1Summoner"] = captainSummonerTextBox.Text;
                drow["player1Email"] = captainEmailTextBox.Text;
                drow["player2Name"] = player2NameTextBox.Text;
                drow["player2Summoner"] = player2SummonerTextBox.Text;
                drow["player3Name"] = player3NameTextBox.Text;
                drow["player3Summoner"] = player3SummonerTextBox.Text;
                drow["player4Name"] = player4NameTextBox.Text;
                drow["player4Summoner"] = player4SummonerTextBox.Text;
                drow["player5Name"] = player5NameTextBox.Text;
                drow["player5Summoner"] = player5SummonerTextBox.Text;

                string adminBody = "<html><h1>New Registration Received!</h1><br /><p>Captain name: " + captainNameTextBox.Text + " (" + captainEmailTextBox.Text + ")<br /><table style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\"><tr><th style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">Name</th><th style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">Summoner Name</th></tr><tr style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\"><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + captainNameTextBox.Text + "</td><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + captainSummonerTextBox.Text + "</td></tr><tr><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player2NameTextBox.Text + "</td><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player2SummonerTextBox.Text + "</td></tr><tr><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player3NameTextBox.Text + "</td><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player3SummonerTextBox.Text + "</td></tr><tr><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player4NameTextBox.Text + "</td><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player4SummonerTextBox.Text + "</td></tr><tr><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player5NameTextBox.Text + "</td><td style=\"border: 1px solid black; text-align: center; cell-padding: 10px;\">" + player5SummonerTextBox.Text + "</td></tr></table></html>";

                try
                {
                    ds.Tables["tournamentSignupTable1"].Rows.Add(drow);
                    da.Update(ds, "tournamentSignupTable1");

                    string sendMail = SendEmail("ben.ng@outlook.com", "Test Email", "test test test");

                    if (sendMail == "success")
                    {
                        Roles.CreateRole(teamNameTextBox.Text);
                        Roles.AddUserToRole(captainSummonerTextBox.Text, teamNameTextBox.Text);

                        if(!Roles.RoleExists("captain"))
                        {
                            Roles.CreateRole("captain");
                        }

                        Roles.AddUserToRole(captainSummonerTextBox.Text, "captain");

                        string adminMail = SendEmail("ben.ng@outlook.com", "Ohio Collegiate Championship - New Registration!", adminBody);
                        Response.Redirect("~/Redirect");
                    }
                    else
                    {
                        string script = @"<script language""javascript""> alert('Information has been save successfully. Confirmation email NOT sent.');</script>;";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
                    }
                }
                catch (Exception ex)
                {
                    string script1 = @"<script language""javascript""> alert('Team name already reserved. Please choose another name.');</script>;";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript2", script1);
                }
            }
        }

        protected string SendEmail(string toAddress, string subject, string body)
        {
            string result = "success";

            string senderID = "ben.ng258@gmail.com";
            const string senderPassword = "401C9571B5";

            try
            {
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                    Timeout = 30000
                };

                MailMessage message = new MailMessage(senderID, toAddress, subject, body);
                message.IsBodyHtml = true;
                smtp.Send(message);
            }
            catch (Exception ex)
            {
                result = "fail";
            }

            return result;
        }*/
    }
}