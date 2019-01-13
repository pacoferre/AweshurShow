using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
	class PresupuestoUsuario : BaseNegocio
	{
		private BasePresupuesto pres = null;
        private LCC.Negocio.Tablas.UsuarioApp usu = null;
		public PresupuestoUsuario()
		{
			fila = new Fila("PresupuestoUsuario");
			nombre = "Usuario asociado a presupuesto";
			sinPermisos = true;
		}

		public override BaseNegocio ObjetoAsociado(string Nombre)
		{
			if (Nombre == "Presupuesto")
			{
                if (Padre != null && Padre.Padre != null && Padre.Padre is Oportunidad)
                {
                    pres = (BasePresupuesto)RecuperaObjetoAsociado((BaseNegocio)pres, "Oportunidad", "IDPresupuesto");
                }
                else
                {
                    pres = (BasePresupuesto)RecuperaObjetoAsociado((BaseNegocio)pres, "Presupuesto", "IDPresupuesto");
                }

				return pres;
			}

            if (Nombre == "Usuario")
            {
                usu = (LCC.Negocio.Tablas.UsuarioApp)RecuperaObjetoAsociado((BaseNegocio)usu, "Usuario", "IDUsuario");

                return usu;
            }

			return base.ObjetoAsociado(Nombre);
		}

		public override object this[string campo]
		{
			get
			{
				if (campo == "IDDivision")
				{
					return ((BasePresupuesto)ObjetoAsociado("Presupuesto")).IDDivision;
				}
				else
				{
					return base[campo];
				}
			}
			set
			{
				if (campo != "IDDivision")
				{
					base[campo] = value;
				}
			}
		}

		public override bool PermisoEliminar
		{
			get
			{
				bool eliminar = base.PermisoEliminar;

				if (eliminar)
				{
					if (!(this["IDPresupuestoUsuarioTipo"] is DBNull))
					{
						int idPT = (int)this["IDPresupuestoUsuarioTipo"];

						if (idPT == 1 || idPT == 4)
						{
							eliminar = Padre.Padre.Eliminar;
						}
					}
				}

				return eliminar;
			}
		}

		public override string Propiedad(string NombrePropiedad)
		{
			if (NombrePropiedad == "Usuario")
			{
				return ProveedorListas.TextoDeCombo("TodosUsuarios", (int)this["IDUsuario"]);
			}
			if (NombrePropiedad == "UsuarioTipo")
			{
				return ProveedorListas.TextoDeCombo("PresupuestoUsuarioTipo", (int)this["IDPresupuestoUsuarioTipo"]);
			}

			return base.Propiedad(NombrePropiedad);
		}
	}

	class ColPresupuestoUsuario : ColBaseNegocio
	{
		public ColPresupuestoUsuario(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
			: base(Padre, CampoRelacionPadre, Sql)
		{
		}

		public override BaseNegocio CrearInstanciaHijo()
		{
			BaseNegocio b;

			b = new PresupuestoUsuario();

			return b;
		}

		public object LeerIDUsuario(string NombreCampo)
		{
			int IDPresupuestoUsuarioTipo = Int32.Parse(NombreCampo.Split('_')[1]);

			foreach (BaseNegocio b in this)
			{
				if ((int)b["IDPresupuestoUsuarioTipo"] == IDPresupuestoUsuarioTipo)
				{
					if (b.Eliminar)
					{
						return DBNull.Value;
					}
					else
					{
						return b["IDUsuario"];
					}
				}
			}

			return DBNull.Value;
		}

		public void GrabarIDUsuario(string NombreCampo, object IDUsuario)
		{
			bool encontrado = false;
			int IDPresupuestoUsuarioTipo = Int32.Parse(NombreCampo.Split('_')[1]);

			foreach (BaseNegocio b in this)
			{
				if ((int)b["IDPresupuestoUsuarioTipo"] == IDPresupuestoUsuarioTipo)
				{
					encontrado = true;
					ObjetoActivo = b;
				}
			}

			if (IDUsuario is DBNull)
			{
				// Hay que borrarlo o no crearlo.
				if (encontrado)
				{
					if (ObjetoActivo.EsEliminable)
					{
						ObjetoActivo.Eliminar = true;
					}
				}
			}
			else
			{
				// Hay que crearlo o modificarlo.
				if (!encontrado)
				{
					// Hay que crearlo.
					CrearEnBlanco();

					ObjetoActivo["IDUsuario"] = IDUsuario;
					ObjetoActivo["IDPresupuestoUsuarioTipo"] = IDPresupuestoUsuarioTipo;

					AnexarObjetoActivo();
				}
				else
				{
					if ((int)ObjetoActivo["IDUsuario"] != (int)IDUsuario)
					{
						ObjetoActivo["IDUsuario"] = IDUsuario;
						if (ObjetoActivo.Eliminar)
						{
							ObjetoActivo.Eliminar = false;
						}
					}
				}
			}
		}

		public override void AnexarObjetoActivo()
		{
			bool encontrado = false;

			foreach (BaseNegocio b in this)
			{
				if ((int)b["IDPresupuestoUsuarioTipo"] == (int)ObjetoActivo["IDPresupuestoUsuarioTipo"])
				{
					encontrado = true;

                    if ((int) b["IDUsuario"] == (int) ObjetoActivo["IDUsuario"])
                    {
                        b["IDUsuario"] = ObjetoActivo["IDUsuario"];
                    }
                    break;
				}
			}

            if (!encontrado)
            {
                base.AnexarObjetoActivo();
            }
		}
	}
}
