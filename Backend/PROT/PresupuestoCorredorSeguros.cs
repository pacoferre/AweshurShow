using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoCorredorSeguros : BaseNegocio 
    {
        public PresupuestoCorredorSeguros()
		{
            fila = new Fila("PresupuestoCorredorSeguros");
            nombre = "Corredor de Seguros";
			sinPermisoLeer = true;

            // Por defecto true. Significa que el where en blanco no devuelve registros.
            // En este caso sí que queremos todos.
            filtroIgnoraWhereEnBlanco = false;

            // Para que salgan todos los registros.
            filtroTopSiempreTodos = true;
        }
    }
}
