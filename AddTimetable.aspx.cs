using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTimetable : System.Web.UI.Page
{
    string constring = "Data Source=.;Initial Catalog=Client;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection Sqlcon = new SqlConnection(constring))
        {
            string query = "select *from Product";
            Sqlcon.Open();
            SqlDataAdapter sqlData = new SqlDataAdapter(query, Sqlcon);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }

    protected void AddRou_Click(object sender, EventArgs e)
    {

    }

    protected void AddTime_Click(object sender, EventArgs e)
    {

    }
}