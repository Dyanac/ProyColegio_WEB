using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyColegio_BE
{
    public class ProfesorBE
    {
        //Definimos la entidad de negocio Profesor, con todas las propiedades de acuerdo la estructura de la tabla Tb_Profesor
        public String IdProfesor { get; set; }
        public String NomProfesor { get; set; }
        public String ApeProfesor { get; set; }
        public String DNIProfesor { get; set; }
        public Single SueProfesor { get; set; }
        public DateTime FecNacProfesor { get; set; }
        public String SexoProfesor { get; set; }
        public String EmailProfesor { get; set; }   
        public Byte[] FotoProfesor { get; set; }
        public String TelfProfesor { get; set; }
        public String IdUbigeo { get; set; }
        public DateTime FecRegistro { get; set; }
        public String UsuRegistro { get; set; }
        public DateTime FecUltMod { get; set; }
        public String UsuUltMod { get; set; }
        public String EstProfesor { get; set; }
    }
}
