using DAL.Entities;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.EOperations
{
    public class OEmployee
    {
        string conn = "Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;";

        public int AddNewEmployee(EEmployee GRD)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("AddEmployee", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@emp_id", GRD.ID);
                    cmd.Parameters.AddWithValue("@emp_fname", GRD.FNAME);
                    cmd.Parameters.AddWithValue("@emp_lname", GRD.LNAME);
                    cmd.Parameters.AddWithValue("@emp_email", GRD.EMAIL);
                    cmd.Parameters.AddWithValue("@emp_pass", GRD.PASSWORD);
                    cmd.Parameters.AddWithValue("@emp_dob", GRD.DOB);
                    cmd.Parameters.AddWithValue("@emp_telno", GRD.TELEPHONE);
                    cmd.Parameters.AddWithValue("@emp_mobno", GRD.MOBILENO);
                    cmd.Parameters.AddWithValue("@emp_doj", GRD.DOJ);
                    cmd.Parameters.AddWithValue("@emp_status", GRD.STATUS);
                    cmd.Parameters.AddWithValue("@emp_gender", GRD.GENDER);
                    cmd.Parameters.AddWithValue("@emp_roleid", GRD.ROLE);
                    cmd.Parameters.AddWithValue("@emp_salary", GRD.SALARY);
                    con.Open();
                    effectrows = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            return effectrows;
        }

        public int UpdateEmployee(EEmployee GRD, int id)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("EditEmployee", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@emp_id", id);
                    cmd.Parameters.AddWithValue("@emp_fname", GRD.FNAME);
                    cmd.Parameters.AddWithValue("@emp_lname", GRD.LNAME);
                    cmd.Parameters.AddWithValue("@emp_email", GRD.EMAIL);
                    cmd.Parameters.AddWithValue("@emp_pass", GRD.PASSWORD);
                    cmd.Parameters.AddWithValue("@emp_dob", GRD.DOB);
                    cmd.Parameters.AddWithValue("@emp_telno", GRD.TELEPHONE);
                    cmd.Parameters.AddWithValue("@emp_mobno", GRD.MOBILENO);
                    cmd.Parameters.AddWithValue("@emp_doj", GRD.DOJ);
                    cmd.Parameters.AddWithValue("@emp_status", GRD.STATUS);
                    cmd.Parameters.AddWithValue("@emp_gender", GRD.GENDER);
                    cmd.Parameters.AddWithValue("@emp_roleid", GRD.ROLE);
                    cmd.Parameters.AddWithValue("@emp_salary", GRD.SALARY);
                    con.Open();
                    effectrows = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            return effectrows;
        }

        public DataSet ViewEmployee(int id)
        {
            string myquery = "Select * from ViewEmployee where E_ID=" + id;
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

        public DataSet ViewEmployeeList()
        {
            string myquery = "Select E_ID,E_Fname,E_Lname,E_MobileNo,E_Gender,E_RoleID from ViewEmployee";
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

        public DataSet ViewEmployeeRole()
        {
            string myquery = "Select Role_Name from Role";
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

        public string GetEmployeeRoleId(string name)
        {
            string id = string.Empty;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                MySqlDataAdapter da = new MySqlDataAdapter("Select Role_ID from Role where Role_Name='"+name+"'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0]["Role_ID"].ToString();
            }
            return id;
        }

        public string GetEmployeeRoleName(int id)
        {
            string name = string.Empty;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                MySqlDataAdapter da = new MySqlDataAdapter("Select Role_Name from Role where Role_ID='" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                name = dt.Rows[0]["Role_Name"].ToString();
            }
            return name;
        }
    }
}