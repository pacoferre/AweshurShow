using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
	class PresupuestoUsuarioTipo : BaseNegocio
	{
		private static string sqlLista1 = "";

		public PresupuestoUsuarioTipo()
		{
			fila = new Fila("PresupuestoUsuarioTipo");
			nombre = "Tipo de usuario en presupuesto";
			sinPermisos = true;
		}

		public override string SQLLista(string NombreLista)
		{
			if (NombreLista == "PresupuestoUsuarioTipo_SoloLectura")
			{
				if (sqlLista1 == "")
				{
					sqlLista1 = "SELECT IDPresupuestoUsuarioTipo AS ID, Nombre AS NomCompleto"
						+ " FROM PresupuestoUsuarioTipo"
						+ " WHERE (SoloLectura = 0)"
						+ " Order By Nombre";
				}

				return sqlLista1;
			}

			return base.SQLLista(NombreLista);
		}
	}
}
