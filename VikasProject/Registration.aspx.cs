using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VikasProject
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionStr();
        }
        string connStr = "";
        public void connectionStr()
        {
            if(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"] != null)
                connStr = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
        
        void clearAllField()
        {
            TextBox1.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            Label1.Text = "";
            Label3.Text = "";

        }
        bool checkPasswordMatch()
        {
            if (TextBox18.Text == TextBox19.Text)
            {
                // block 1
                return true;
            }
            else
            {
                Label3.Text = "Password Does Not Match";
                // block 2
                return false;
            }
        }

        bool checkBlankField()
        {
            if (TextBox1.Text == "")
            {
                Label2.Text = "Blank Username is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox18.Text == "")
            {
                Label2.Text = "Blank Password is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox19.Text == "")
            {
                Label2.Text = "Blank Confirm Password is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox20.Text == "")
            {
                Label2.Text = "Blank Name is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox21.Text == "")
            {
                Label2.Text = "Blank Address is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox22.Text == "")
            {
                Label2.Text = "Blank City is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox23.Text == "")
            {
                Label2.Text = "Blank State is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox24.Text == "")
            {
                Label2.Text = "Blank Mobile No is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox25.Text == "")
            {
                Label2.Text = "Blank Email id is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            Label2.Text = "";
            return false;
        }
                
        bool registerNewUser()
        {
            String qry = "insert into Register (username,Password,Confirm_Password,Coustmer_Name,Address,City,State,Mobile,Email) values('" +TextBox1.Text + "','"+TextBox18.Text + "','"+TextBox19.Text + "','"+TextBox20.Text + "','"+TextBox21.Text + "','"+TextBox22.Text + "','"+TextBox23.Text + "','"+TextBox24.Text + "','"+TextBox25.Text + "')";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd= new MySqlCommand(qry, conn);
            cmd.CommandText= qry;
            cmd.Connection= conn;
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        bool checkAlreadyUsernameExist()
        {
            Boolean usernameavailable = false;  
            String qry = @"select * from Register where username=" + TextBox1.Text + "'";
            MySqlConnection conn = new MySqlConnection(connStr);
            MySqlCommand cmd = new MySqlCommand(qry, conn);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                usernameavailable = true;
            }
            else
            {
                Label1.Text = "You can available this username";
            }
            conn.Close();
            return usernameavailable;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBlankField())
            {
                Label2.Text = "Data Not Fill Properly";
            }
            else
            {
                // block 2
                if (checkPasswordMatch())
                {
                    registerNewUser();
                    Label2.Text = "Data Properly Submitted";
                }
            }
        }
    }
}
