using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddStd_Click(object sender, EventArgs e)
    {

    }

    protected void AddPID_Click(object sender, EventArgs e)
    {
        AddPID.Style.Add("display", "block");
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
    }

    protected void Addparent_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection("Data Source=.;Initial Catalog=Client;Integrated Security=True");
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        String sql = "";
        cnn.Open();
        sql = "Insert into Product values(8,'Drink',140)";
        command = new SqlCommand(sql, cnn);
        adapter.InsertCommand = new SqlCommand(sql, cnn);
        adapter.InsertCommand.ExecuteNonQuery();
        command.Dispose();
        cnn.Close();
        Success.Text = "Parent Added!";
        AddPID.Style.Add("display", "none");
    }
}