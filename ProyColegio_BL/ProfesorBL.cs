using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Agregar...
using ProyColegio_ADO;
using ProyColegio_BE; 

namespace ProyColegio_BL
{
    public class ProfesorBL
    {
        ProfesorADO objProfesorADO = new ProfesorADO();

        public ProfesorBE ConsultarProfesor(String strCodigo)
        {
            return objProfesorADO.ConsultarProfesor(strCodigo); 
        }

        public DataTable ListarProfesorAño(String strIdProfesor, String strIdPeriodo)
        {
            return objProfesorADO.ListarProfesorAño(strIdProfesor, strIdPeriodo); 
        }

        public DataTable CboAñoProfesor(String strIdProfesor)
        {
            return objProfesorADO.CboAñoProfesor(strIdProfesor); 
        }
    }
}
