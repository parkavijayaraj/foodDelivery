using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtuser.Focus();
    }
    SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Users where userName=@username and user_password=@password", con);
        //con.Open();
        cmd.Parameters.AddWithValue("@username",txtuser.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds,"Users");
        if (ds.Tables[0].Rows.Count == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "hi", "alert('invalid user')", true);
            //Response.Write("invalid user.");
        }
        else
        {
            Response.Redirect("MenuList.aspx");
        }
    }
}