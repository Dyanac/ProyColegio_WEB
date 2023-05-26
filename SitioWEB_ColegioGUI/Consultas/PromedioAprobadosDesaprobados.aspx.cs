using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Agregar
using ProyColegio_BL; 

namespace SitioWEB_ColegioGUI.Consultas
{
    public partial class PromedioAprobadosDesaprobados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			try
			{
                if(Page.IsPostBack == false)
                {
                    AlumnoBL objAlumnoBL = new AlumnoBL();

                    //Llenamos la grilla a aprobados
                    grvAprobados.DataSource = objAlumnoBL.AlumnosAprobados(); 
                    grvAprobados.DataBind();

                    //Llenamos la grilla a desaprobados
                    grvDesaprobados.DataSource = objAlumnoBL.AlumnosDesaprobados();
                    grvDesaprobados.DataBind();

                    //Contruimos los graficos en base al DataTable AlumnosAprobados
                    DataTableReader dtrReaderAprobados = objAlumnoBL.AlumnosAprobados().CreateDataReader();
                    DataTableReader dtrReaderDesaprobados = objAlumnoBL.AlumnosDesaprobados().CreateDataReader();

                    //Graficos de aprobados 
                    grafAprobados.Series.Add("Aprobados");
                    grafAprobados.Series["Aprobados"].Points.DataBindXY(dtrReaderAprobados, "Año", dtrReaderAprobados, "Aprobados");
                    grafAprobados.Series["Aprobados"].IsValueShownAsLabel = true;

                    //Graficos de desaprobados
                    grafDesaprobados.Series.Add("Desaprobados");
                    grafDesaprobados.Series["Desaprobados"].Points.DataBindXY(dtrReaderDesaprobados, "Año", dtrReaderDesaprobados, "Desaprobados");
                    grafDesaprobados.Series["Desaprobados"].IsValueShownAsLabel = true;
                }
			}
			catch (Exception ex)
			{
                lblMensaje.Text = "Error: " + ex.Message; 
			}
        }

        protected void grvAprobados_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}