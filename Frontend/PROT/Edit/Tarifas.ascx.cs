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
using LCC.Negocio.Presupuestos;

namespace LCC.WebGestion.presupuestos
{
	public partial class presupuestos_Tarifas : PROT.ControlesEspeciales.RaizASCX
	{
        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            // Tres Casos:
            // - IDPYT no existe en PresupuestoVersiónDetalle.
            // - IDPYT existe en alguna versión aceptada con línea aceptada en IDPYT
            // - El resto.

            // Este código no hace nada de esto, por tanto mejor dejar que se pueda modificar siempre.


            //bool NingunoVisible = true;

            //foreach (DataGridItem dic in ge1.Items)
            //{
            //    string IDPyT = dic.Cells[0].Text;

            //    string sql = "SELECT IDPresupuestoVersion FROM PresupuestoVersionDetalle Where IDPyT = " + IDPyT;

            //    int idpv = PROT.AccesoDatos.Datos.Instancia().DameExpresionInt(sql);

            //    PresupuestoVersion pv = new PresupuestoVersion();
            //    pv.IDActual[0] = idpv;
            //    pv.Leer();

            //    if (!(bool)pv["Aceptado"])
            //    {
            //        LCC.ControlesLCCGestion.bases.BotonNormal bn = ((LCC.ControlesLCCGestion.bases.BotonNormal)dic.Controls[6].Controls[1]);
            //        bn.Visible = false;
            //    }
            //    else
            //    {
            //        NingunoVisible = false;                
            //    }
            //}

            //if (NingunoVisible)
            //{
            //    ((DataGridColumn)ge1.Columns[6]).Visible = (bool)objeto["Aceptado"];
            //}
        }

        protected void ge1_EditCommand(object source, DataGridCommandEventArgs e)
        {
            int IDPyT = Int32.Parse(e.Item.Cells[0].Text);
            LCC.Negocio.Presupuestos.Presupuesto.IDPyTModificar = IDPyT;
            
            ge1.EditItemIndex = -1;

            this.Response.Redirect("~/presupuestos/tarifas/CambiarTarifas.aspx?id=" + IDPyT.ToString(), true);
        }
	}
}
