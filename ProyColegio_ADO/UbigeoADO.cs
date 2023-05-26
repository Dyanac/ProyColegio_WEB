using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyColegio_ADO
{
    public class UbigeoADO
    {
        ConexionADO MiConexion = new ConexionADO();
        SqlConnection cnx = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dtr;
        Boolean blnexito = false;

        public DataTable UbigeoDepartamentos()
        {
            DataSet dts = new DataSet();
            try
            {
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_UbigeoDepartamentos";
                cmd.Parameters.Clear();
                SqlDataAdapter miada;
                miada = new SqlDataAdapter(cmd);
                miada.Fill(dts, "Departamentos");
                return dts.Tables["Departamentos"];
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public DataTable UbigeoProvinciasDepartamento(String strIdDepartamento)
        {
            DataSet dts = new DataSet();
            try
            {
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_UbigeoProvinciasDepartamento";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@IdDepartamento", strIdDepartamento);
                SqlDataAdapter miada;
                miada = new SqlDataAdapter(cmd);
                miada.Fill(dts, "Provincias");
                return dts.Tables["Provincias"];
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public DataTable UbigeoDistritosProvinciaDepartamento(String strIdDepartamento, String strIdProvincia)
        {
            DataSet dts = new DataSet();
            try
            {
                cnx.ConnectionString = MiConexion.GetCnx();
                cmd.Connection = cnx;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_UbigeoDistritosProvinciaDepartamento";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@IdDepartamento", strIdDepartamento);
                cmd.Parameters.AddWithValue("@IdProvincia", strIdProvincia);
                SqlDataAdapter miada;
                miada = new SqlDataAdapter(cmd);
                miada.Fill(dts, "Distritos");
                return dts.Tables["Distritos"];
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
