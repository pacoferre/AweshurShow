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

namespace LCC.WebGestion.presupuestos.tarifas
{
	public partial class presupuestos_tarifas_EditorTarifas : PROT.ControlesEspeciales.RaizASCX
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            ge1.DataBinding += new EventHandler(ge1_DataBinding);
		}

        void ge1_DataBinding(object sender, EventArgs e)
        {
            if (this.objeto.Coleccion("ColPresupuestoVersion").Count > 40)
            {
                ge1.HeightScroll = 605;
            }
        }

        public override bool Leer(PROT.NegocioGeneral.BaseNegocio t)
        {
            PROT.NegocioGeneral.ColBaseNegocio col = t.Coleccion("ColPresupuestoVersion");

            if (col.ObjetoActivoEsAnexable())
            {
                col.ObjetoActivo = col[col.Count - 1];
            }

            return base.Leer(t);
        }
	}
}