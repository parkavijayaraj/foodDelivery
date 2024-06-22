using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Txtname.Focus();

    }

    


    protected void Btnreset_Click(object sender, EventArgs e)
    {
        Txtname.Text = "";
        Txtemail.Text = "";
        txtnumber.Text = "";
        Txtaddress.Text = "";
        Txttime.Text = "";

    }

    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

        con.Open();

        SqlCommand cmd = new SqlCommand("insert into Customer values('" + Txtname.Text + "','" + Txtemail.Text + "','" + txtnumber.Text + "','" + Txtaddress.Text + "','" + Txttime.Text + "')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "hi", "alert('Details Added Succesfully')", true);
        con.Close();

        Response.Redirect("Payments.aspx");


        //Response.Write("Register Successfully");
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Hello", "alert('Submited Thank you!!')", true);
    }
}
