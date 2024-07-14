using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VikasProject
{
    public partial class _Default : Page
    {
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(connstr);
            DataTable dt = new DataTable();
            try 
            {
                con.Open();
                string qry = @" select * from ADD_BOOKS";
                MySqlCommand cmd = new MySqlCommand(qry, con);
                
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                adapter.Fill(dt);

                grd.DataSource= dt;
                grd.DataBind();

            }
            catch 
            {

            }
            finally
            {
                con.Close(); 
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string val = txt1.Text;
            if (!string.IsNullOrEmpty(val))
            {
                if (val.Contains("+"))
                {
                    string[] getval = val.Split('+');
                    int a = int.Parse(getval[0]);
                    int b = int.Parse(getval[1]);
                    int res = a + b;
                    lbl.Text = Convert.ToString(res);
                }
                else if (val.Contains("-"))
                {
                    string[] getval = val.Split('-');
                    int a = int.Parse(getval[0]);
                    int b = int.Parse(getval[1]);
                    int res = a - b;
                    lbl.Text = Convert.ToString(res);
                }
                else if (val.Contains("*"))
                {
                    string[] getval = val.Split('*');
                    int a = int.Parse(getval[0]);
                    int b = int.Parse(getval[1]);
                    int res = a * b;
                    lbl.Text = Convert.ToString(res);
                }
                else if (val.Contains("/")) 
                {
                    string[] getval = val.Split('/');
                    int a = int.Parse(getval[0]);
                    int b = int.Parse(getval[1]);
                    int res = a / b;
                    lbl.Text = Convert.ToString(res);
                }
            }
        }
    }
}