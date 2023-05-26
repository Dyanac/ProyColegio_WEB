using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Agregar...
using ProyColegio_ADO;
using ProyColegio_BE;
using ProyColegio_BL; 

namespace ProyColegio_BL
{
    public class AlumnoBL
    {
        AlumnoADO objAlumnoADO = new AlumnoADO();

        public AlumnoBE ConsultarAlumno(String strCodigo)
        {
            return objAlumnoADO.ConsultarAlumno(strCodigo);
        }

        public DataTable ListarAlumnoNotas(String stridAlumno, String strIdGrado)
        {
            return objAlumnoADO.ListarAlumnoNotas(stridAlumno, strIdGrado);
        }

        public DataTable AlumnosAprobados()
        {
            return objAlumnoADO.AlumnosAprobados();
        }

        public DataTable AlumnosDesaprobados()
        {
            return objAlumnoADO.AlumnosDesaprobados();
        }

        public DataTable CboGradoAlumno(String strIdAlumno)
        {
            return objAlumnoADO.CboGradoAlumno(strIdAlumno);
        }
    }
}
