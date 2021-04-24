using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Entities;
using System.Web.UI.WebControls;

namespace DAL.EOperations
{
    public class OStudent
    {
        string conn = "Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;";

        public int AddNewStudent(EStudents std)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("AddStudent", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@std_id", std.ID);
                    cmd.Parameters.AddWithValue("@std_Fname", std.FNAME);
                    cmd.Parameters.AddWithValue("@std_Lname", std.LNAME);
                    cmd.Parameters.AddWithValue("@std_Email", std.EMAIL);
                    cmd.Parameters.AddWithValue("@std_Pass", std.PASSWORD);
                    cmd.Parameters.AddWithValue("@std_DOB", std.DOB);
                    cmd.Parameters.AddWithValue("@std_telno", std.TELEPHONE);
                    cmd.Parameters.AddWithValue("@std_Mobno", std.MOBILENO);
                    cmd.Parameters.AddWithValue("@std_DOA", std.DOA);
                    cmd.Parameters.AddWithValue("@std_Status", std.STATUS);
                    cmd.Parameters.AddWithValue("@std_gender", std.GENDER);
                    cmd.Parameters.AddWithValue("@std_cid", std.CID);
                    cmd.Parameters.AddWithValue("@std_secid", std.SECID);
                    cmd.Parameters.AddWithValue("@std_guardianid", std.GID);
                    con.Open();
                    effectrows = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            return effectrows;
        }

        public int UpdatEStudents(EStudents std, int id)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("EditStudent", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@std_fname", std.FNAME);
                    cmd.Parameters.AddWithValue("@std_lname", std.LNAME);
                    cmd.Parameters.AddWithValue("@std_email", std.EMAIL);
                    cmd.Parameters.AddWithValue("@std_pass", std.PASSWORD);
                    cmd.Parameters.AddWithValue("@std_dob", std.DOB);
                    cmd.Parameters.AddWithValue("@std_telno", std.TELEPHONE);
                    cmd.Parameters.AddWithValue("@std_Mobno", std.MOBILENO);
                    cmd.Parameters.AddWithValue("@std_doa", std.DOA);
                    cmd.Parameters.AddWithValue("@std_status", std.STATUS);
                    cmd.Parameters.AddWithValue("@std_gender", std.GENDER);
                    cmd.Parameters.AddWithValue("@std_cid", std.CID);
                    cmd.Parameters.AddWithValue("@std_secid", std.SECID);
                    cmd.Parameters.AddWithValue("@std_guardianid", std.GID);
                    con.Open();
                    effectrows = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            return effectrows;
        }

        public DataSet ViewStudent(int id)
        {
            string myquery = "Select * from ViewStudent where Std_Id=" + id;
            MySqlConnection con = new MySqlConnection(conn);
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet ViewStudentList()
        {
            string myquery = "Select Std_Id,Std_Fname,Std_Lname,Std_MobileNo,Std_Gender,Std_ClassID from ViewStudent";
            MySqlConnection con = new MySqlConnection(conn);
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet ViewClassName()
        {
            string myquery = "select Class_ID,Class_Description FROM ClassRoom order by Class_Description;";
            MySqlConnection con = new MySqlConnection(conn);
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet ViewSectionNameByID(string name)
        {
            string myquery = "Select Section_Name from ViewClass where Class_Description =" + name;
            MySqlConnection con = new MySqlConnection(conn);
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet GetStudentClassSecName(string name)
        {
            string myquery = "Select Section_Name from ViewClass where Class_Description='" + name + "'order by Section_Name";
            MySqlConnection con = new MySqlConnection(conn);
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public string GetStudentClassId(string name)
        {
            string id = string.Empty;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                MySqlDataAdapter da = new MySqlDataAdapter("Select Class_ID from ClassRoom where Class_Description='" + name + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0]["Class_ID"].ToString();
            }
            return id;
        }

        public string GetStudentClassName(int id)
        {
            string name = string.Empty;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                MySqlDataAdapter da = new MySqlDataAdapter("Select Class_Description from ClassRoom where Class_ID='" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                name = dt.Rows[0]["Class_Description"].ToString();
            }
            return name;
        }

        public string GetStudentSecId(string secname,string classs)
        {
            string id = string.Empty;
            //using (MySqlConnection con = new MySqlConnection(conn))
            //{
            //    MySqlDataAdapter da = new MySqlDataAdapter("select Section_ID from Section s inner join ClassRoom c on c.Class_ID=s.Section_ClassID  where s.Section_Name="+ secname + "and c.Class_Description=" + classs , con);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    id = dt.Rows[0]["Section_ID"].ToString();
            //}
            //return id;
                //sql connection object
                using (MySqlConnection con = new MySqlConnection(conn))
                {

                    //retrieve the SQL Server instance version
                    string query = @"select Section_ID from Section s inner join ClassRoom c on c.Class_ID = s.Section_ClassID  where s.Section_Name = '"+ secname + "' and c.Class_Description = " + classs;
                    //define the SqlCommand object
                    MySqlCommand cmd = new MySqlCommand(query, con);

                    //open connection
                    con.Open();

                    //execute the SQLCommand
                    MySqlDataReader dr = cmd.ExecuteReader();

                    //check if there are records
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            id = dr.GetString(0);
                        }
                    }

                    //close data reader
                    dr.Close();

                    //close connection
                    con.Close();
                }
            return id;
        }

        public string GetStudentSecName(int id)
        {
            string name = string.Empty;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                MySqlDataAdapter da = new MySqlDataAdapter("Select Section_Name from Section where Section_ID='" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                name = dt.Rows[0]["Section_Name"].ToString();
            }
            return name;
        }

        public string GetStudentGrdName(int id)
        {
            string name = string.Empty;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                MySqlDataAdapter da = new MySqlDataAdapter("Select concat(Gr_Fname,' ',Gr_Lname) from Guardian where Gr_Id='" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                name = dt.Rows[0]["concat(Gr_Fname,' ',Gr_Lname)"].ToString();
            }
            return name;
        }
    }
}
