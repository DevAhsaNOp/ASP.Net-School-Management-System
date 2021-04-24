using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entities
{
   public class EEmployee
    {
        public int ID { get; set; }
        public string FNAME { get; set; }
        public string LNAME { get; set; }
        public string EMAIL { get; set; }
        public string PASSWORD { get; set; }
        public DateTime DOB { get; set; }
        public string TELEPHONE { get; set; }
        public string MOBILENO { get; set; }
        public DateTime DOJ { get; set; }
        public string GENDER { get; set; }
        public int ROLE { get; set; }
        public Decimal SALARY { get; set; }
        public string STATUS { get; set; }
    }
}
