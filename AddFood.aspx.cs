using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddFood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

    protected void btngo_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into MenuList values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Hi", "alert('Your Food Added successfully ')", true);
        con.Close();
        Response.Redirect("AdminMenuList.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMenuList.aspx");
    }
}