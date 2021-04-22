using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EditStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void EditPID_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
    }

    protected void EditStd_Click(object sender, EventArgs e)
    {

    }

    protected void Editparent_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection("Data Source=.;Initial Catalog=Client;Integrated Security=True");
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        String sql = "";
        cnn.Open();
        sql = "Insert into Product values(9,'Drink',140)";
        command = new SqlCommand(sql, cnn);
        adapter.InsertCommand = new SqlCommand(sql, cnn);
        adapter.InsertCommand.ExecuteNonQuery();
        command.Dispose();
        cnn.Close();
        Success.Text = "Parent Edit!";
        EditPID.Style.Add("display", "none");
    }
}