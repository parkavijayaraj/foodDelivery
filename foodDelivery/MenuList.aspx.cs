using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MenuList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=PARKAVI;Initial Catalog=foodDelivery;Persist Security Info=True;User ID=sa;Password=welcome3#");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM MenuList", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "MenuList");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        CheckBox cc;
        Label l1, label1, label2;
        string selectedItems = "";

        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            cc = (CheckBox)DataList1.Items[i].FindControl("c1");
            if (cc != null && cc.Checked)
            {
                l1 = (Label)DataList1.Items[i].FindControl("l1");
                label1 = (Label)DataList1.Items[i].FindControl("Label1");
                label2 = (Label)DataList1.Items[i].FindControl("Label2");

                if (l1 != null && label1 != null && label2 != null)
                {
                    selectedItems += l1.Text + ";" + label1.Text + ";" + label2.Text + "|";
                }
            }
        }

        Context.Items["SelectedItems"] = selectedItems;
        Server.Transfer("SelectedItem.aspx");
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Zoom.aspx?pic=" + e.CommandArgument);
    }
}
