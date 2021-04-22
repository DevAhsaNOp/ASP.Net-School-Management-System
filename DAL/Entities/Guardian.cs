using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entities
{
    public class Guardian
    {
        public int ID { get; set; }
        public string FNAME { get; set; }
        public string LNAME { get; set; }
        public string EMAIL { get; set; }
        public string PASSWORD { get; set; }
        public string CNIC { get; set; }
        public string TELEPHONE { get; set; }
        public string MOBILENO { get; set; }
        public string ADDRESS { get; set; }
        public string RELATIONSHIP { get; set; }
    }
}
