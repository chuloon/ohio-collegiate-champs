using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ohio_collegiate
{
    public partial class Join : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection();

            cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["tournamentSignup"].ConnectionString;
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from tournamentSignupTable";
            cmd.Connection = cnn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "tournamentSignupTable");
            SqlCommandBuilder cb = new SqlCommandBuilder(da);

            DataRow drow = ds.Tables["tournamentSignupTable"].NewRow();
            drow["teamName"] = teamNameTextBox.Text;
            drow["school"] = schoolTextBox.Text;
            drow["player1Name"] = captainNameTextBox.Text;
            drow["player1Summoner"] = captainSummonerTextBox.Text;
            drow["player2Name"] = player2NameTextBox.Text;
            drow["player2Summoner"] = player2SummonerTextBox.Text;
            drow["player3Name"] = player3NameTextBox.Text;
            drow["player3Summoner"] = player3SummonerTextBox.Text;
            drow["player4Name"] = player4NameTextBox.Text;
            drow["player4Summoner"] = player4SummonerTextBox.Text;
            drow["player5Name"] = player5NameTextBox.Text;
            drow["player5Summoner"] = player5SummonerTextBox.Text;

            ds.Tables["tournamentSignupTable"].Rows.Add(drow);
            da.Update(ds, "tournamentSignupTable");
            string script = @"<script language""javascript""> alert('Information has been save successfully.');</script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
        }
    }
}