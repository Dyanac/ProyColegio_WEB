using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Agregar
using ProyColegio_BE;
using ProyColegio_BL; 

namespace SitioWEB_ColegioGUI.Consultas
{
    public partial class ConsultaProfesor : System.Web.UI.Page
    {
        //Instancias
        ProfesorBL objProfesorBL = new ProfesorBL();
        ProfesorBE objProfesorBE = new ProfesorBE();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnBuscar_Click1(object sender, ImageClickEventArgs e)
        {
            try
            {
                //Buscamos al profeso por su ID
                objProfesorBE = objProfesorBL.ConsultarProfesor(txtIdProfesor.Text.Trim());

                //Validamos la existencia del profesor
                if (objProfesorBE.NomProfesor == null)
                {
                    txtNombre.Text = String.Empty;
                    txtApellido.Text = String.Empty;
                    txtDNI.Text = String.Empty;
                    txtSueldo.Text = String.Empty;
                    txtFecNac.Text = String.Empty;
                    txtSexo.Text = String.Empty;
                    txtEmail.Text = String.Empty;
                    txtTelf.Text = String.Empty;
                    txtUbigeo.Text = String.Empty;
                    txtEstado.Text = String.Empty;

                    //Mensaje si no existe el profesor
                    throw new Exception("Codigo de profesor no existente.");
                }
                else
                {
                    txtNombre.Text = objProfesorBE.NomProfesor;
                    txtApellido.Text = objProfesorBE.ApeProfesor;
                    txtDNI.Text = objProfesorBE.DNIProfesor;
                    Single sngSueldo = objProfesorBE.SueProfesor;
                    txtSueldo.Text = sngSueldo.ToString("#,###,#0.00");
                    txtFecNac.Text = Convert.ToDateTime(objProfesorBE.FecNacProfesor).ToString("dd/MM/yyyy");
                    if (objProfesorBE.SexoProfesor == "M")
                    {
                        txtSexo.Text = "Masculino";
                    }
                    else
                    {
                        txtSexo.Text = "Femenino";
                    }
                    txtEmail.Text = objProfesorBE.EmailProfesor;
                    txtTelf.Text = objProfesorBE.TelfProfesor;
                    txtUbigeo.Text = objProfesorBE.IdUbigeo;
                    if (objProfesorBE.EstProfesor == "1")
                    {
                        txtEstado.Text = "Activo";
                    }
                    else
                    {
                        txtEstado.Text = "Inactivo";
                    }

                    try
                    {
                        DataTable dt = objProfesorBL.CboAñoProfesor(txtIdProfesor.Text.ToString());
                        DataRow dr;
                        dr = dt.NewRow();
                        dr["Año"] = "--Seleccione--";
                        dt.Rows.InsertAt(dr, 0);
                        cboAño.DataSource = dt;
                        cboAño.DataValueField = "IdPeriodo";
                        cboAño.DataTextField = "Año";
                        cboAño.DataBind();
                        cboAño.SelectedIndex = 0;

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

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            try
            {
                //Llenamos el gridView con el resultado del metodo ListarProfesorCurso
                grvDatos.DataSource = objProfesorBL.ListarProfesorAño(txtIdProfesor.Text.Trim(), cboAño.Text.Trim());
                
                grvDatos.DataBind();

                lblRegistros.Text = "Cantidad de registro: " + grvDatos.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                lblMensajePopup.Text = "Error: " + ex.Message; 
                PopMensaje.Show();
            }
        }
    }
}