using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Agregar...
using System.Data;
using System.Data.SqlClient;
using ProyColegio_BE;
using System.Linq.Expressions;

namespace ProyColegio_ADO
{
    public class ProfesorADO
    {
        //Instancias...
        ConexionADO MiConexion = new ConexionADO();
        SqlConnection cnx = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dtr;
        DataView dtv; 

        

        public ProfesorBE ConsultarProfesor(String strCodigo)
        {
            try
            {
                //Creamos la instancia de ProfesorBE
                ProfesorBE objProfesorBE = new ProfesorBE();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_ConsultarProfesor";
                //Manejamos parametros
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@vIdProfesor", strCodigo);

                //Abrimos y ejecutamos
                cnx.Open();
                dtr = cmd.ExecuteReader();
                if (dtr.HasRows == true) //Si el dtr tiene filas devolvemos los datos
                {
                    dtr.Read();
                    //Cargamos la instancia objAProfesorBE
                    objProfesorBE.IdProfesor = dtr["IdProfesor"].ToString();
                    objProfesorBE.NomProfesor = dtr["NomProfesor"].ToString();
                    objProfesorBE.ApeProfesor = dtr["ApeProfesor"].ToString();
                    objProfesorBE.DNIProfesor = dtr["DNIProfesor"].ToString();
                    objProfesorBE.SueProfesor = Convert.ToSingle(dtr["SueProfesor"]);
                    objProfesorBE.FecNacProfesor = Convert.ToDateTime(dtr["FecNacProfesor"]);
                    objProfesorBE.SexoProfesor = dtr["SexoProfesor"].ToString();
                    objProfesorBE.EmailProfesor = dtr["EmailProfesor"].ToString();
                    //objProfesorBE.FotoProfesor = (Byte[])(dtr["FotoProfesor"]);
                    objProfesorBE.TelfProfesor = dtr["TelfProfesor"].ToString();
                    objProfesorBE.IdUbigeo = dtr["IdUbigeo"].ToString();
                    objProfesorBE.EstProfesor = dtr["EstProfesor"].ToString();
                }
                dtr.Close();
                return objProfesorBE;
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

        public DataTable ListarProfesorAño(String strIdProfesor, String strIdPeriodo)
        {
            try
            {
                DataSet dts = new DataSet();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_ListarProfesorAño";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@vIdProfesor", strIdProfesor); 
                cmd.Parameters.AddWithValue("@vIdPeriodo", strIdPeriodo);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                ada.Fill(dts, "ProfesorAño");
                return dts.Tables["ProfesorAño"];     
            }
            catch (Exception ex)
            {
                throw new Exception("Error en el listado: " + ex.Message); 
            }
        }

        public DataTable CboAñoProfesor(String strIdProfesor)
        {
            try
            {
                DataSet dtset = new DataSet();
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_CboAñoProfesor";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@vIdProfesor", strIdProfesor);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dtset, "cboAñoProfesor");
                return dtset.Tables["cboAñoProfesor"];
            }
            catch (Exception ex)
            {
                throw new Exception("Error en el listado: " + ex.Message);
            }
        }
    }
}
