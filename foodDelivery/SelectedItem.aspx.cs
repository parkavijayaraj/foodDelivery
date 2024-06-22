using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SelectedItem : System.Web.UI.Page
{
    private DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadSelectedItems();
        }
        else
        {
            dt = ViewState["SelectedItems"] as DataTable;
        }
    }

    private void LoadSelectedItems()
    {
        string selectedItems = Context.Items["SelectedItems"] as string;

        if (!string.IsNullOrEmpty(selectedItems))
        {
            dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Price");
            dt.Columns.Add("Description");

            string[] items = selectedItems.Split(new char[] { '|' }, StringSplitOptions.RemoveEmptyEntries);

            foreach (string item in items)
            {
                string[] details = item.Split(';');
                if (details.Length == 3)
                {
                    DataRow dr = dt.NewRow();
                    dr["Name"] = details[0];
                    dr["Price"] = details[1];
                    dr["Description"] = details[2];
                    dt.Rows.Add(dr);
                }
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
            ViewState["SelectedItems"] = dt;
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "OrderNow")
        {
            GridViewRow row = GridView1.Rows[index];

            string itemName = row.Cells[0].Text;
            string itemDescription = row.Cells[1].Text;
            string itemPrice = row.Cells[2].Text;

            // Handle the order now button click event for the selected row
            // You can add logic to save the order details to the database or redirect to a confirmation page

            //Response.Write($"Order has been placed successfully for {itemName}!");
            Response.Redirect("Payments.aspx");
        }
        else if (e.CommandName == "DeleteItem")
        {
            dt.Rows.RemoveAt(index);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ViewState["SelectedItems"] = dt;
        }
    }
}
