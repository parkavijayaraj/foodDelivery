using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMenuList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMenuList();
        }
    }

    // This method binds the data to the DataList
    private void BindMenuList()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM MenuList", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "MenuList");
        MenuList.DataSource = ds.Tables[0];
        MenuList.DataBind();
    }

    // Handles item commands for the DataList
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            var itemName = e.CommandArgument.ToString();
            Response.Redirect("Edit.aspx?name=" + itemName);
        }
    }

    // Handles delete commands for the DataList
    protected void MenuList_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            string itemName = e.CommandArgument.ToString();

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM MenuList WHERE name = @name", con);
                cmd.Parameters.AddWithValue("@name", itemName);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "DeleteSuccess", "alert('Item deleted successfully.');", true);

                // Refresh the DataList after deletion
                BindMenuList();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "DeleteError", $"alert('Error deleting item: {ex.Message}');", true);
            }
            finally
            {
                con.Close();
            }
        }
    }

    // Handles selected index changes for the DataList
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Handle selected index change if needed
    }

    // Handles button click for multiple deletions
    protected void Button1_Click(object sender, EventArgs e)
    {
        CheckBox cc;
        Label l1;
        string s = "";
        for (byte i = 0; i < MenuList.Items.Count; i++)
        {
            cc = (CheckBox)MenuList.Items[i].FindControl("c1");
            if (cc != null && cc.Checked)
            {
                l1 = (Label)MenuList.Items[i].FindControl("l1");
                if (l1 != null)
                {
                    s = s + l1.Text + "<br>";
                }
            }
        }
        Context.Items.Add("SWS", s);
        Server.Transfer("Display.aspx");
    }

    // Handles edit commands for the DataList (optional if you want to handle edit here instead of ItemCommand)
    protected void MenuList_EditCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            var itemName = e.CommandArgument.ToString();
            Response.Redirect("Edit.aspx?name=" + itemName);
        }
    }
}
