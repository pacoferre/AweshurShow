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
	public partial class presupuestos_VisorPresupuesto : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected override void OnPreRender(EventArgs e)
		{
			//1	Estándar
			//2	Oferta%
			//3	Precios Unitarios
			t8.Oculto = !((bool)objeto.ObjetoAsociado("Division")["_UsaHojaDatos"]);
			if (objeto["IDPresupuestoClase"] != DBNull.Value)
			{
				t6.Oculto = !((int)objeto["IDPresupuestoClase"] == 2);
			}
			// Los presupuestos nuevos no tienen ni Comunicaciones, ni Editor de Tarifas.
            ta.Oculto = objeto.Nuevo;
            tet.Oculto = objeto.Nuevo;

			base.OnPreRender(e);
		}
	}
}