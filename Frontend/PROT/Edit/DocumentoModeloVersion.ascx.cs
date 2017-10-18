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

namespace LCC.WebGestion.presupuestos
{
	public partial class presupuestos_DocumentoModeloVersion : PROT.ControlesEspeciales.RaizASCX
	{
		public int IDPresupuestoVersion
		{
			get
			{
				object tl = ViewState["IDPresupuestoVersion"];
				return ((tl == null) ? 0 : (int)tl);
			}
			set
			{
				ViewState["IDPresupuestoVersion"] = value;
				EstablecerObjeto();
			}
		}

		public int IDGenDocModelo
		{
			get
			{
				object tl = ViewState["IDGenDocModelo"];
				return ((tl == null) ? 0 : (int)tl);
			}
			set
			{
				ViewState["IDGenDocModelo"] = value;
				EstablecerObjeto();
			}
		}

		public override Editor Padre
		{
			set
			{
				base.Padre = value;

				try
				{
					EstablecerObjeto();
				}
				catch
				{
				}
			}
		}

		private void EstablecerObjeto()
		{
			ObjetoAsociado = "PresupuestoVersionDocumento_" + IDPresupuestoVersion + "_" + IDGenDocModelo;
		}

		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}