using System;
using System.Linq;
using System.Web.UI;
using System.Net.Mail;

namespace ohio_collegiate
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendButton_Click(object sender, EventArgs e)
        {
            string sendMail = SendEmail("ben@allmid.gg", "Contact Us Inquiry", messageTextBox.Text + "<br><br>From,<br>" + emailTextBox.Text);

            if (sendMail == "success")
            {
                string script = @"<script language""javascript""> alert('Email sent successfully!');</script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
            }
            else
            {
                string script = @"<script language""javascript""> alert('Oops! Something went wrong.. Please email ben@allmid.gg with your message and tell him things are broken.');</script>;";
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