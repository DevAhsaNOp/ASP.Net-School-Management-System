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
    class OEmployee
    {
        string conn = "Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;";

        //public int AddNewEmployee(Employee GRD)
        //{
        //    int effectrows;
        //    using (MySqlConnection con = new MySqlConnection(conn))
        //    {
        //        using (MySqlCommand cmd = new MySqlCommand("AddEmployee", con))
        //        {
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@gr_id", GRD.ID);
        //            cmd.Parameters.AddWithValue("@gr_fname", GRD.FNAME);
        //            cmd.Parameters.AddWithValue("@gr_lname", GRD.LNAME);
        //            cmd.Parameters.AddWithValue("@gr_email", GRD.EMAIL);
        //            cmd.Parameters.AddWithValue("@gr_pass", GRD.PASSWORD);
        //            cmd.Parameters.AddWithValue("@gr_cnic", GRD.CNIC);
        //            cmd.Parameters.AddWithValue("@gr_telno", GRD.TELEPHONE);
        //            cmd.Parameters.AddWithValue("@gr_mobno", GRD.MOBILENO);
        //            cmd.Parameters.AddWithValue("@gr_address", GRD.ADDRESS);
        //            cmd.Parameters.AddWithValue("@gr_relationship", GRD.RELATIONSHIP);
        //            con.Open();
        //            effectrows = cmd.ExecuteNonQuery();
        //            con.Close();
        //        }
        //    }
        //    return effectrows;
        //}

        public int UpdateEmployee(Employee GRD)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("EditEmployee", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@emp_id", GRD.ID);
                    cmd.Parameters.AddWithValue("@gr_fname", GRD.FNAME);
                    cmd.Parameters.AddWithValue("@gr_lname", GRD.LNAME);
                    cmd.Parameters.AddWithValue("@gr_email", GRD.EMAIL);
                    cmd.Parameters.AddWithValue("@gr_pass", GRD.PASSWORD);
                    cmd.Parameters.AddWithValue("@gr_cnic", GRD.CNIC);
                    cmd.Parameters.AddWithValue("@gr_telno", GRD.TELEPHONE);
                    cmd.Parameters.AddWithValue("@gr_mobno", GRD.MOBILENO);
                    cmd.Parameters.AddWithValue("@gr_address", GRD.ADDRESS);
                    cmd.Parameters.AddWithValue("@gr_relationship", GRD.RELATIONSHIP);
                    con.Open();
                    effectrows = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            return effectrows;
        }

        public DataSet ViewEmployee(int id)
        {
            string myquery = "Select * from Employee where E_ID=" + id;
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
            string myquery = "Select * from Employee";
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
    }
}
