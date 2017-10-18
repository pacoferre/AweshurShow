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
	public partial class presupuestos_Misiones : PROT.ControlesEspeciales.RaizASCX
	{
		public int Grupo
		{
			get
			{
				object obj = base.ViewState["Grupo"];
				if (obj != null) return (int)obj;
				else return 0;
			}
			set
			{
				base.ViewState["Grupo"] = value;
			}
		}

		public override bool Leer(PROT.NegocioGeneral.BaseNegocio t)
		{
			Establecer();
			Establecer(t);

			return base.Leer(t);
		}

		public override bool Preparar(PROT.NegocioGeneral.BaseNegocio t)
		{
			Establecer();
			Establecer(t);

			return base.Preparar(t);
		}

		public override bool Guardar(PROT.NegocioGeneral.BaseNegocio t)
		{
			if (Grupo == 0)
			{
				Establecer(t);
			}
			else
			{
				Establecer();
			}

			base.Guardar(t);

            if (Visible)
            {
                t.Metodo(Page, "ActualizarPreciosVersionPrincipal");
            }

            return true;
		}

		private void Establecer()
		{
			t.Titulo = PROT.NegocioGeneral.ProveedorListas.TextoDeCombo("PresupuestoMisionGrupo", Grupo);
			g.ColFiltroNombre = Grupo.ToString();
			to.CalcPropiedad = "Total_" + Grupo;
		}

		private void Establecer(PROT.NegocioGeneral.BaseNegocio b)
		{
			int grupoAnterior = Grupo;

			if (b["IDPresupuestoMisionGrupo"] is DBNull)
			{
				Grupo = 1;
			}
			else
			{
				Grupo = (int)b["IDPresupuestoMisionGrupo"];
			}

			if (grupoAnterior != Grupo)
			{
				Establecer();

				base.Preparar(b);
			}
		}
	}
}