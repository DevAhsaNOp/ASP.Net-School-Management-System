using BLL.BOperations;
using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewEmployee : System.Web.UI.Page
{
    EEmployee emp = new EEmployee();
    EOperation empHandler = new EOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["E_ID"] != null)
        {
            int id = int.Parse(Request.QueryString["E_ID"]);
            DataSet ds = empHandler.GetEmployeeByID(id);
            if (ds.Tables[0].Rows.Count > 0)
            {
                EID.Text = ds.Tables[0].Rows[0]["E_ID"].ToString();
                EFname.Text = ds.Tables[0].Rows[0]["E_Fname"].ToString();
                ELname.Text = ds.Tables[0].Rows[0]["E_Lname"].ToString();
                EEmail.Text = ds.Tables[0].Rows[0]["E_Email"].ToString();
                EPass.Text = ds.Tables[0].Rows[0]["E_Pass"].ToString();
                EDOB.Text = ds.Tables[0].Rows[0]["E_DOB"].ToString();
                ETel.Text = ds.Tables[0].Rows[0]["E_TelNo"].ToString();
                EMoblie.Text = ds.Tables[0].Rows[0]["E_MobileNo"].ToString();
                EDOJ.Text = ds.Tables[0].Rows[0]["E_DOJ"].ToString();
                EStatus.Text = ds.Tables[0].Rows[0]["E_Status"].ToString();
                EGender.Text = ds.Tables[0].Rows[0]["E_Gender"].ToString();
                int Rid = int.Parse(ds.Tables[0].Rows[0]["E_RoleID"].ToString());
                ERole.Text = empHandler.GetEmployeeRoleName(Rid);
                Esalary.Text = ds.Tables[0].Rows[0]["E_Salary"].ToString();
            }
        }
    }
}