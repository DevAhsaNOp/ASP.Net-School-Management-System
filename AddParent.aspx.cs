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
            Response.Redirect("AddParent.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}