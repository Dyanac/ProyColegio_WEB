using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Agregar
using ProyColegio_BE;
using ProyColegio_BL; 

namespace SitioWEB_ColegioGUI.Consultas
{
    public partial class NotasAlumno : System.Web.UI.Page
    {
        //Instancias
        AlumnoBL objAlumnoBL = new AlumnoBL();
        AlumnoBE objAlumnoBE = new AlumnoBE();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click1(object sender, ImageClickEventArgs e)
        {
            try
            {
                //Buscamos al alumno por si ID
                objAlumnoBE = objAlumnoBL.ConsultarAlumno(txtIdAlumno.Text.ToString());

                //Validamos la existencia del alumno
                if (objAlumnoBE.IdAlumno == null)
                {
                    txtNombre.Text = String.Empty;
                    txtApellido.Text = String.Empty;
                    txtDNI.Text = String.Empty;
                    txtSexo.Text = String.Empty;
                    txtDireccion.Text = String.Empty;
                    txtUbigeo.Text = String.Empty;
                    txtEstado.Text = String.Empty;
                    txtFecNac.Text = String.Empty;
                    lblRegistros.Text = String.Empty;
                    btnConsultar.Enabled = false;


                    //Mensaje si no existe el alumno
                    throw new Exception("Codigo de alumno no existente.");
                }
                else
                {
                    txtNombre.Text = objAlumnoBE.NomAlumno;
                    txtApellido.Text = objAlumnoBE.ApeAlumno;
                    txtDNI.Text = objAlumnoBE.DNIAlumno;
                    if (objAlumnoBE.SexoAlumno == "M")
                    {
                        txtSexo.Text = "Masculino";
                    }
                    else
                    {
                        txtSexo.Text = "Femenino";
                    }
                    txtDireccion.Text = objAlumnoBE.DirAlumno;
                    txtUbigeo.Text = objAlumnoBE.IdUbigeo;
                    txtFecNac.Text = Convert.ToDateTime(objAlumnoBE.FecNacAlumno).ToString("dd/MM/yyyy");
                    if (objAlumnoBE.EstAlumno == "1")
                    {
                        txtEstado.Text = "Activo";
                    }
                    else
                    {
                        txtEstado.Text = "Inactivo";
                    }

                    try
                    {
                        DataTable dt = objAlumnoBL.CboGradoAlumno(txtIdAlumno.Text.ToString());
                        DataRow dr;
                        dr = dt.NewRow();
                        dr["Grado"] = "--Seleccione--";
                        dt.Rows.InsertAt(dr, 0);
                        cboGrado.DataSource = dt;
                        cboGrado.DataValueField = "IdGrado";
                        cboGrado.DataTextField = "Grado";
                        cboGrado.DataBind();
                        cboGrado.SelectedIndex = 0;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error: " + ex.Message); 
                    }
                }
            }
            catch (Exception ex)
            {
                lblMensajePopup.Text = "Error: " + ex.Message;
                PopMensaje.Show();
            }
        }

        protected void btnConsultar_Click1(object sender, EventArgs e)
        {
            try
            {
                //Lleamos el gridView con el resultado del metodo ListarAlumnoNotas
                grvDatos.DataSource = objAlumnoBL.ListarAlumnoNotas(txtIdAlumno.Text.Trim(), cboGrado.Text.Trim());

                grvDatos.DataBind();

                lblRegistros.Text = "Cantidad de registros: " + grvDatos.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                lblMensajePopup.Text = "Error: " + ex.Message;
                PopMensaje.Show();
            }
        }
    }
}