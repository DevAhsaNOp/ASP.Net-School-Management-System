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

public partial class ViewStudent : System.Web.UI.Page
{
    EStudents std = new EStudents();
    SOperation stdHandler = new SOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Std_Id"] != null)
        {
            int id = int.Parse(Request.QueryString["Std_Id"]);
            DataSet ds = stdHandler.GetStudentByID(id);
            if (ds.Tables[0].Rows.Count > 0)
            {
                SID.Text = ds.Tables[0].Rows[0]["Std_Id"].ToString();
                SFname.Text = ds.Tables[0].Rows[0]["Std_Fname"].ToString();
                SLname.Text = ds.Tables[0].Rows[0]["Std_Lname"].ToString();
                SEmail.Text = ds.Tables[0].Rows[0]["Std_Email"].ToString();
                SPass.Text = ds.Tables[0].Rows[0]["Std_Pass"].ToString();
                SDOB.Text = ds.Tables[0].Rows[0]["Std_DOB"].ToString();
                STel.Text = ds.Tables[0].Rows[0]["Std_TelNo"].ToString();
                SMoblie.Text = ds.Tables[0].Rows[0]["Std_MobileNo"].ToString();
                SDOA.Text = ds.Tables[0].Rows[0]["Std_DOA"].ToString();
                SStatus.Text = ds.Tables[0].Rows[0]["Std_Status"].ToString();
                SGender.Text = ds.Tables[0].Rows[0]["Std_Gender"].ToString();
                int cid = int.Parse(ds.Tables[0].Rows[0]["Std_ClassID"].ToString());
                SClass.Text = stdHandler.GetStudentClassName(cid);
                int Sid = int.Parse(ds.Tables[0].Rows[0]["Std_SectionID"].ToString());
                SClassSec.Text = stdHandler.GetStudentSecName(Sid);
                int gid =int.Parse(ds.Tables[0].Rows[0]["Std_GuardianID"].ToString());
                SParentID.Text = stdHandler.GetStudentGrdName(gid);
            }
        }
    }
}