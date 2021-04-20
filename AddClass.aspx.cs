using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Success.Text = "Class Added!";
        Button1.Style.Add("display", "block");
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click1(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection("Data Source=.;Initial Catalog=Client;Integrated Security=True");
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        String sql = "";
        cnn.Open();
        sql = "Insert into Product values(7,'Drink',140)";
        command = new SqlCommand(sql, cnn);
        adapter.InsertCommand = new SqlCommand(sql, cnn);
        adapter.InsertCommand.ExecuteNonQuery();
        command.Dispose();
        cnn.Close();
        Success.Text = "Class Section Added!";
        Button1.Style.Add("display", "none");
    }
}