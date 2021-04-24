using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.EOperations;
using DAL.Entities;
using BLL.BOperations;
using MySql.Data.MySqlClient;
using System.Data;
using System.Threading;

public partial class EditEmployee : System.Web.UI.Page
{
    EEmployee emp = new EEmployee();
    EOperation empHandler = new EOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        ERole.DataSource = empHandler.GetEmployeeRole();
        ERole.DataTextField = "Role_Name";
        ERole.DataBind();
        EditEmp.Style.Add("display", "none");

        #region EnableFalse
        //Loop through all the control present on the web page/form        
        foreach (Control ctrl in form2.Controls)
        {
            //check for all the TextBox controls on the page and clear them
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Enabled = false;
                if (((TextBox)ctrl).ID == "EID")
                    ((TextBox)ctrl).Enabled = true;
            }
            //check for all the Label controls on the page and clear them
            else if (ctrl.GetType() == typeof(Label))
            {
                ((Label)(ctrl)).Enabled = false;
            }
            //check for all the DropDownList controls on the page and reset it to the very first item e.g. "-- Select One --"
            else if (ctrl.GetType() == typeof(DropDownList))
            {
                ((DropDownList)(ctrl)).Enabled = false;
            }
            //check for all the CheckBox controls on the page and unchecked the selection
            else if (ctrl.GetType() == typeof(CheckBox))
            {
                ((CheckBox)(ctrl)).Checked = false;
            }
            //check for all the CheckBoxList controls on the page and unchecked all the selections
            else if (ctrl.GetType() == typeof(CheckBoxList))
            {
                ((CheckBoxList)(ctrl)).ClearSelection();
            }
            //check for all the RadioButton controls on the page and unchecked the selection
            else if (ctrl.GetType() == typeof(RadioButton))
            {
                ((RadioButton)(ctrl)).Checked = false;
            }
            //check for all the RadioButtonList controls on the page and unchecked the selection
            else if (ctrl.GetType() == typeof(RadioButtonList))
            {
                ((RadioButtonList)(ctrl)).ClearSelection();
            }
        }
        #endregion

    }

    protected void EditEmp_Click(object sender, EventArgs e)
    {

        try
        {
            emp.ID = Convert.ToInt32(EID.Text);
            emp.FNAME = EFname.Text;
            emp.LNAME = ELname.Text;
            emp.EMAIL = EEmail.Text;
            emp.PASSWORD = EPass.Text;
            emp.DOB = Convert.ToDateTime(EDOB.Text).Date;
            emp.TELEPHONE = ETel.Text;
            emp.MOBILENO = EMoblie.Text;
            emp.DOJ = Convert.ToDateTime(EDOJ.Text).Date;
            emp.STATUS = EStatus.Text;
            emp.GENDER = EGender.Text;
            emp.ROLE = int.Parse(empHandler.GetEmployeeRoleId(ERole.Text));
            emp.SALARY = decimal.Parse(Esalary.Text);

            if (empHandler.UpdateEmployee(emp, emp.ID) > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('Employee Record Updated!')", true);
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
        gETdata.Style.Add("display", "block");

        #region ClearInputs
        //Loop through all the control present on the web page/form        
        foreach (Control ctrl in form2.Controls)
        {
            //check for all the TextBox controls on the page and clear them
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Text = string.Empty;
            }
            //check for all the Label controls on the page and clear them
            else if (ctrl.GetType() == typeof(Label))
            {
                ((Label)(ctrl)).Text = string.Empty;
            }
            //check for all the DropDownList controls on the page and reset it to the very first item e.g. "-- Select One --"
            else if (ctrl.GetType() == typeof(DropDownList))
            {
                ((DropDownList)(ctrl)).SelectedIndex = 0;
            }
            //check for all the CheckBox controls on the page and unchecked the selection
            else if (ctrl.GetType() == typeof(CheckBox))
            {
                ((CheckBox)(ctrl)).Checked = false;
            }
            //check for all the CheckBoxList controls on the page and unchecked all the selections
            else if (ctrl.GetType() == typeof(CheckBoxList))
            {
                ((CheckBoxList)(ctrl)).ClearSelection();
            }
            //check for all the RadioButton controls on the page and unchecked the selection
            else if (ctrl.GetType() == typeof(RadioButton))
            {
                ((RadioButton)(ctrl)).Checked = false;
            }
            //check for all the RadioButtonList controls on the page and unchecked the selection
            else if (ctrl.GetType() == typeof(RadioButtonList))
            {
                ((RadioButtonList)(ctrl)).ClearSelection();
            }
        }
        #endregion

    }

    protected void gETdata_Click(object sender, EventArgs e)
    {
        EID.ReadOnly = true;
        DataSet ds = empHandler.GetEmployeeByID(int.Parse(EID.Text));
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

            gETdata.Style.Add("display", "none");
            EditEmp.Style.Add("display", "block");

            #region EnableTrue
            //Loop through all the control present on the web page/form        
            foreach (Control ctrl in form2.Controls)
            {
                //check for all the TextBox controls on the page and clear them
                if (ctrl.GetType() == typeof(TextBox))
                {
                    ((TextBox)(ctrl)).Enabled = true;
                    if (((TextBox)ctrl).ID == "EID")
                        ((TextBox)ctrl).Enabled = true;
                }
                //check for all the Label controls on the page and clear them
                else if (ctrl.GetType() == typeof(Label))
                {
                    ((Label)(ctrl)).Enabled = true;
                }
                //check for all the DropDownList controls on the page and reset it to the very first item e.g. "-- Select One --"
                else if (ctrl.GetType() == typeof(DropDownList))
                {
                    ((DropDownList)(ctrl)).Enabled = true;
                }
                //check for all the CheckBox controls on the page and unchecked the selection
                else if (ctrl.GetType() == typeof(CheckBox))
                {
                    ((CheckBox)(ctrl)).Checked = true;
                }
                //check for all the CheckBoxList controls on the page and unchecked all the selections
                else if (ctrl.GetType() == typeof(CheckBoxList))
                {
                    ((CheckBoxList)(ctrl)).ClearSelection();
                }
                //check for all the RadioButton controls on the page and unchecked the selection
                else if (ctrl.GetType() == typeof(RadioButton))
                {
                    ((RadioButton)(ctrl)).Checked = true;
                }
                //check for all the RadioButtonList controls on the page and unchecked the selection
                else if (ctrl.GetType() == typeof(RadioButtonList))
                {
                    ((RadioButtonList)(ctrl)).ClearSelection();
                }
            }
            #endregion
        }
    }

    bool IsDigitsOnly(string str)
    {
        foreach (char c in str)
        {
            if (c < '0' || c > '9')
                return false;
        }

        return true;
    }


}