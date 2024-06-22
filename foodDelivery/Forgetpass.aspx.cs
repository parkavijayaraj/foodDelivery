using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

public partial class Forgetpass : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("UPDATE Users SET user_password=@password WHERE userName=@username", con);
            //con.Open();
            cmd.Parameters.AddWithValue("@username", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Users");
          //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Hi", "alert('Your Password successfully changed')", true);
            Response.Redirect("Userlogin.aspx");
            lblmessage.Text = "Your Password successfully changed";

        }
        
    }
}