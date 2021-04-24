using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Entities;
using DAL.EOperations;
using System.Data;
using MySql.Data.MySqlClient;
using MySql.Web;

namespace BLL.BOperations
{
    public class EOperation
    {
        // Handle to the Employee DBAccess class
        OEmployee EmployeeDb = null;

        public EOperation()
        {
            EmployeeDb = new OEmployee();
        }

        public DataSet GetEmployeeByID(int id)
        {
            return EmployeeDb.ViewEmployee(id);
        }

        public DataSet GetEmployeeList()
        {
            return EmployeeDb.ViewEmployeeList();
        }

        public string GetEmployeeRoleId(string name)
        {
            return EmployeeDb.GetEmployeeRoleId(name);
        }

        public string GetEmployeeRoleName(int id)
        {
            return EmployeeDb.GetEmployeeRoleName(id);
        }

        public DataSet GetEmployeeRole()
        {
            return EmployeeDb.ViewEmployeeRole();
        }

        public int UpdateEmployee(EEmployee emp, int id)
        {
            return EmployeeDb.UpdateEmployee(emp, id);
        }

        public int AddNewEmployee(EEmployee Employee)
        {
            return EmployeeDb.AddNewEmployee(Employee);
        }
    }
}
