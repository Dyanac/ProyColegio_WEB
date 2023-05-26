using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Agregar
using System.Data;
using System.Data.SqlClient;
using ProyColegio_BE;
using System.Linq.Expressions;

namespace ProyColegio_ADO
{
    public class AlumnoADO
    {
        //Instancias...
        ConexionADO MiConexion = new ConexionADO();
        SqlConnection cnx = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dtr;
        DataView dtv; 

        public AlumnoBE ConsultarAlumno(String strCodigo)
        {
            try
            {
                //Creamos la instancia de AlumnoBE...
                AlumnoBE objAlumnoBE = new AlumnoBE();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_ConsultarAlumno";
                //Manejamos parametros
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@vIdAlumno", strCodigo);

                //Abrimos y ejecutamos
                cnx.Open();
                dtr = cmd.ExecuteReader();
                if (dtr.HasRows == true) //Si el dtr tiene filas devolvemos los datos
                {
                    dtr.Read();
                    //Cargamos la instancia objAlumnoBE
                    objAlumnoBE.IdAlumno = dtr["IdAlumno"].ToString();
                    objAlumnoBE.IdApoderado = dtr["IdApoderado"].ToString();
                    objAlumnoBE.NomAlumno = dtr["NomAlumno"].ToString();
                    objAlumnoBE.ApeAlumno = dtr["ApeAlumno"].ToString();
                    objAlumnoBE.DNIAlumno = dtr["DNIAlumno"].ToString();
                    objAlumnoBE.FecNacAlumno = Convert.ToDateTime(dtr["FecNacAlumno"]);
                    objAlumnoBE.SexoAlumno = dtr["SexoAlumno"].ToString();
                    objAlumnoBE.DirAlumno = dtr["DirAlumno"].ToString();
                    //Convertimos la imagen a mapa de bytes y lo cargamos a la propiedad de la entidad de negocios...
                    //objAlumnoBE.FotoAlumno = (Byte[])(dtr["FotoAlumno"]);
                    objAlumnoBE.IdUbigeo = dtr["IdUbigeo"].ToString();
                    objAlumnoBE.EstAlumno = dtr["EstAlumno"].ToString();
                }
                dtr.Close();
                return objAlumnoBE;
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                if (cnx.State == ConnectionState.Open)
                {
                    cnx.Close();
                }
            }
        }    
       
        public DataTable ListarAlumnoNotas(String strIdAlumno, String strIdGrado)
        {
            try
            {
                DataSet dts = new DataSet();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_ListarAlumnoNotas";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@vIdAlumno", strIdAlumno);
                cmd.Parameters.AddWithValue("@vIdGrado", strIdGrado);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                ada.Fill(dts, "AlumnoNotas");
                return dts.Tables["AlumnoNotas"];
            }
            catch (Exception ex)
            {
                throw new Exception("Error en el listado: " + ex.Message);
            }
        }

        public DataTable AlumnosAprobados()
        {
            try
            {
                DataSet dts = new DataSet(); 
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_AlumnosAprobados"; 
                cmd.Parameters.Clear(); 

                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                ada.Fill(dts, "AlumnosAprobados");
                return dts.Tables["AlumnosAprobados"]; 
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message); 
            }
        }

        public DataTable AlumnosDesaprobados()
        {
            try
            {
                DataSet dts = new DataSet();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_AlumnosDesaprobados";
                cmd.Parameters.Clear();

                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                ada.Fill(dts, "AlumnosDesaprobados");
                return dts.Tables["AlumnosDesaprobados"];
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public DataTable CboGradoAlumno(String strIdAlumno)
        {
            try
            {
                DataSet dtseet = new DataSet();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_CboGradoAlumno";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@vIdAlumno", strIdAlumno);                

                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dtseet, "CboGradoAlumno");
                return dtseet.Tables["CboGradoAlumno"]; 
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
