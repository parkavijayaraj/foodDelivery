using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Edit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string name = Request.QueryString["name"];
            if (!string.IsNullOrEmpty(name))
            {
                LoadItemDetails(name);
            }
        }
    }

    private void LoadItemDetails(string name)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM MenuList WHERE name = @name", con);
        cmd.Parameters.AddWithValue("@name", name);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr["name"].ToString();
            TextBox3.Text = dr["picture"].ToString();
            TextBox4.Text = dr["description"].ToString();
            TextBox5.Text = dr["price"].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void btngo_Click(object sender, EventArgs e)
    {
        string originalName = Request.QueryString["name"];
        if (!string.IsNullOrEmpty(originalName))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(
                "UPDATE MenuList SET name = @newName, picture = @picture, description = @description, price = @price WHERE name = @originalName", con);

            cmd.Parameters.AddWithValue("@newName", TextBox2.Text); // New name
            cmd.Parameters.AddWithValue("@picture", TextBox3.Text);
            cmd.Parameters.AddWithValue("@description", TextBox4.Text);
            cmd.Parameters.AddWithValue("@price", TextBox5.Text);
            cmd.Parameters.AddWithValue("@originalName", originalName); // Original name

            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Food item updated successfully')", true);
            Response.Redirect("AdminMenuList.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMenuList.aspx");
    }
}
