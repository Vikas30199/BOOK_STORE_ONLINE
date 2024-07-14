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
    public partial class Book_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionStr();

        }
        string connStr = "";
        public void connectionStr()
        {
            if (System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"] != null)
                connStr = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
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
            Label1.Text = "";



        }

        bool checkBlankField()
        {
            if (TextBox1.Text == "")
            {
                Label2.Text = "Blank Book Code is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox18.Text == "")
            {
                Label2.Text = "Blank BOOK TITLE NAME is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox19.Text == "")
            {
                Label2.Text = "Blank Confirm AUTHOR is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox20.Text == "")
            {
                Label2.Text = "Blank GENRE is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox21.Text == "")
            {
                Label2.Text = "Blank EDITION is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox22.Text == "")
            {
                Label2.Text = "Blank TOTAL PRICE is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox23.Text == "")
            {
                Label2.Text = "Blank ENTRY NAME is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }

            if (TextBox24.Text == "")
            {
                Label2.Text = "Blank QUANTITY is not Accepted";
                Label2.ForeColor = System.Drawing.Color.Red;
                return true;
            }


            Label2.Text = "";
            return false;
        }

        bool ADD_BOOKSNewUser()
        {
            String qry = "insert into ADD_BOOKS (BOOK_CODE,BOOK_TITLE_NAME,AUTHOR,GENRE,EDITION,TOTAL_PRICE,ENTRY_NAME,QUANTITY) values('" + TextBox1.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "')";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(qry, conn);
            cmd.CommandText = qry;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        bool checkAlreadyUsernameExist()
        {
            Boolean usernameavailable = false;
            String qry = @"select * from ADD_BOOKS where BOOK_CODE =" + TextBox1.Text + "'";
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
                Label1.Text = "You can available this book code";
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
                Label2.Text = "Data Fill Properly";
                ADD_BOOKSNewUser();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            String bookCode = TextBox1.Text.Trim(); // Assuming TextBox1 is for BOOK_CODE

            if (!string.IsNullOrEmpty(bookCode))
            {
                String qry = "SELECT BOOK_TITLE_NAME, AUTHOR, GENRE, EDITION, " +
                             "TOTAL_PRICE, ENTRY_NAME, QUANTITY FROM ADD_BOOKS " +
                             "WHERE BOOK_CODE = @BOOK_CODE";

                using (MySqlConnection conn = new MySqlConnection(connStr))
                {
                    conn.Open();
                    using (MySqlCommand cmd = new MySqlCommand(qry, conn))
                    {
                        cmd.Parameters.AddWithValue("@BOOK_CODE", bookCode);

                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Populate fields with retrieved data
                                TextBox18.Text = reader["BOOK_TITLE_NAME"].ToString();
                                TextBox19.Text = reader["AUTHOR"].ToString();
                                TextBox20.Text = reader["GENRE"].ToString();
                                TextBox21.Text = reader["EDITION"].ToString();
                                TextBox22.Text = reader["TOTAL_PRICE"].ToString();
                                TextBox23.Text = reader["ENTRY_NAME"].ToString();
                                TextBox24.Text = reader["QUANTITY"].ToString();

                                // Optionally, enable controls or provide feedback
                                Label2.Text = "Editing book with code: " + bookCode;
                            }
                            else
                            {
                                // Book code not found
                                Label2.Text = "Book code not found.";
                                clearAllField(); // Clear fields if no data found
                            }
                        }
                    }
                }
            }
            else
            {
                Label2.Text = "Please enter a book code.";
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            String qry = "DELETE FROM ADD_BOOKS WHERE BOOK_CODE = @BOOK_CODE";

            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(qry, conn))
                {
                    cmd.Parameters.AddWithValue("@BOOK_CODE", TextBox1.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Label2.Text = "Book deleted successfully.";
                        clearAllField();
                    }
                    else
                    {
                        Label2.Text = "Book code does not MAtCH. Delete failed.";
                    }
                }
            }
        }


    }

}