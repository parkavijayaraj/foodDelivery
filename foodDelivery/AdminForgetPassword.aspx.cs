using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AdminForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtusername.Text == TextBox1.Text)
        {
            lblmessage.Text = "your old password and new password shouldn't be same";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE Admins SET admin_password=@password WHERE adminName=@adminname", con);
            //con.Open();
            cmd.Parameters.AddWithValue("@adminname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Admins");
            //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Hi", "alert('Your Password successfully changed')", true);
            Response.Redirect("AdminLogin.aspx");
            lblmessage.Text = "Your Password successfully changed";

        }
    }
}