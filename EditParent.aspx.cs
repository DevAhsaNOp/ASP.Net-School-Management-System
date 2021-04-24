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

public partial class EditParent : System.Web.UI.Page
{
    Guardian grd = new Guardian();
    GOperation grdHandler = new GOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        EditPar.Style.Add("display", "none");

        #region EnableFalse
        //Loop through all the control present on the web page/form        
        foreach (Control ctrl in form2.Controls)
        {
            //check for all the TextBox controls on the page and clear them
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Enabled = false;
                if (((TextBox)ctrl).ID == "PID")
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

    protected void EditPar_Click(object sender, EventArgs e)
    {
        try
        {
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

            if (grdHandler.UpdateGuardian(grd, Convert.ToInt32(PID.Text)) > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
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
        PID.ReadOnly = true;
        DataSet ds = grdHandler.GetGuardianByID(int.Parse(PID.Text));
        if (ds.Tables[0].Rows.Count > 0)
        {
            PID.Text = ds.Tables[0].Rows[0]["Gr_Id"].ToString();
            PFname.Text = ds.Tables[0].Rows[0]["Gr_Fname"].ToString();
            PLname.Text = ds.Tables[0].Rows[0]["Gr_Lname"].ToString();
            PEmail.Text = ds.Tables[0].Rows[0]["Gr_Email"].ToString();
            PPass.Text = ds.Tables[0].Rows[0]["Gr_Pass"].ToString();
            PTel.Text = ds.Tables[0].Rows[0]["Gr_TelNo"].ToString();
            PMoblie.Text = ds.Tables[0].Rows[0]["Gr_MobileNo"].ToString();
            PCNIC.Text = ds.Tables[0].Rows[0]["Gr_CNIC"].ToString();
            PADD.Text = ds.Tables[0].Rows[0]["Gr_Address"].ToString();
            PREL.Text = ds.Tables[0].Rows[0]["Gr_Relationship"].ToString();
        }
        gETdata.Style.Add("display", "none");
        EditPar.Style.Add("display", "block");

        #region EnableTrue
        //Loop through all the control present on the web page/form        
        foreach (Control ctrl in form2.Controls)
        {
            //check for all the TextBox controls on the page and clear them
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Enabled = true;
                if (((TextBox)ctrl).ID == "PID")
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