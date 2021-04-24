using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Web;
using MySql.Data.MySqlClient;

public partial class Parents : System.Web.UI.Page
{
    const string constring = "Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;";
    protected void Page_Load(object sender, EventArgs e)
    {
        using (MySqlConnection Sqlcon = new MySqlConnection(constring))
        {
            string query = "SELECT Gr_Id,Gr_Fname,Gr_Lname,Gr_MobileNo,Gr_Email,Gr_Relationship FROM Guardian";
            Sqlcon.Open();
            MySqlDataAdapter sqlData = new MySqlDataAdapter(query, Sqlcon);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "viewpar")
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[crow].Cells[0].Text;
            Response.Redirect("ViewParent.aspx?Gr_Id=" + v);
        }
    }
}