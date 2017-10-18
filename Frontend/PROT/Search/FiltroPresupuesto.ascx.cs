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
using LCC.ControlesLCCGestion.filtros;

namespace LCC.WebGestion.presupuestos
{
	public partial class presupuestos_FiltroPresupuesto : RaizFiltroASCX
	{
		public override PROT.ControlesEspeciales.PanelBuscador PanelBuscador
		{
			get
			{
				return bus;
			}
		}

		public override PROT.ControlesEspeciales.ControlFiltro ControlFiltro
		{
			get
			{
				return c;
			}
		}

		protected void dv_SelectedIndexChanged(object sender, EventArgs e)
		{
			suc.Param = Int32.Parse(dv.SelectedValue);
			suc.Preparar(bus.FiltroActual, bus.ObjetoNegocio);
			tip.Param = Int32.Parse(dv.SelectedValue);
			tip.Preparar(bus.FiltroActual, bus.ObjetoNegocio);
			mat.Param = Int32.Parse(dv.SelectedValue);
			mat.Preparar(bus.FiltroActual, bus.ObjetoNegocio);
			us.Param = Int32.Parse(dv.SelectedValue);
			us.Preparar(bus.FiltroActual, bus.ObjetoNegocio);

			o1.ServicioParam = dv.SelectedValue;
			tar.ServicioParam = dv.SelectedValue;

			ta1.ServicioParam = dv.SelectedValue;
			ta2.ServicioParam = dv.SelectedValue;

			des.ServicioParam = dv.SelectedValue;

			obn.ServicioParam = dv.SelectedValue;
		}
	}
}