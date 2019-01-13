using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
	public class PresupuestoPrecioCompetencia : BaseNegocio
	{
		public PresupuestoPrecioCompetencia()
		{
			fila = new Fila("PresupuestoPrecioCompetencia");
			nombre = "Precio de competencia";
			sinPermisoLeer = true;
		}

		public override object this[string campo]
		{
			get
			{
				if (campo == "Nombre")
				{
					if (base["IDPresupuestoEmpresaCompetencia"] is DBNull)
					{
						return String.Empty;
					}
					else
					{
						return ProveedorListas.TextoDeCombo("PresupuestoEmpresaCompetencia", (int)base["IDPresupuestoEmpresaCompetencia"]);
					}
				}
				else
				{
					return base[campo];
				}
			}
			set
			{
				if (campo != "Nombre")
				{
					base[campo] = value;
				}
			}
		}
	}

	public class ColPresupuestoPrecioCompetencia : ColBaseNegocio
	{
		public ColPresupuestoPrecioCompetencia(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
			: base(Padre, CampoRelacionPadre, Sql)
		{
		}

		public override BaseNegocio CrearInstanciaHijo()
		{
			BaseNegocio b;

			b = new PresupuestoPrecioCompetencia();

			return b;
		}
	}
}
