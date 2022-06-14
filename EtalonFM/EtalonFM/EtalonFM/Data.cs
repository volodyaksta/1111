using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EtalonFM
{
    class Data
    {
        public static int Access { get; set; }
        public static int UserID { get; set; }
        public static bool isManager() => Access == 0;
        public static bool isAdmin() => Access == 1;
    }
}
