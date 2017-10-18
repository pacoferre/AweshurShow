using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;
using LCC.Negocio;
using LCC.Negocio.Clientes;
using LCC.Negocio.Obras;
using LCC.Negocio.Tablas;
using LCC.Negocio.Bases;
using LCC.Negocio.Tareas;
using PROT.GestionArchivos;

namespace LCC.Negocio.Presupuestos
{
    public class Oportunidad : BasePresupuesto
    {
        /// <summary>
        /// Creación del objeto
        /// </summary>
        public Oportunidad() : base()
        {
            genero = "a";
            nombre = "Oportunidad";
        }

        #region Gestión de registro
        /// <summary>
        /// Establece los valores por defecto para un objeto nuevo.
        /// </summary>
        public override void ValoresPorDefecto()
        {
            base.ValoresPorDefecto();
            this["IDPresupuestoTipoBase"] = 2;
        }

        public override void  ValoresPorDefecto(BaseNegocio origen)
        {
            base.ValoresPorDefecto(origen);

            if (origen is Presupuesto)
            {
                //this["jdshkdsj"] = 222;
            }
        }

		public override void Guardar(bool conPermisos)
		{
			// Cuidado que "ConvertirEnPresupuesto" puede cascar.

			base.Guardar(conPermisos);
		}
        #endregion

        #region Objetos Asociados
        public override BaseNegocio ObjetoAsociado(string Nombre)
        {
            if (Nombre == "Presupuesto")
            {
                if ((int)this["IDPresupuestoTipoBase"] == 2)
                {
                    return null;
                }
                else
                {
                    return this;
                }
            }

            return base.ObjetoAsociado(Nombre);
        }
        #endregion

        #region Filtro
        public override string SQLLista(string NombreLista)
        {
            if (NombreLista == "Favoritos")
            {
                return "SELECT Presupuesto.IDPresupuesto AS ID, DivisionSucursal.Nombre + ' - ' + LTRIM(STR(Presupuesto.Anyo)) + case when Presupuesto.codigo is null then '' else '/' + LTRIM(STR(Presupuesto.Codigo)) end + ' -> ' + Presupuesto.NombreObra AS NomCompleto, '{1}' AS Ord"
                    + " FROM Presupuesto INNER JOIN"
                    + " DivisionSucursal ON Presupuesto.IDDivisionSucursal = DivisionSucursal.IDDivisionSucursal LEFT OUTER JOIN"
                    + " Cliente ON Presupuesto.IDCliente = Cliente.IDCliente"
                    + " WHERE IDPresupuesto IN ({0})";
            }
            return base.SQLLista(NombreLista);
        }

        public override string SQLOrderBy()
        {
            return "Presupuesto.IDPresupuesto DESC";
        }

        public override string SQLWhere(PROT.NegocioGeneral.Filtro filtro)
        {
            string where = base.SQLWhere(filtro);

            Datos.AndWhere(ref where, "(Presupuesto.IDPresupuestoTipoBase = 2 OR (Presupuesto.IDPresupuestoTipoBase = 1 AND Presupuesto.Aceptado = 0))");

            return where;
        }
        #endregion

        #region Permisos
        /// <summary>
        /// Establece los permisos para el objeto.
        /// </summary>
        public override void PermisosGenerar()
        {
            PROT.NegocioGeneral.Usuarios.ClasePermiso.CrearPermiso("MET", "Oportunidad", "ConvertirEnPresupuesto");
            PROT.NegocioGeneral.Usuarios.ClasePermiso.CrearPermiso("NAV", "OPOR", "Ver");

            base.PermisosGenerar();
        }

        public override bool PermisoEliminar
        {
            get
            {
                bool eliminar = base.PermisoEliminar;

                if (eliminar)
                {
                    // Solo se pueden eliminar Oportunidades que no se han convertido en presupuesto.
                    eliminar = ((int)this["IDPresupuestoTipoBase"]) == 2;
                }

                return eliminar;
            }
        }
        #endregion

        #region Metodos Públicos
        public override void Metodo(System.Web.UI.Page pag, string Nombre)
        {
            if (Nombre == "ConvertirEnPresupuesto")
            {
                if (this.Modificado)
                {
                    ErrorMensaje = "Guarde antes los cambios realizados.";
                }
                else
                {
                    // Comprobación feaciente de que sigue siendo una Oportunidad.
                    this.Leer();

                    if ((int)this["IDPresupuestoTipoBase"] == 2)
                    {
                        this["IDPresupuestoTipoBase"] = 1;
                        this["Anyo"] = System.Convert.ToInt16(DateTime.Today.Year);
                        PonerCodigoPresupuesto();

                        this.Guardar();
                    }
                }
            }

            base.Metodo(pag, Nombre);
        }
        #endregion
    }
}
