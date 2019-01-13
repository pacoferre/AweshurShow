using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio.Bases;
using LCC.Negocio.Clientes;

namespace LCC.Negocio.Presupuestos
{
    public class PresupuestoContacto : EntidadContacto
    {
        public PresupuestoContacto()
		{
            fila = new Fila("PresupuestoContacto");
            nombre = "Contacto de Presupuesto";
			sinPermisoLeer = true;
        }

        public bool EsTipoPrincipal
        {
            get
            {
                return (int)this["IDPresupuestoContactoTipo"] == 1;
            }
        }

        public bool EsTipoSolicitante
        {
            get
            {
                return (int)this["IDPresupuestoContactoTipo"] == 3;
            }
        }

        public override void ValoresPorDefecto()
        {
            this["IDPresupuestoContactoTipo"] = 1;

            base.ValoresPorDefecto();
        }

		public override string Propiedad(string NombrePropiedad)
		{
			if (NombrePropiedad == "DonNombreApellidos")
			{
				if (this["IDContacto"] is DBNull)
				{
					return Contacto.MontarContacto(this["IDContactoTrato"], this["Nombre"], this["Apellidos"]);
				}
				else
				{
					ObjetoAsociado("Contacto");

					return Contacto.MontarContacto(cont["IDContactoTrato"], cont["Nombre"], cont["Apellidos"]);
				}
			}
			if (NombrePropiedad == "NombreApellidos")
			{
				if (this["IDContacto"] is DBNull)
				{
					return Contacto.MontarContacto(DBNull.Value, this["Nombre"], this["Apellidos"]);
				}
				else
				{
					ObjetoAsociado("Contacto");

					return Contacto.MontarContacto(DBNull.Value, cont["Nombre"], cont["Apellidos"]);
				}
			}
			if (NombrePropiedad == "Telefono" || NombrePropiedad == "Movil"
				|| NombrePropiedad == "Fax" || NombrePropiedad == "Email")
			{
				if (this["IDContacto"] is DBNull)
				{
					return this[NombrePropiedad].ToString();
				}
				else
				{
					ObjetoAsociado("Contacto");

					return cont[NombrePropiedad].ToString();
				}
			}

			return base.Propiedad(NombrePropiedad);
		}
    }

    public class ColPresupuestoContacto : ColBaseNegocio
    {
        public ColPresupuestoContacto(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoContacto();

            return b;
        }

		public override bool Correcto
		{
			get
			{
				bool correcto = base.Correcto;

				if (correcto && !Padre.Eliminar)
				{
					bool hayPrincipal = false;

					this.Usar();

					foreach (BaseNegocio b in this)
					{
						if (((PresupuestoContacto)b).EsTipoPrincipal)
						{
							hayPrincipal = true;
							break;
						}
					}

					if (!hayPrincipal)
					{
                        PresupuestoContacto pc = PrimerContactoPrincipal;
					}
				}

				return correcto;
			}
		}

        public override void DespuesDePoblar()
        {
            base.DespuesDePoblar();

            // Con esto, en los presupuestos/oportunidades, se crea por defecto el contacto principal.
            if (Padre.Nuevo)
            {
                if (CuantosQuedaranAlGuardar == 0)
                {
                    // No es necesario, ya que por defecto siempre tenemos uno en blanco.
                    CrearEnBlanco();

                    // Creamos el primer contacto que será el principal.
                    AnexarObjetoActivo();

                    // Ponemos uno nuevo listo para crear el segundo contacto.
                    CrearEnBlanco();
                }
            }
        }

        public PresupuestoContacto PrimerContactoPrincipal
        {
            get
            {
                PresupuestoContacto pc = null;

                foreach (BaseNegocio b in this)
                {
                    if (((PresupuestoContacto)b).EsTipoPrincipal)
                    {
                        pc = (PresupuestoContacto)b;
                        break;
                    }
                }
                if (pc == null && this.Count > 0)
                {
                    // Si no hay Contacto Principal pero
                }
                if (pc == null)
                {
                    CrearEnBlanco(); // Valores por defecto, Principal.

                    pc = (PresupuestoContacto) this.ObjetoActivo;

                    AnexarObjetoActivo();
                    CrearEnBlanco();
                }

                return pc;
            }
        }

        public string DonNombreApellidos()
        {
            PresupuestoContacto pc = null;
            string respuesta = "";
            // Nombre completo de la persona de contacto.
            // Primero el principal, si no, el solicitante.

            foreach (BaseNegocio b in this)
            {
                if (((PresupuestoContacto)b).EsTipoPrincipal)
                {
                    pc = (PresupuestoContacto)b;
                    break;
                }
            }
            if (pc == null)
            {
                foreach (BaseNegocio b in this)
                {
                    if (((PresupuestoContacto)b).EsTipoSolicitante)
                    {
                        pc = (PresupuestoContacto)b;
                        break;
                    }
                }
            }

            if (pc != null)
            {
				respuesta = pc.Propiedad("DonNombreApellidos");
            }

            return respuesta;
        }
    }
}
