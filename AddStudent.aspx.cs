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
using System.Text.RegularExpressions;

public partial class AddStudent : System.Web.UI.Page
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
        GenerateId();

        AddStd.Style.Add("display", "block");
    }

    protected void AddStd_Click(object sender, EventArgs e)
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

            if (stdHandler.AddNewStudent(std) > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('Student Record Inserted!')", true);
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
        }

    }

    protected void AddPID_Click(object sender, EventArgs e)
    {
        AddPID.Style.Add("display", "none");
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
    }

    protected void Addparent_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection("Data Source=.;Initial Catalog=Client;Integrated Security=True");
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        String sql = "";
        cnn.Open();
        sql = "Insert into Product values(8,'Drink',140)";
        command = new SqlCommand(sql, cnn);
        adapter.InsertCommand = new SqlCommand(sql, cnn);
        adapter.InsertCommand.ExecuteNonQuery();
        command.Dispose();
        cnn.Close();
        Success.Text = "Parent Added!";
        AddPID.Style.Add("display", "none");
        AddStd.Style.Add("display", "block");
    }

    void GenerateId()
    {
        try
        {
            using (con)
            {
                MySqlDataAdapter sda = new MySqlDataAdapter("SELECT IFNULL(MAX(Std_Id),0)+1 FROM Student", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                SID.Text = dt.Rows[0][0].ToString();
            }

        }
        catch (MySqlException ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }

    protected void SClassSec_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void SCLASS_SelectedIndexChanged(object sender, EventArgs e)
    {
        SClassSec.Enabled = true;
        SClassSec.DataSource = stdHandler.GetStudentClassSecName(SCLASS.SelectedItem.Text);
        SClassSec.DataTextField = "Section_Name";
        SClassSec.DataBind();
        SClassSec.Items.Insert(0, new ListItem("Select Section", "0"));
    }


    protected void Search_Click(object sender, EventArgs e)
    {

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

    protected void PMbl_TextChanged(object sender, EventArgs e)
    {
        //this.SearchCustomers();
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SPID.Text = GridView1.SelectedRow.Cells[0].Text;
    }

    //private void SearchCustomers()
    //{
    //    using (MySqlCommand cmd = new MySqlCommand())
    //    {
    //        string sql=string.Empty;
    //        if (!string.IsNullOrEmpty(PMbl.Text.Trim()))
    //        {
    //            sql = "select Gr_Id,Gr_Fname,Gr_Lname,Gr_MobileNo,Gr_CNIC,Gr_Relationship from Guardian where Gr_MobileNo like'%" + PMbl.Text + "%' ";
    //        }
    //        cmd.CommandText = sql;
    //        cmd.Connection = con;
    //        using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
    //        {
    //            DataTable dt = new DataTable();
    //            sda.Fill(dt);
    //            GridView1.DataSource = dt;
    //            GridView1.DataBind();
    //        }
    //    }

    //}


    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        GridViewRow row = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
        for (int i = 0; i < GridView1.Columns.Count; i++)
        {
            TableHeaderCell tbHeader = new TableHeaderCell();
            TextBox search = new TextBox();
            search.Attributes["placeholder"] = GridView1.Columns[i].HeaderText;
            search.CssClass = "search_class";
            tbHeader.Controls.Add(search);
            row.Controls.Add(tbHeader);
        }
        GridView1.HeaderRow.Parent.Controls.AddAt(1, row);
    }
}