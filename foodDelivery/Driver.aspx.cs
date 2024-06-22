using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Driver : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btndone_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Driver values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "hi", "alert('Confirmed Your Order to Driver')", true);
        con.Close();
        //Response.Redirect("");

    }
}