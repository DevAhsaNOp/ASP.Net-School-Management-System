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
using System.Web.UI.WebControls;

namespace BLL.BOperations
{
    public class SOperation
    {
        OStudent StudentDb = null;

        public SOperation()
        {
            StudentDb = new OStudent();
        }

        public DataSet GetStudentByID(int id)
        {
            return StudentDb.ViewStudent(id);
        }

        public DataSet GetStudentList()
        {
            return StudentDb.ViewStudentList();
        }

        public string GetStudentClassId(string name)
        {
            return StudentDb.GetStudentClassId(name);
        }

        public string GetStudentClassName(int id)
        {
            return StudentDb.GetStudentClassName(id);
        }

        public string GetStudentSecId(string secname, string classS)
        {
            return StudentDb.GetStudentSecId(secname, classS);
        }

        public string GetStudentSecName(int id)
        {
            return StudentDb.GetStudentSecName(id);
        }

        public string GetStudentGrdName(int id)
        {
            return StudentDb.GetStudentGrdName(id);
        }

        public DataSet ViewClassName()
        {
            return StudentDb.ViewClassName();
        }

        public DataSet ViewSectionNameByID(string name)
        {
            return StudentDb.ViewSectionNameByID(name);
        }

        public int UpdateStudent(EStudents std, int id)
        {
            return StudentDb.UpdatEStudents(std, id);
        }

        public int AddNewStudent(EStudents Student)
        {
            return StudentDb.AddNewStudent(Student);
        }

        public DataSet GetStudentClassSecName(string name)
        {
            return StudentDb.GetStudentClassSecName(name);
        }

    }
}
