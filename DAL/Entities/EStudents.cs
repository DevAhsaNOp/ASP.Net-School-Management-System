using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entities
{
    public class EStudents
    {
        public int ID { get; set; }
        public string FNAME { get; set; }
        public string LNAME { get; set; }
        public string EMAIL { get; set; }
        public string PASSWORD { get; set; }
        public DateTime DOB { get; set; }
        public string TELEPHONE { get; set; }
        public string MOBILENO { get; set; }
        public DateTime DOA { get; set; }
        public string STATUS { get; set; }
        public string GENDER { get; set; }
        public int CID { get; set; }
        public int SECID { get; set; }
        public int GID { get; set; }
    }
}
