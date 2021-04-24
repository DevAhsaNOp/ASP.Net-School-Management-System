using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.EOperations;
using DAL.Entities;
using BLL.BOperations;
using MySql.Web;
using MySql.Data.MySqlClient;
using System.Data;

public partial class AddParent : System.Web.UI.Page
{
    const string con = "Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;";

    protected void Page_Load(object sender, EventArgs e)
    {
        GenerateId();
    }

    protected void AddPar_Click(object sender, EventArgs e)
    {
        try
        {
            Guardian grd = new Guardian();

            grd.ID = Convert.ToInt32(PID.Text);
            grd.FNAME = PFname.Text;
            grd.LNAME = PLname.Text;
            grd.EMAIL = PEmail.Text;
            grd.PASSWORD = PPass.Text;
            grd.CNIC = PCNIC.Text;
            grd.TELEPHONE = PTel.Text;
            grd.MOBILENO = PMoblie.Text;
            grd.ADDRESS = PADD.Text;
            grd.RELATIONSHIP = PREL.Text;

            GOperation grdHandler = new GOperation();

            if (grdHandler.AddNewGuardian(grd) > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
        
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
        GenerateId();
    }

    void GenerateId()
    {
        try
        {
            MySqlDataAdapter sda = new MySqlDataAdapter("SELECT IFNULL(MAX(Gr_Id),0)+1 FROM Guardian", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            PID.Text = dt.Rows[0][0].ToString();
        }
        catch (MySqlException ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}