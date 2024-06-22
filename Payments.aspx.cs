using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "COD")
        {
            decimal amount = Convert.ToDecimal(txtamount.Text);
            decimal CODAmount = 100;
            if (amount == CODAmount)
            {
            }
            else
            {
                Response.Redirect("Feedback.aspx");

                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "hi", "alert('You Select Cash On Delivery')", true);

            }
        }
        else if (DropDownList1.SelectedValue == "ONLINE")
        {
            SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Payments values('" + DropDownList1 + "','" + txtamount.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("https://pay.google.com");

            con.Close();
        }
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "hi", "alert('Payment succesfully')", true);

    }






    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MenuList.aspx");

    }
}