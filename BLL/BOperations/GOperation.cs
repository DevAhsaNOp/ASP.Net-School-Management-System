using System;
using System.Linq;
using System.Text;
using DAL.Entities;
using DAL.EOperations;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;
using MySql.Web;

namespace BLL.BOperations
{
    public class GOperation
    {
        // Handle to the Guardian DBAccess class
        OGuardian GuardianDb = null;

        public GOperation()
        {
            GuardianDb = new OGuardian();
        }

        public DataSet GetGuardianByID(int id)
        {
            return GuardianDb.ViewGuardian(id);
        }

        public DataSet GetGuardianList()
        {
            return GuardianDb.ViewGuardianList();
        }

        public int UpdateGuardian(Guardian Guardian, int ID)
        {
            return GuardianDb.UpdateGuardian(Guardian, ID);
        }
        
        public int AddNewGuardian(Guardian Guardian)
        {
            return GuardianDb.AddNewGuardian(Guardian);
        }
    }
}
