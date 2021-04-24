using DAL.Entities;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Web;
using System.Data;

namespace DAL.EOperations
{
    public class OGuardian
    {
        string conn = "Server=192.3.73.34;Database=uhuospdn_practice;Uid=uhuospdn_sql;Pwd=rlL)~~*NJ7t(;";

        public int AddNewGuardian(Guardian GRD)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("AddGuardian", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@gr_id", GRD.ID);
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

        public int UpdateGuardian(Guardian GRD, int ID)
        {
            int effectrows;
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                using (MySqlCommand cmd = new MySqlCommand("EditGuardian", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", ID);
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

        public DataSet ViewGuardian(int id)
        {
            string myquery = "Select * from ViewGuardian where Gr_Id=" + id;
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

        public DataSet ViewGuardianList()
        {
            string myquery = "Select * from ViewGuardian";
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


        //public bool UpdateGuardian(Guardian GRD)
        //{
        //    MySqlParameter[] parameters = new MySqlParameter[]
        //    {
        //        new MySqlParameter("@id",               GRD.ID),
        //        new MySqlParameter("@gr_fname",         GRD.FNAME),
        //        new MySqlParameter("@gr_lname",         GRD.LNAME),
        //        new MySqlParameter("@gr_email",         GRD.EMAIL),
        //        new MySqlParameter("@gr_pass",          GRD.PASSWORD),
        //        new MySqlParameter("@gr_cnic",          GRD.CNIC),
        //        new MySqlParameter("@gr_telno",         GRD.TELEPHONE),
        //        new MySqlParameter("@gr_mobno",         GRD.MOBILENO),
        //        new MySqlParameter("@gr_address",       GRD.ADDRESS),
        //        new MySqlParameter("@gr_relationship",  GRD.RELATIONSHIP)
        //    };

        //    return SqlDBHelper.ExecuteNonQuery("EditGuardian", CommandType.StoredProcedure, parameters);
        //}

        //public bool DeleteGuardian(int grdID)
        //{
        //    MySqlParameter[] parameters = new MySqlParameter[]
        //    {
        //        new MySqlParameter("@empId", grdID)
        //    };

        //    return SqlDBHelper.ExecuteNonQuery("DeleteGuardian", CommandType.StoredProcedure, parameters);
        //}

        //public Guardian GetGuardianDetails(int grdID)
        //{
        //    Guardian GRD = null;

        //    MySqlParameter[] parameters = new MySqlParameter[]
        //    {
        //        new MySqlParameter("@grdId", grdID)
        //    };
        //    //Lets get the list of all Guardians in a datataable
        //    using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("GetGuardianDetails", CommandType.StoredProcedure, parameters))
        //    {
        //        //check if any record exist or not
        //        if (table.Rows.Count == 1)
        //        {
        //            DataRow row = table.Rows[0];

        //            //Lets go ahead and create the list of Guardians
        //            GRD = new Guardian();

        //            //Now lets populate the Guardian details into the list of Guardians                                           
        //            GRD.GuardianID = Convert.ToInt32(row["GuardianID"]);
        //            GRD.LastName = row["LastName"].ToString();
        //            GRD.FirstName = row["FirstName"].ToString();
        //            GRD.Title = row["Title"].ToString();
        //            GRD.Address = row["Address"].ToString();
        //            GRD.City = row["City"].ToString();
        //            GRD.Region = row["Region"].ToString();
        //            GRD.PostalCode = row["PostalCode"].ToString();
        //            GRD.Country = row["Country"].ToString();
        //            GRD.Extension = row["Extension"].ToString();
        //        }
        //    }

        //    return GRD;
        //}

        //public List<Guardian> GetGuardianList()
        //{
        //    List<Guardian> listGuardians = null;

        //    //Lets get the list of all Guardians in a datataable
        //    using (DataTable table = SqlDBHelper.ExecuteSelectCommand("GetGuardianList", CommandType.StoredProcedure))
        //    {
        //        //check if any record exist or not
        //        if (table.Rows.Count > 0)
        //        {
        //            //Lets go ahead and create the list of Guardians
        //            listGuardians = new List<Guardian>();

        //            //Now lets populate the Guardian details into the list of Guardians
        //            foreach (DataRow row in table.Rows)
        //            {
        //                Guardian GRD = new Guardian();
        //                GRD.GuardianID = Convert.ToInt32(row["GuardianID"]);
        //                GRD.LastName = row["LastName"].ToString();
        //                GRD.FirstName = row["FirstName"].ToString();
        //                GRD.Title = row["Title"].ToString();
        //                GRD.Address = row["Address"].ToString();
        //                GRD.City = row["City"].ToString();
        //                GRD.Region = row["Region"].ToString();
        //                GRD.PostalCode = row["PostalCode"].ToString();
        //                GRD.Country = row["Country"].ToString();
        //                GRD.Extension = row["Extension"].ToString();

        //                listGuardians.Add(GRD);
        //            }
        //        }
        //    }

        //    return listGuardians;
        //}

    }
}
