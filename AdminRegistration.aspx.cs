using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text != TextBox4.Text)
        {
            lblMessage.Text = "Both are different";
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Admins values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','True')", con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Hi", "alert('Your Registration successfully submited')", true);
            con.Close();
            Response.Redirect("AdminLogin.aspx");

        }
    }
}