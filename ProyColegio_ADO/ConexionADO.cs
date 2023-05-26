using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyColegio_ADO
{
    public class ConexionADO
    {
        public string GetCnx()
        {
            string strCnx = ConfigurationManager.ConnectionStrings["Colegio"].ConnectionString;
            if(object.ReferenceEquals(strCnx, string.Empty))
            {
                return string.Empty; 
            }
            else
            {
                return strCnx;
            }
        }
    }
}
