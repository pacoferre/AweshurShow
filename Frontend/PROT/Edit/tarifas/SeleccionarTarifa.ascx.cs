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
using PROT.ControlesEspeciales;
using PROT.NegocioGeneral;
using LCC.ControlesLCCGestion.filtros;

namespace LCC.WebGestion.presupuestos.tarifas
{
	public partial class presupuestos_tarifas_SeleccionarTarifa : RaizFiltroASCX
	{
		private string firmaInicial = "";

		protected override void OnLoad(EventArgs e)
		{
			f.ControlFiltro.NuevoVisible = false;
            
            GestionOnLoad(f, lst, "Tarifa");

			firmaInicial = FirmaRestriccion();

			base.OnLoad(e);
		}

		public override Editor Padre
		{
			set
			{
				base.Padre = value;

				m.Padre = value;
			}
		}

		private string FirmaRestriccion()
		{
			string firma = "";
			Filtro fil = f.PanelBuscador.FiltroActual;

			if (objeto != null)
			{
				((LCC.Negocio.Presupuestos.BasePresupuesto)objeto.ObjetoAsociado("Presupuesto")).EstablecerRestriccionBusquedaTarifas(fil);
			}
			firma = fil.LeerRestriccion("IDDivision") + "_" + fil.LeerRestriccion("Tarifa_IDTitulo");
			fil.RestriccionActivada = true;

			return firma;
		}

		protected override void OnPreRender(EventArgs e)
		{
			string firmaActual;

			lst.Columns[4].Visible = !((bool)objeto.ObjetoAsociado("Division")["_SinENACEnTarifas"]);

            cr.Attributes.Add("onclick", "window.close();");

			base.OnPreRender(e);

			firmaActual = FirmaRestriccion();

			if (firmaInicial != firmaActual)
			{
				Filtro fil = f.PanelBuscador.FiltroActual;

				fil["Tarifa_IDTitulo"] = "";
				f.PanelBuscador.RefrescarFiltro();
			}
		}
	}
}