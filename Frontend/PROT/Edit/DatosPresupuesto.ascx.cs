using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace LCC.WebGestion.presupuestos
{
	public partial class presupuestos_DatosPresupuesto : PROT.ControlesEspeciales.RaizASCX
	{
		protected override void OnPreRender(EventArgs e)
		{
            if (objeto != null)
			{
				Acp.Visible = (bool)objeto["Aceptado"];
				NoAcp.Visible = !Acp.Visible;

                //Division 4 es Lcc Calidad
                if ((objeto.ObjetoAsociado("Division").IDActual[0] == 1) 
                    && objeto.ObjetoAsociado("PresupuestoTipo")["Clave"].ToString() == "GEO")
                {
                    Conf.Visible = true;
                    tdv.Visible = true;
                }
                else
                {
                    Conf.Visible = false;
                    tdv.Visible = false; ;
                }
                
                if (Acp.Visible)
                {
                    desace.Visible = ((LCC.WebGestion.RaizPage)Page).UsuarioActual.Permiso("MET", "Presupuesto", "DesAceptarPresupuesto");
                }
                else
                {
                    desace.Visible = false;    
                }

				APor.Visible = Acp.Visible && ((Int16)objeto["AceptadoPorEscrito"] == 2);

				ObAcep.Visible = Acp.Visible;
				ObNoAcep.Visible = !Acp.Visible;

				if (LCC.Negocio.Divisiones.DivisionSucursal.UsaReglamentacion(objeto["IDDivisionSucursal"]))
				{
					//				rgl.Visible = objeto.Nuevo || !(objeto["IDTituloReglamento"] is DBNull);
					rgl.Visible = true;

                    if (!(objeto["IDTituloReglamento"] is DBNull) && ((int)objeto["IDTituloReglamento"] == 1 || (int)objeto["IDTituloReglamento"] == 2
                        || (int)objeto["IDTituloReglamento"] == 6) && (int)objeto["IDPresupuestoEstado"] == 3)
                    {
                        anyreg.Visible = true;
                    }
                    else
                    {
                        anyreg.Visible = false;
                    }
				}
				else
				{
					rgl.Visible = false;
				}

				if (objeto["IDCliente"] is DBNull)
				{
					cif.ReadOnlyDefinitivo = false;
				}
				else
				{
					cif.ObjetoAsociado = "Cliente";

					cif.Leer(objeto);

					cif.ReadOnlyDefinitivo = true;
				}
			}

			base.OnPreRender(e);
		}
      
	}
}