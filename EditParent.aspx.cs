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
        if (Request.QueryString["Gr_Id"]!=null)
        {
            int id = int.Parse(Request.QueryString["Gr_Id"]);
            DataSet ds = grdHandler.GetGuardianByID(id);
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
        }
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

            if (grdHandler.UpdateGuardian(grd) > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}