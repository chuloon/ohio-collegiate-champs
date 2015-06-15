using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace ohio_collegiate.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/";
            }
            Response.Redirect(continueUrl);
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            string emailBody = "<html><h3>Your account for MECHA has successfully been created! We're not done yet though...</h3><br /><p style=\"color: red;\">To confirm you are a student, <strong>please reply to this email with your name and school</strong></p></html>";
            string sendMail = SendEmail("ben.ng@outlook.com", "MECHA - Account Confirmation | ACTION REQUIRED", emailBody);

            if (sendMail == "success")
            {
                string script = @"<script language""javascript""> alert('Information has been save successfully. Confirmation email sent.');</script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
            }
            else
            {
                string script = @"<script language""javascript""> alert('Information has been save successfully. Confirmation email NOT sent.');</script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
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
        }
    }
}