using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL.EOperations;
using MySql.Web;
using DAL.Entities;
using BLL.BOperations;
using MySql.Data.MySqlClient;

public partial class EditStudent : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;");
    EStudents std = new EStudents();
    SOperation stdHandler = new SOperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SCLASS.DataSource = stdHandler.ViewClassName();
            SCLASS.DataTextField = "Class_Description";
            SCLASS.DataBind();
            SClassSec.Enabled = false;
            SCLASS.Items.Insert(0, new ListItem("Select Class", "0"));
            this.BindGrid();
        }
        #region EnableFalse
        //Loop through all the control present on the web page/form        
        foreach (Control ctrl in form2.Controls)
        {
            //check for all the TextBox controls on the page and clear them
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Enabled = false;
                if (((TextBox)ctrl).ID == "SID")
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

    protected void EditPID_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
    }

    protected void EditStd_Click(object sender, EventArgs e)
    {
        try
        {
            std.ID = Convert.ToInt32(SID.Text);
            std.FNAME = SFname.Text;
            std.LNAME = SLname.Text;
            std.EMAIL = SEmail.Text;
            std.PASSWORD = SPass.Text;
            std.DOB = Convert.ToDateTime(SDOB.Text).Date;
            std.TELEPHONE = STel.Text;
            std.MOBILENO = SMoblie.Text;
            std.DOA = Convert.ToDateTime(SDOA.Text).Date;
            std.STATUS = SStatus.Text;
            std.GENDER = SGender.Text;
            std.CID = int.Parse(stdHandler.GetStudentClassId(SCLASS.Text));
            std.SECID = int.Parse(stdHandler.GetStudentSecId(SClassSec.Text, SCLASS.Text));
            std.GID = int.Parse(SPID.Text);

            if (stdHandler.UpdateStudent(std,int.Parse(SID.Text)) > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('Student Record Updated!')", true);
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
        }
    }

    protected void Editparent_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection("Data Source=.;Initial Catalog=Client;Integrated Security=True");
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        String sql = "";
        cnn.Open();
        sql = "Insert into Product values(9,'Drink',140)";
        command = new SqlCommand(sql, cnn);
        adapter.InsertCommand = new SqlCommand(sql, cnn);
        adapter.InsertCommand.ExecuteNonQuery();
        command.Dispose();
        cnn.Close();
        Success.Text = "Parent Edit!";
        EditPID.Style.Add("display", "none");
    }

    protected void gETdata_Click(object sender, EventArgs e)
    {
        SID.ReadOnly = true;
        DataSet ds = stdHandler.GetStudentByID(int.Parse(SID.Text));
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
            int Cid = int.Parse(ds.Tables[0].Rows[0]["Std_ClassID"].ToString());
            SCLASS.Text = stdHandler.GetStudentClassName(Cid);
            int sid = int.Parse(ds.Tables[0].Rows[0]["Std_SectionID"].ToString());
            SClassSec.Text = stdHandler.GetStudentSecName(sid);
            int Gid = int.Parse(ds.Tables[0].Rows[0]["Std_GuardianID"].ToString());
            SPID.Text = stdHandler.GetStudentGrdName(Gid);

            gETdata.Style.Add("display", "none");
            EditStd.Style.Add("display", "block");

            #region EnableTrue
            //Loop through all the control present on the web page/form        
            foreach (Control ctrl in form2.Controls)
            {
                //check for all the TextBox controls on the page and clear them
                if (ctrl.GetType() == typeof(TextBox))
                {
                    ((TextBox)(ctrl)).Enabled = true;
                    if (((TextBox)ctrl).ID == "SID")
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

    void BindGrid()
    {
        try
        {
            string query = "select Gr_Id,Gr_Fname,Gr_Lname,Gr_MobileNo,Gr_CNIC,Gr_Relationship from Guardian";
            con.Open();
            MySqlDataAdapter sqlData = new MySqlDataAdapter(query, con);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SPID.Text = GridView1.SelectedRow.Cells[1].Text;
    }

    protected void PMbl_TextChanged(object sender, EventArgs e)
    {

    }

    protected void SCLASS_SelectedIndexChanged(object sender, EventArgs e)
    {
        SClassSec.Enabled = true;
        #region EnableTrue
        //Loop through all the control present on the web page/form        
        foreach (Control ctrl in form2.Controls)
        {
            //check for all the TextBox controls on the page and clear them
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Enabled = true;
                if (((TextBox)ctrl).ID == "SID")
                    ((TextBox)ctrl).Enabled = false;
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
        SClassSec.DataSource = stdHandler.GetStudentClassSecName(SCLASS.SelectedItem.Text);
        SClassSec.DataTextField = "Section_Name";
        SClassSec.DataBind();
        SClassSec.Items.Insert(0, new ListItem("Select Section", "0"));
    }
}