using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

namespace foodDelivery
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Users where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtuser);
            cmd.Parameters.AddWithValue("@password", txtpass);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Users");
            if (ds.Tables["Users"].Rows.Count == 0)
            {
                Response.Write("invalid user.");
            }
            else
            {
                Response.Redirect("Homepage.aspx");
            }
            
           
        }

        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}