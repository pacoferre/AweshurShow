using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using PROT.AccesoDatos;
using PROT.NegocioGeneral;

namespace LCC.Negocio.Presupuestos
{
    class PresupuestoMision : PROT.NegocioGeneral.Especializadas.NAMActivo 
    {
        private BasePresupuesto pres = null;

        public PresupuestoMision()
		{
            fila = new Fila("PresupuestoMision");
            nombre = "Misión";
            genero = "a";
			sinPermisoLeer = true;

            campoNTablaExterna = "IDPresupuesto0";
            campoN = "IDPresupuesto";
            campoMTablaExterna = "IDPresupuestoMisionTipo0";
            campoM = "IDPresupuestoMisionTipo";

            opcCampoOtros = new string[2] { "Importe", "Descripcion" };
        }

        public override bool SoloLectura(string campo)
        {
            ObjetoAsociado("Presupuesto");

            if (pres != null)
            {
                if ((bool)pres["Aceptado"] && (campo == "Importe" || campo == "Descripcion"
                    || campo == "activo"))
                {
                    return true;
                }
            }

            if (campo == "activo")
            {
                return false;
            }

            return base.SoloLectura(campo);
        }

        public override bool ExisteCampo(string campo)
        {
            if (campo == "activo")
            {
                return true;
            }

            return base.ExisteCampo(campo);
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

                if (pres == null && Padre.Padre is BasePresupuesto)
                {
                    pres = (BasePresupuesto)Padre.Padre;
                }

				return pres;
			}

			return base.ObjetoAsociado(Nombre);
        }

        public override bool CumpleFiltro(string nombre)
        {
            if (Nombre != "")
            {
                return ((int)this["IDPresupuestoMisionGrupo"]) == Int32.Parse(nombre);
            }
            return base.CumpleFiltro(nombre);
        }

        public string ParaImprimir(string tipo, Decimal PEM)
        {
            // Tipo == "X", "X" si activado.
            // Tipo == "I", Importe y Porcentaje sobre PEM.
            string respuesta = "";

            if (tipo == "I")
            {
                if (!(this["Importe"] is DBNull) && (int)this["Activo"] == 1)
                {
                    respuesta = Util.DarFormatoMonedaConDecimales((Decimal) this["Importe"]);
                    if (PEM == 0)
                    {
                        respuesta += " (" + Util.DarFormatoPorcentaje(0) + ")";
                    }
                    else
                    {
                        respuesta += " (" + Util.DarFormatoPorcentaje((Decimal)this["Importe"] * 100 / PEM) + ")";
                    }
                }
            }
            if (tipo == "X")
            {
                if ((int) this["Activo"] == 1)
                {
                    respuesta = "X";
                }
            }

            return respuesta;
        }
    }

    public class ColPresupuestoMision : ColBaseNegocio
    {
        public ColPresupuestoMision(BaseNegocio Padre, string CampoRelacionPadre, string Sql)
            : base(Padre, CampoRelacionPadre, Sql)
        {
            campoRelacionHijo = "IDPresupuesto";
            siempreNecesitaGuardar = false;
        }

        public override BaseNegocio CrearInstanciaHijo()
        {
            BaseNegocio b;

            b = new PresupuestoMision();

            return b;
        }

        public override void Guardar(bool conPermisos)
		{
			bool eraEliminad = Padre.Eliminar;

			base.Guardar(conPermisos);

			if (!eraEliminad)
			{
			    int IDPresupuestoMisionGrupoPadre = Lib.NoIntNulo(Padre["IDPresupuestoMisionGrupo"]);

			    Datos.Instancia().executeSQL("DELETE FROM PresupuestoMision"
			        + " WHERE IDPresupuesto = " + Padre.IDActual[0].ToString()
					+ " AND IDPresupuestoMisionTipo"
					+ " NOT IN (Select IDPresupuestoMisionTipo"
					+ " FROM PresupuestoMisionTipo"
					+ " WHERE IDPresupuestoMisionGrupo = " + IDPresupuestoMisionGrupoPadre.ToString()
					+ ")");
			}
		}

        public Decimal Total(int grupo)
        {
            Decimal total = 0;

            foreach (BaseNegocio b in this.Filtro(grupo.ToString()))
            {
                if (!(b["Importe"] is DBNull) && (int) b["Activo"] == 1)
                {
                    total += (Decimal)b["Importe"];
                }
            }

            return total;
        }

        public Decimal Total()
        {
			int IDPresupuestoMisionGrupoPadre = Lib.NoIntNulo(Padre["IDPresupuestoMisionGrupo"]);

			return Total(IDPresupuestoMisionGrupoPadre);

			//Decimal total = 0;

			//foreach (BaseNegocio b in this)
			//{
			//    if (!(b["Importe"] is DBNull) && (int)b["Activo"] == 1)
			//    {
			//        total += (Decimal)b["Importe"];
			//    }
			//}

			//return total;
        }

        public string Descripcion(string clave, string tipo, Decimal PEM)
        {
            // Tipo == "X", "X" si activado.
            // Tipo == "I", Importe y Porcentaje sobre PEM.
            string respuesta = "";
            PresupuestoMision pm = null;
            int IDPresupuestoMisionTipo = ProveedorListas.IDDeCombo("ClavesMision", clave);

            if (IDPresupuestoMisionTipo > 0)
            {
                foreach (BaseNegocio b in this)
                {
                    if (Lib.NoIntNulo(b["IDPresupuestoMisionTipo"]) == IDPresupuestoMisionTipo)
                    {
                        pm = (PresupuestoMision)b;
                        break;
                    }
                }

                if (pm != null)
                {
                    respuesta = pm.ParaImprimir(tipo, PEM);
                }
            }

            return respuesta;
        }
    }
}
