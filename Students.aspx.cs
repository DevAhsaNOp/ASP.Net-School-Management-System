using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using BLL.BOperations;
using DAL.Entities;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Students : System.Web.UI.Page
{
    EStudents std = new EStudents();
    SOperation stdHandler = new SOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = stdHandler.GetStudentList();
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "viewstd")
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[crow].Cells[0].Text;
            Response.Redirect("ViewStudent.aspx?Std_Id=" + v);
        }
    }
}