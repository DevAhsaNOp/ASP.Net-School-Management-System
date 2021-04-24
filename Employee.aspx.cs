using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using BLL.BOperations;
using DAL.Entities;

public partial class Employee : System.Web.UI.Page
{
    EEmployee emp = new EEmployee();
    EOperation empHandler = new EOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = empHandler.GetEmployeeList();
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "viewemp")
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[crow].Cells[0].Text;
            Response.Redirect("ViewEmployee.aspx?E_ID=" + v);
        }
    }
}