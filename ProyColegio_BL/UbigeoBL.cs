using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
// Agregamos los using...
using ProyColegio_ADO;
using ProyColegio_BE;
using System.Data;

namespace ProyColegio_BL
{
    public class UbigeoBL
    {
        UbigeoADO objUbigeoADO = new UbigeoADO();

        public DataTable UbigeoDepartamentos()
        {
            return objUbigeoADO.UbigeoDepartamentos();
        }
        public DataTable UbigeoProvinciasDepartamento(String strIdDepartamento)
        {
            return objUbigeoADO.UbigeoProvinciasDepartamento(strIdDepartamento);
        }
        public DataTable UbigeoDistritosProvinciaDepartamento(String strIdDepartamento, String strIdProvincia)
        {
            return objUbigeoADO.UbigeoDistritosProvinciaDepartamento(strIdDepartamento, strIdProvincia);
        }
    }
}
