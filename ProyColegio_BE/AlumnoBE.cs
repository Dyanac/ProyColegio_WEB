using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyColegio_BE
{
    public class AlumnoBE
    {
        public String IdAlumno { get; set; }
        public String IdApoderado { get; set; }
        public String NomAlumno { get; set; }
        public String ApeAlumno { get; set; }
        public String DNIAlumno { get; set; }
        public DateTime FecNacAlumno { get; set; }
        public String SexoAlumno { get; set; }
        public String DirAlumno { get; set; }
        public Byte[] FotoAlumno { get; set; }
        public String IdUbigeo { get; set; }
        public DateTime FecRegistro { get; set; }
        public String UsuRegistro { get; set; }
        public DateTime FecUltMod { get; set; }
        public String UsuUltMod { get; set; }
        public String EstAlumno { get; set; }
    }
}
