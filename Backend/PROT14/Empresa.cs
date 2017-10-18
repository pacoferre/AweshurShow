//GCB="true"
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PROT14.DataAccess;
using PROT14.Business;
using PROT14.Business.FieldDefinition;
using CRM.Business.Contactos;
using CRM.Business.Mantenimientos;
using CRM.Business.Documentos;

namespace CRM.Business.Empresas
{
    public class Empresa : BaseContenedorDocumentos
    {
        public static string NombreContabilidad = "Navision";
        public static string DiasCaducidadMantenimiento = "60";
        public static int iDiasCaducidadMantenimiento = 60;

        public Empresa()
		{
            fila = new Row("Empresa");
            nombre = "Empresa";
			sinPermisos = true;

            filtroIgnoraWhereEnBlanco = false;
            logActions = true;
			
            objetosSub.Add("ColEmpresaProveedor",
                        new ColEmpresaProveedor(this, "IDEmpresa", @"SELECT EmpresaProveedor.IDEmpresaCliente, EmpresaProveedor.IDEmpresaProveedor, Empresa.Razon
FROM EmpresaProveedor INNER JOIN
Empresa ON EmpresaProveedor.IDEmpresaProveedor = Empresa.IDEmpresa
WHERE (EmpresaProveedor.IDEmpresaCliente = {0})
ORDER BY Empresa.Razon"));

            objetosSub.Add("ColEmpresaDelegacion",
                        new ColEmpresaDelegacion(this, "IDEmpresa", "Select * From EmpresaDelegacion Where IDEmpresa = {0} Order By Principal DESC, Delegacion"));

            objetosSub.Add("ColDocumento",
                            new ColDocumento(this, "IDEmpresa", "SELECT *" +
                            " FROM Documento" +
                            " WHERE IDEmpresa = {0} AND IDContacto IS NULL AND IDPrevision IS NULL AND IDIncidencia IS NULL AND IDEmpresaProducto IS NULL AND IDMantenimientoPeriodo IS NULL ORDER BY IDDocumento DESC"));

            if (!sqlGetHints.ContainsKey("Empresa_Hints_Dist"))
            {
                lock (sqlGetHints)
                {
                    if (!sqlGetHints.ContainsKey("Empresa_Hints_Dist"))
                    {
                        sqlGetHints.Add("Empresa_Hints_Dist", @"SELECT TOP ([Top]) IDEmpresa AS ID, Razon AS Description
FROM Empresa
WHERE IDEmpresaTipo in (Select IDEmpresaTipo From EmpresaTipo Where EsDistrinuidor = 1) AND (Razon LIKE N'%[Search]%')
ORDER BY Description");
                        sqlGetHints.Add("Empresa_Hints_All", @"SELECT TOP ([Top]) IDEmpresa AS ID, Razon AS Description
FROM Empresa
WHERE (Razon LIKE N'%[Search]%')
ORDER BY Description");
                        sqlGetHints.Add("Empresa_Hints_Cli", @"SELECT TOP ([Top]) IDEmpresa AS ID, Razon AS Description
FROM Empresa
WHERE IDEmpresaTipo in (Select IDEmpresaTipo From EmpresaTipo Where EsDistrinuidor = 0) AND (Razon LIKE N'%[Search]%')
ORDER BY Description");
                    }
                }
            }
        }

        public override bool PermisoEliminar
        {
            get
            {
                return UsuarioActual.Permiso("BD", "Empresa", "DEL");
            }
        }

        public override string DescripcionNormal
        {
            get
            {
                return this[2].ToString();
            }
        }

        public override bool Correcto
        {
            get
            {
                bool correcto = base.Correcto;

                if (!Eliminar)
                {
                    if (correcto)
                    {
                        if (Coleccion("ColEmpresaDelegacion").CuantosQuedaranAlGuardar == 0)
                        {
                            ErrorMensaje = "La empresa debe tener al menos una delegación.";
                        }
                    }

                    if (correcto)
                    {
                        if (Lib.NoIntNulo(this["IDEmpresaSectorPrincipal"]) == 1)
                        {
                            correcto = false;
                            ErrorMensaje = "El sector principal debe estar establecido.";
                        }
                    }

                    if (correcto)
                    {
                        correcto = ComprobarUnicidad(this, "CIF");
                    }
                    if (correcto)
                    {
                        correcto = ComprobarUnicidad(this, "CodigoContabilidad");
                    }
                }

                return correcto;
            }
        }

        public static bool ComprobarUnicidad(BusinessBase obj, string campo)
        {
            string buscar = Lib.NoStringNulo(obj[campo]).Trim().Replace("'", "''");

            if (buscar.Length > 3 && (obj.Modificado || obj.Nuevo))
            {
                string sql = "Select IDEmpresa From Empresa Where " + campo + " = '" + buscar + "'";
                string sqlED = "Select IDEmpresaDelegacion From EmpresaDelegacion Where " + campo + " = '" + buscar + "'";

                if (!obj.Nuevo)
                {
                    string idEmpresa = (obj is Empresa ? obj.IDActual[0].ToString() : Lib.NoStringNulo(obj["IDEmpresa"]));

                    sql += " AND IDEmpresa != " + idEmpresa;
                    sqlED += " AND IDEmpresa != " + idEmpresa;
                }
                if (Data.Instancia().DameExpresionInt(sql) != 0)
                {
                    obj.ErrorMensaje = "Existe otra empresa con el mismo " + (campo == "CIF" ? "CIF" : "Código de " + Empresa.NombreContabilidad) + " '" + Lib.NoStringNulo(obj[campo]).Trim() + "'.";
                    return false;
                }
                if (Data.Instancia().DameExpresionInt(sqlED) != 0)
                {
                    obj.ErrorMensaje = "Existe otra delegación con el mismo " + (campo == "CIF" ? "CIF" : "Código de " + Empresa.NombreContabilidad) + " '" + Lib.NoStringNulo(obj[campo]).Trim() + "'.";
                    return false;
                }
            }

            return true;
        }

        public static string SQLDelegaciones = @"SELECT IDEmpresaDelegacion, Delegacion
FROM EmpresaDelegacion
WHERE (IDEmpresa = {0})
ORDER BY Delegacion";

        public override void Metodo(System.Web.UI.Page pag, string NombreMetodo, int Param)
        {
            if (NombreMetodo == "AddEmpresaProveedor")
            {
                if (Param == (int)IDActual[0])
                {
                    ErrorMensaje = "Una empresa no puede ser proveedora de si misma.";
                }
                else
                {
                    ColBusinessBase col = Coleccion("ColEmpresaProveedor");

                    if (col[IDActual[0].ToString() + "_" + Param.ToString()] == null)
                    {
                        col.CrearEnBlanco();

                        col.ObjetoActivo["IDEmpresaProveedor"] = Param;

                        col.AnexarObjetoActivo();
                    }
                }
            }

            base.Metodo(pag, NombreMetodo, Param);
        }

        private static List<int> idDistrinuidores = null;
        public bool AsociaOtroClientes
        {
            get
            {
                if (idDistrinuidores == null)
                {
                    idDistrinuidores = new List<int>(2);

                    foreach(DataRow dr in DatosInstancia.getDataTable("SELECT IDEmpresaTipo FROM EmpresaTipo WHERE (EsDistrinuidor = 1)").Rows)
                    {
                        idDistrinuidores.Add((int)dr[0]);
                    }
                }

                return idDistrinuidores.Contains((int)this["IDEmpresaTipo"]);
            }
        }

        public override string Propiedad(string NombrePropiedad)
        {
            if (NombrePropiedad == "Ejemplo")
            {
                return "";
            }
			if (NombrePropiedad == "Pais")
            {
                return CRM.Business.General.Pais.NombrePais(Lib.NoIntNulo(this["IDPais"]));
            }
			if (NombrePropiedad == "EmpresaRanking")
            {
                return CRM.Business.Empresas.EmpresaRanking.NombreEmpresaRanking(Lib.NoIntNulo(this["IDEmpresaRanking"]));
            }
            if (NombrePropiedad == "PrevisionesVivas")
            {
                return Empresa.SQLCuentaPrevisiones(Lib.NoIntNulo(this["IDEmpresa"]));
            }
            if (NombrePropiedad == "IncidenciasVivas")
            {
                return Empresa.SQLCuentaIncidencias(Lib.NoIntNulo(this["IDEmpresa"]));
            }
            if (NombrePropiedad == "MantCaduc")
            {
                if (Nuevo)
                {
                    return "";
                }
                else
                {
                    DataView dv = Vista("Productos");
                    int pcuenta = 0;
                    string cuenta = "";
                    string nombreProd = "";

                    foreach (DataRowView drv in dv)
                    {
                        if (drv["Oculto"].ToString() == "1" && drv["Nombre"].ToString() != nombreProd)
                        {
                            nombreProd = drv["Nombre"].ToString();
                            pcuenta++;
                        }
                    }

                    if (pcuenta == 1)
                    {
                        cuenta = "Un producto caducado";
                    }
                    if (pcuenta > 1)
                    {
                        cuenta = pcuenta.ToString() + " productos caducados";
                    }

                    return cuenta;
                }
            }

            return base.Propiedad(NombrePropiedad);
        }

        public override void ValoresPorDefecto()
        {
            base.ValoresPorDefecto();

            this["EsExtranjero"] = false;

            ColEmpresaDelegacion col = (ColEmpresaDelegacion) this.Coleccion("ColEmpresaDelegacion");

            if (col.Count == 0)
            {
                col.CrearEnBlanco();

                col.AnexarObjetoActivo();
            }

            this["IDEmpresaTipo"] = 1;
            this["IDEmpresaSectorPrincipal"] = 1;
            this["IDEmpresaSectorSecundario"] = 1;
        }

        public override void ValoresPorDefecto(BusinessBase origen)
        {
            if (origen == null)
            {
                return;
            }
            if (origen is Empresa)
            {
                this["Razon"] = origen["Razon"];
            }
            if (this["Razon"] is DBNull && origen.ObjetoAsociado("Empresa") != null)
            {
                this["Razon"] = origen.ObjetoAsociado("Empresa")["Razon"];
            }
            base.ValoresPorDefecto(origen);
        }

        private static string sqlSelect = "";
        public override string SQLSelect()
        {
            if (sqlSelect == "")
            {
                sqlSelect = @"SELECT Empresa.IDEmpresa, Empresa.Razon, EmpresaTipo.Nombre, EmpresaRanking.Nombre AS Rank, EmpresaSector.Nombre AS Sector, CASE WHEN EXISTS
(SELECT TOP (1) Prevision.IDPrevision
FROM Prevision INNER JOIN
PrevisionAnotacionTipo ON Prevision.IDPrevisionAnotacionTipo = PrevisionAnotacionTipo.IDPrevisionAnotacionTipo INNER JOIN
Contacto ON Prevision.IDContacto = Contacto.IDContacto
WHERE (Contacto.IDEmpresa = Empresa.IDEmpresa) AND (PrevisionAnotacionTipo.OcultaPrevision = 0)) THEN 1 ELSE 0 END AS Prv, CASE WHEN EXISTS
(SELECT TOP (1) Incidencia.IDIncidencia
FROM Incidencia INNER JOIN
IncidenciaDetalleTipo ON Incidencia.IDIncidenciaDetalleTipo = IncidenciaDetalleTipo.IDIncidenciaDetalleTipo INNER JOIN
Contacto CI ON Incidencia.IDContacto = CI.IDContacto
WHERE (CI.IDEmpresa = Empresa.IDEmpresa) AND (IncidenciaDetalleTipo.OcultaIncidencia = 0)) THEN 1 ELSE 0 END AS Inc
FROM Empresa INNER JOIN
EmpresaTipo ON Empresa.IDEmpresaTipo = EmpresaTipo.IDEmpresaTipo INNER JOIN
EmpresaRanking ON Empresa.IDEmpresaRanking = EmpresaRanking.IDEmpresaRanking INNER JOIN
EmpresaSector ON Empresa.IDEmpresaSectorPrincipal = EmpresaSector.IDEmpresaSector";
            }

            return sqlSelect;
        }

        public override Dictionary<string, PROT14.Business.GridView.GridColumn> DefinirGridColumns()
        {
            Dictionary<string, PROT14.Business.GridView.GridColumn> cols = base.DefinirGridColumns();

            cols["Nombre"].Oculta = true;
            cols["Rank"].Oculta = true;
            cols["Sector"].Oculta = true;
            cols["Prv"].Oculta = true;
            cols["Inc"].Oculta = true;

            return cols;
        }

        public override DataTable GetHints(string Search, string Type, int items)
        {
            if (Type == "Provincias")
            {
                string sql = "Select IDProvincia, UPPER(Nombre) From Provincia Where Nombre Like '%" + Search.Replace("'", "''") + "%' ORDER BY Nombre";

                return DatosInstancia.getDataTableCache(sql, 0, 2);

            }
            return base.GetHints(Search, Type, items);
        }

        public override string SQLVista(string NombreVista)
        {
            if (NombreVista == "Contactos")
            {
                return @"SELECT Contacto.IDContacto, Contacto.Nombre + CASE WHEN Contacto.Apellido1 IS NULL OR
Contacto.Apellido1 = '' THEN '' ELSE ' ' + Contacto.Apellido1 END + CASE WHEN Contacto.Apellido2 IS NULL OR
Contacto.Apellido2 = '' THEN '' ELSE ' ' + Contacto.Apellido2 END AS Contacto, Contacto.FechaUltimoContacto As UltCont, EmpresaDelegacion.Delegacion, ltrim(rtrim(ISNULL(Contacto.Telefono, '') + ' ' + ISNULL(Contacto.Movil, ''))) As Telefs,
Contacto.Email, UserApp.ShortName, CASE WHEN EXISTS
(SELECT TOP (1) Prevision.IDPrevision
FROM Prevision INNER JOIN
PrevisionAnotacionTipo ON Prevision.IDPrevisionAnotacionTipo = PrevisionAnotacionTipo.IDPrevisionAnotacionTipo
WHERE (Prevision.IDContacto = Contacto.idcontacto) AND (PrevisionAnotacionTipo.OcultaPrevision = 0)) THEN 1 ELSE 0 END AS Prv, CASE WHEN EXISTS
(SELECT TOP (1) Incidencia.IDIncidencia
FROM Incidencia INNER JOIN
IncidenciaDetalleTipo ON Incidencia.IDIncidenciaDetalleTipo = IncidenciaDetalleTipo.IDIncidenciaDetalleTipo
WHERE (Incidencia.IDContacto = Contacto.idcontacto) AND (IncidenciaDetalleTipo.OcultaIncidencia = 0)) THEN 1 ELSE 0 END AS Inc
FROM Contacto INNER JOIN
EmpresaDelegacion ON Contacto.IDEmpresaDelegacion = EmpresaDelegacion.IDEmpresaDelegacion LEFT OUTER JOIN
UserApp ON Contacto.IDUserApp = UserApp.IDUser
WHERE (Contacto.IDempresa = {0})
ORDER BY EmpresaDelegacion.Principal DESC, EmpresaDelegacion.Delegacion, Contacto.Nombre, Contacto.Apellido1, Contacto.Apellido2".Replace("{0}", IDActual[0].ToString());
            }
            else if (NombreVista == "Productos")
            {
                return @"SELECT IDEmpresaProducto, Delegacion, Nombre, Cuenta, MaxFechaGarantia, Compite, CASE WHEN MaxFechaGarantia > GETDATE() - " + DiasCaducidadMantenimiento + @" THEN 0 ELSE 1 END As Oculto
FROM (SELECT EmpresaProducto.IDEmpresaProducto, EmpresaDelegacion.Delegacion, Producto.Nombre, COUNT(Mantenimiento.IDMantenimiento) AS Cuenta, MAX(MantenimientoPeriodo.FechaFinGarantia) 
AS MaxFechaGarantia, EmpresaProducto.Compite
FROM Producto INNER JOIN
EmpresaProducto ON Producto.IDProducto = EmpresaProducto.IDProducto INNER JOIN
EmpresaDelegacion INNER JOIN
Mantenimiento ON EmpresaDelegacion.IDEmpresaDelegacion = Mantenimiento.IDEmpresaDelegacion ON EmpresaProducto.IDEmpresaProducto = Mantenimiento.IDEmpresaProducto INNER JOIN
MantenimientoPeriodo ON MantenimientoPeriodo.IDMantenimiento = Mantenimiento.IDMantenimiento AND MantenimientoPeriodo.Actual = 1
WHERE (EmpresaProducto.IDEmpresa = " + IDActual[0].ToString() + @")
GROUP BY EmpresaProducto.IDEmpresaProducto, EmpresaDelegacion.Delegacion, Producto.Nombre, EmpresaProducto.Compite) AS D1
ORDER BY CASE WHEN MaxFechaGarantia > GETDATE() - " + DiasCaducidadMantenimiento + @" THEN 0 ELSE 1 END, Nombre, Delegacion";
//                return @"SELECT EmpresaProducto.IDEmpresaProducto, EmpresaDelegacion.Delegacion, Producto.Nombre, COUNT(Mantenimiento.IDMantenimiento) AS Cuenta, MAX(Mantenimiento.FechaGarantia) 
//AS MaxFechaGarantia, EmpresaProducto.Compite
//FROM Producto INNER JOIN
//EmpresaProducto ON Producto.IDProducto = EmpresaProducto.IDProducto LEFT OUTER JOIN
//EmpresaDelegacion INNER JOIN
//Mantenimiento ON EmpresaDelegacion.IDEmpresaDelegacion = Mantenimiento.IDEmpresaDelegacion ON EmpresaProducto.IDEmpresaProducto = Mantenimiento.IDEmpresaProducto
//WHERE (EmpresaProducto.IDEmpresa = {0})
//GROUP BY EmpresaProducto.IDEmpresaProducto, EmpresaDelegacion.Delegacion, Producto.Nombre, EmpresaProducto.Compite
//ORDER BY Producto.Nombre, EmpresaDelegacion.Delegacion".Replace("{0}", IDActual[0].ToString());
            }

            if (NombreVista.StartsWith("DetalleProductos"))
            {
                int idEP = 0;

                if (NombreVista.Contains("_"))
                {
                    idEP = Lib.NoIntNulo(NombreVista.Split('_')[1]);
                }

                return @"SELECT Mantenimiento.IDMantenimiento, " + Mantenimiento.SQLVersion() + @" As V, MantenimientoPeriodo.Version AS VersionOrder, EmpresaDelegacion.Delegacion, MantenimientoPeriodo.Descripcion, MantenimientoPeriodo.NumLicencias AS Us, 
MantenimientoPeriodo.FechaFinGarantia AS Garantia, Mantenimiento.Activo, MantenimientoPeriodo.NumFactura AS UltimaFactura,
CASE WHEN MantenimientoPeriodo.FechaFinGarantia > GETDATE() - " + DiasCaducidadMantenimiento + @" THEN 0 ELSE 1 END As Caducado, EmpresaProducto.IDEmpresaProducto
FROM EmpresaProducto INNER JOIN
EmpresaDelegacion INNER JOIN
Mantenimiento ON EmpresaDelegacion.IDEmpresaDelegacion = Mantenimiento.IDEmpresaDelegacion ON EmpresaProducto.IDEmpresaProducto = Mantenimiento.IDEmpresaProducto INNER JOIN
MantenimientoPeriodo ON Mantenimiento.IDMantenimiento = MantenimientoPeriodo.IDMantenimiento
WHERE (MantenimientoPeriodo.Actual = 1) AND (EmpresaProducto.IDEmpresaProducto = {idEP})
AND (EmpresaProducto.IDEmpresa = {0})".Replace("{0}", IDActual[0].ToString()).Replace("{idEP}", idEP.ToString());
            }
            else if (NombreVista.StartsWith("Previsiones"))
            {
                return @"SELECT Prevision.IDPrevision, Prevision.UltimaFecha, EmpresaDelegacion.Delegacion, '' As Titulo, Producto.Nombre AS Producto, Contacto.Nombre + CASE WHEN Contacto.Apellido1 IS NULL OR
Contacto.Apellido1 = '' THEN '' ELSE ' ' + Contacto.Apellido1 END + CASE WHEN Contacto.Apellido2 IS NULL OR
Contacto.Apellido2 = '' THEN '' ELSE ' ' + Contacto.Apellido2 END AS Contacto, 
PrevisionTipo.Nombre AS Tipo, Prevision.Licencias, Prevision.Importe, PrevisionAnotacionTipo.Nombre AS Estado, (Prevision.Importe * PrevisionAnotacionTipo.Porcentaje) / 100 As Ponderado,
Prevision.FechaCierre As Cierre, UserApp.ShortName, Prevision.IDContacto, 0 As Actual, PrevisionAnotacionTipo.OcultaPrevision,
case when PrevisionAnotacionTipo.OcultaPrevision = 1 AND PrevisionAnotacionTipo.Ganado = 1 then 1 else 0 end As Ganado,
case when PrevisionAnotacionTipo.OcultaPrevision = 1 AND PrevisionAnotacionTipo.Ganado = 0 then 1 else 0 end As Perdido
FROM Prevision INNER JOIN
Contacto ON Prevision.IDContacto = Contacto.IDContacto INNER JOIN
UserApp ON Prevision.IDUser = UserApp.IDUser INNER JOIN
Producto ON Prevision.IDProducto = Producto.IDProducto INNER JOIN
PrevisionTipo ON Prevision.IDPrevisionTipo = PrevisionTipo.IDPrevisionTipo INNER JOIN
PrevisionAnotacionTipo ON Prevision.IDPrevisionAnotacionTipo = PrevisionAnotacionTipo.IDPrevisionAnotacionTipo LEFT OUTER JOIN
EmpresaDelegacion ON Contacto.IDEmpresaDelegacion = EmpresaDelegacion.IDEmpresaDelegacion
WHERE (Contacto.IDEmpresa = {0} OR Prevision.IDEmpresaCliente = {0})
ORDER BY PrevisionAnotacionTipo.OcultaPrevision, EmpresaDelegacion.Delegacion, Prevision.IDPrevision DESC".Replace("{0}", IDActual[0].ToString());
                //  AND PrevisionAnotacionTipo.OcultaPrevision = 0
            }
            else if (NombreVista == "Incidencias")
            {
                return SQLIncidencias((int)IDActual[0]);
            }
            else if (NombreVista == "Alertas")
            {
                return SQLAlertas((int)IDActual[0]);
            }

            return base.SQLVista(NombreVista);
        }

        public static string SQLCuentaPrevisiones(int IDEmpresa, string AndWhere = "")
        {
            return Data.Instancia().DameExpresionIntCache(@"SELECT COUNT(Prevision.IDPrevision)
FROM Prevision INNER JOIN
PrevisionAnotacionTipo ON Prevision.IDPrevisionAnotacionTipo = PrevisionAnotacionTipo.IDPrevisionAnotacionTipo INNER JOIN
Contacto ON Prevision.IDContacto = Contacto.IDContacto
WHERE (PrevisionAnotacionTipo.OcultaPrevision = 0) AND (Contacto.IDEmpresa = " + IDEmpresa.ToString() + ")" + AndWhere, 0, 1).ToString();
        }

        public static string SQLCuentaIncidencias(int IDEmpresa, string AndWhere = "")
        {
            return Data.Instancia().DameExpresionIntCache(@"SELECT COUNT(Incidencia.IDIncidencia) AS Expr1
FROM Incidencia INNER JOIN
IncidenciaDetalleTipo ON Incidencia.IDIncidenciaDetalleTipo = IncidenciaDetalleTipo.IDIncidenciaDetalleTipo INNER JOIN
Contacto ON Incidencia.IDContacto = Contacto.IDContacto
WHERE (IncidenciaDetalleTipo.OcultaIncidencia = 0) AND (Contacto.IDEmpresa = " + IDEmpresa.ToString() + ")" + AndWhere, 0, 1).ToString();
        }

        public static string SQLIncidencias(int IDEmpresa, string AndWhere = "")
        {
            return @"SELECT Incidencia.IDIncidencia, Incidencia.UltimaFecha, EmpresaDelegacion.Delegacion, Incidencia.Descripcion, Producto.Nombre AS Producto, Contacto.Nombre + CASE WHEN Contacto.Apellido1 IS NULL OR
Contacto.Apellido1 = '' THEN '' ELSE ' ' + Contacto.Apellido1 END + CASE WHEN Contacto.Apellido2 IS NULL OR
Contacto.Apellido2 = '' THEN '' ELSE ' ' + Contacto.Apellido2 END AS Contacto, IncidenciaTipo.Nombre AS Tipo, IncidenciaDetalleTipo.Nombre AS Estado, 
UserApp.ShortName, Incidencia.IDContacto, IncidenciaDetalleTipo.OcultaIncidencia
FROM Incidencia INNER JOIN
Contacto ON Incidencia.IDContacto = Contacto.IDContacto INNER JOIN
UserApp ON Incidencia.IDUser = UserApp.IDUser INNER JOIN
Producto ON Incidencia.IDProducto = Producto.IDProducto INNER JOIN
IncidenciaTipo ON Incidencia.IDIncidenciaTipo = IncidenciaTipo.IDIncidenciaTipo INNER JOIN
IncidenciaDetalleTipo ON Incidencia.IDIncidenciaDetalleTipo = IncidenciaDetalleTipo.IDIncidenciaDetalleTipo LEFT OUTER JOIN
EmpresaDelegacion ON Contacto.IDEmpresaDelegacion = EmpresaDelegacion.IDEmpresaDelegacion
WHERE (Contacto.IDEmpresa = {0})".Replace("{0}", IDEmpresa.ToString()) + AndWhere + @"
ORDER BY IncidenciaDetalleTipo.OcultaIncidencia, EmpresaDelegacion.Delegacion, Incidencia.UltimaFecha DESC";
            //AND IncidenciaDetalleTipo.OcultaIncidencia = 0
        }

        public static string SQLAlertas(int IDEmpresa, string AndWhere = "")
        {
            return @"SELECT Alerta.IDAlerta, Alerta.FechaAlerta As Fecha, UserApp.ShortName, Contacto.Nombre + CASE WHEN Contacto.Apellido1 IS NULL OR
Contacto.Apellido1 = '' THEN '' ELSE ' ' + Contacto.Apellido1 END + CASE WHEN Contacto.Apellido2 IS NULL OR
Contacto.Apellido2 = '' THEN '' ELSE ' ' + Contacto.Apellido2 END AS Contacto, CASE WHEN Alerta.IDPrevision IS NOT NULL 
THEN 'Prev: ' + Producto.Nombre WHEN Alerta.IDIncidencia IS NOT NULL THEN 'Inc: ' + Producto_1.Nombre ELSE 'N/A' END AS Producto, CASE WHEN Alerta.IDPrevision IS NOT NULL 
THEN Prevision.Observaciones WHEN Alerta.IDIncidencia IS NOT NULL THEN Incidencia.Descripcion ELSE Alerta.Texto END AS Descripcion, Alerta.IDAlertaNivel, CASE WHEN Alerta.IDPrevision IS NOT NULL 
THEN '/Edit/Prevision/' + ltrim(str(Alerta.IDPrevision)) WHEN Alerta.IDIncidencia IS NOT NULL THEN '/Edit/Incidencia/' + ltrim(str(Alerta.IDIncidencia)) ELSE '' END AS URL, Alerta.IDContacto
FROM Producto AS Producto_1 INNER JOIN
Incidencia ON Producto_1.IDProducto = Incidencia.IDProducto RIGHT OUTER JOIN
Alerta INNER JOIN
UserApp ON Alerta.IDUserApp = UserApp.IDUser INNER JOIN
Contacto ON Alerta.IDContacto = Contacto.IDContacto ON Incidencia.IDIncidencia = Alerta.IDIncidencia LEFT OUTER JOIN
Producto INNER JOIN
Prevision ON Producto.IDProducto = Prevision.IDProducto ON Alerta.IDPrevision = Prevision.IDPrevision
WHERE (Contacto.IDEmpresa = {0})".Replace("{0}", IDEmpresa.ToString()) + AndWhere + " AND (Alerta.FechaCierre IS NULL)";
        }

        public override void PrepararGridColumns(PROT14.Business.GridView.GridColumns cols, string ElementName)
        {
            base.PrepararGridColumns(cols, ElementName);

            if (ElementName.StartsWith("Previsiones"))
            {
                cols.PreOrderBy = "OcultaPrevision";
            }
            else if (ElementName == "Incidencias")
            {
                cols.PreOrderBy = "OcultaIncidencia";
            }
        }

        public override Dictionary<string, PROT14.Business.GridView.GridColumn>  DefinirGridColumns(string ElementName, ref ElementType Type)
        {
            Dictionary<string, PROT14.Business.GridView.GridColumn> cols = base.DefinirGridColumns(ElementName, ref Type);

            if (ElementName == "ColEmpresaDelegacion")
            {
                cols["Delegacion"].Titulo = "Delegaciones";
                cols["IDEmpresa"].Visible = false;
                cols["Principal"].Visible = false;
                cols["Direccion"].Visible = false;
                cols["CP"].Visible = false;
                cols["IDPais"].Visible = false;
                cols["Ciudad"].Visible = false;
                cols["Provincia"].Visible = false;
                cols["Telefono"].Visible = false;
                cols["Fax"].Visible = false;
                cols["Observaciones"].Visible = false;
                cols["CIF"].Visible = false;
                cols["CodigoContabilidad"].Visible = false;
            }
            else if (ElementName == "Contactos")
            {
                cols["Delegacion"].Titulo = "Delegación";
                cols["Telefs"].Oculta = true;
                cols["Email"].Oculta = true;
                cols["UltCont"].Titulo = "Ult.cont";
                cols["ShortName"].Oculta = true;
                cols["Inc"].Oculta = true;
                cols["Prv"].Oculta = true;
            }
            else if (ElementName.StartsWith("DetalleProductos"))
            {
                cols["V"].OrderBy = "VersionOrder, Delegacion, Descripcion";
                cols["V"].Titulo = "Versión";
                cols["VersionOrder"].Visible = false;
                cols["Delegacion"].Titulo = "Delegación";
                cols["Activo"].Oculta = true;
                cols["Descripcion"].Oculta = true;
                cols["UltimaFactura"].Oculta = true;
                cols["Garantia"].Titulo = "Garantía";
                cols["Caducado"].Oculta = true;
                cols["IDEmpresaProducto"].Oculta = true;
            }
            else if (ElementName.StartsWith("Previsiones"))
            {
                cols["UltimaFecha"].Titulo = "C";
                cols["UltimaFecha"].OrderBy = "OcultaPrevision, UltimaFecha";
                cols["Delegacion"].Oculta = true;
                cols["Titulo"].Oculta = true;
                cols["Tipo"].Oculta = true;
                cols["Licencias"].Oculta = true;
                cols["ShortName"].Oculta = true;
                cols["Ponderado"].Oculta = true;
                cols["Importe"].Formato = "{0:#,##0.00} €";
                cols["Ponderado"].Formato = "{0:#,##0.00} €";
                cols["Producto"].Titulo = "Previsión";
                cols["IDContacto"].Oculta = true;
                cols["OcultaPrevision"].Oculta = true;

                cols["Contacto"].Oculta = true;
                cols["Actual"].Oculta = true;
                cols["Estado"].Oculta = true;
                cols["Ganado"].Oculta = true;
                cols["Perdido"].Oculta = true;
            }
            else if (ElementName == "Incidencias")
            {
                cols["UltimaFecha"].Titulo = "T";
                cols["Delegacion"].Oculta = true;
                cols["Descripcion"].Oculta = true;
                cols["Tipo"].Oculta = true;
                cols["Producto"].Titulo = "Incidencia";
                cols["ShortName"].Oculta = true;
                cols["IDContacto"].Oculta = true;
                cols["OcultaIncidencia"].Oculta = true;
            }
            else if (ElementName == "Alertas")
            {
                cols["Fecha"].Formato = "{0:dd-MM-yyyy HH:mm}";
                cols["ShortName"].Oculta = true;
                cols["Descripcion"].Oculta = true;
                cols["IDAlertaNivel"].Oculta = true;
                cols["URL"].Oculta = true;
                cols["IDContacto"].Oculta = true;
                cols["Producto"].Titulo = "Referencia";
            }

            return cols;
        }

        public override Dictionary<string, PROT14.Business.FieldDefinition.Field> DefinirFields()
        {
            Dictionary<string, PROT14.Business.FieldDefinition.Field> fields = base.DefinirFields();

            fields["Razon"].Label = "Nombre";

            fields["IDEmpresaTipo"].Label = "Tipo";
            fields["IDEmpresaTipo"].Type = FieldType.select;
            fields["IDEmpresaTipo"].ListSource = "EmpresaTipo";

            fields["IDEmpresaSectorPrincipal"].Label = "Sec. Principal";
            fields["IDEmpresaSectorPrincipal"].Type = FieldType.select;
            fields["IDEmpresaSectorPrincipal"].ListSource = "EmpresaSector";

            fields["IDEmpresaSectorSecundario"].Label = "Sec. Secundario";
            fields["IDEmpresaSectorSecundario"].Type = FieldType.select;
            fields["IDEmpresaSectorSecundario"].ListSource = "EmpresaSector";

            fields["IDEmpresaRanking"].Label = "Ranking";
            fields["IDEmpresaRanking"].Type = FieldType.select;
            fields["IDEmpresaRanking"].ListSource = "EmpresaRanking";

            fields["EsExtranjero"].Label = "¿Extranjero?";

            fields["CodigoContabilidad"].Label = "Cd. " + Empresa.NombreContabilidad;

            return fields;
        }

        public override string FastSearchToolTip
        {
            get
            {
                return "Búsqueda por nombre, CIF, dirección y, si el dato es numérico; teléfono, c. " + Empresa.NombreContabilidad + " y cp (5 dígitos)";
            }
        }

        public override string SQLWhere(BusinessFilter Filter)
        {
            string where;

            if (Filter["useObjectGlobalFilter"] == "0")
            {
                where = base.SQLWhere(Filter);
                string whereDelegacion = "";

                if (!Filter.Vacio("Direccion"))
                {
                    Data.AndWhere(ref whereDelegacion, "Direccion LIKE '%" + Filter["Direccion"].Replace("'", "''") + "%'");
                }
                if (!Filter.Vacio("CP"))
                {
                    Data.AndWhere(ref whereDelegacion, "CP LIKE '%" + Filter["CP"].Replace("'", "''") + "%'");
                }
                if (!Filter.Vacio("CIF"))
                {
                    Data.AndWhere(ref whereDelegacion, "CIF LIKE '%" + Filter["CIF"].Replace("'", "''") + "%'");
                }
                if (!Filter.Vacio("CodigoContabilidad"))
                {
                    Data.AndWhere(ref whereDelegacion, "CodigoContabilidad LIKE '%" + Filter["CodigoContabilidad"].Replace("'", "''") + "%'");
                }
                if (whereDelegacion != "")
                {
                    Data.OrWhere(ref where, "IDEmpresa in (Select IDEmpresa From EmpresaDelegacion Where " + whereDelegacion + ")");
                }

                Filter["lastuseObjectGlobalFilter"] = "1";
            }
            else
            {
                string ogf = Filter["objectGlobalFilter"].Replace("'", "''");
                string[] pals = ogf.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
                string sqlPalabrasDocumentos = "";

                where = "";

                foreach (string palUna in pals)
                {
                    string pal = palUna.Trim().Replace("'", "''");

                    if (pal != "")
                    {
                        string wParc = "";
                        string whereDelegacion = "";

                        if (pal.Length == 5 && Lib.NoIntNulo(pal).ToString() == pal.ToString())
                        {
                            Data.OrWhere(ref where, @"Empresa.IDEmpresa in (SELECT IDEmpresa"
                                + " FROM EmpresaDelegacion WHERE CP LIKE '%" + pal + "%')");
                        }
                        else
                        {
                            if (!(pal.StartsWith("[") && pal.EndsWith("]")))
                            {
                                Data.OrWhere(ref wParc, "Empresa.Razon Like '%" + pal + "%'");
                                Data.OrWhere(ref wParc, "Empresa.CIF Like '%" + pal + "%'");
                                Data.OrWhere(ref whereDelegacion, "Direccion LIKE '%" + pal + "%'");
                                Data.OrWhere(ref whereDelegacion, "CIF LIKE '%" + pal + "%'");
                                if (Lib.NoIntNulo(pal).ToString() == pal)
                                {
                                    Data.OrWhere(ref wParc, "Empresa.CodigoContabilidad Like '%" + pal + "%'");
                                    Data.OrWhere(ref whereDelegacion, "CodigoContabilidad LIKE '%" + pal + "%'");
                                    Data.OrWhere(ref whereDelegacion, "Telefono LIKE '%" + pal + "%'");
                                    if (pal.Length == 5)
                                    {
                                        Data.OrWhere(ref whereDelegacion, "CP = N'" + pal + "'");
                                    }
                                }
                            }
                            else
                            {
                                pal = pal.Replace("[", "").Replace("]", "").Trim();

                                if (pal != "")
                                {
                                    if (sqlPalabrasDocumentos != "")
                                    {
                                        sqlPalabrasDocumentos += ",";
                                    }
                                    sqlPalabrasDocumentos += "N'" + pal.Replace("'", "''") + "'";
                                }
                            }
                            if (wParc != "")
                            {
                                Data.OrWhere(ref wParc, @"Empresa.IDEmpresa in (SELECT IDEmpresa"
                                    + " FROM EmpresaDelegacion WHERE " + whereDelegacion + ")");

                                Data.AndWhere(ref where, "(" + wParc + ")");
                            }
                        }
                    }
                }

                if (sqlPalabrasDocumentos != "")
                {
                    string whereDR = "";

                    if (!UsuarioActual.Permiso("SEC", "Documento", "REST"))
                    {
                        whereDR = "Documento.Restringido = 0 AND ";
                    }

                    Data.AndWhere(ref where, @"Empresa.IDEmpresa IN (SELECT DISTINCT Documento.IDEmpresa
FROM DocumentoPalabra INNER JOIN
DocumentoPalabraInst ON DocumentoPalabra.IDDocumentoPalabra = DocumentoPalabraInst.IDDocumentoPalabra INNER JOIN
Documento ON DocumentoPalabraInst.IDDocumento = Documento.IDDocumento
WHERE " + whereDR + "(DocumentoPalabra.Palabra IN (" + sqlPalabrasDocumentos + ")))");


//Data.AndWhere(ref where, @"Empresa.IDEmpresa IN (SELECT DISTINCT Documento.IDEmpresa
//FROM DocumentoPalabra INNER JOIN
//DocumentoPalabraInst ON DocumentoPalabra.IDDocumentoPalabra = DocumentoPalabraInst.IDDocumentoPalabra INNER JOIN
//Documento ON DocumentoPalabraInst.IDDocumento = Documento.IDDocumento
//WHERE " + whereDR + "(NOT(Documento.IDEmpresa IS NULL)) AND (DocumentoPalabra.Palabra IN(" + sqlPalabrasDocumentos + ")))");
                }
            }

            return where;
        }

        private List<BusinessJSONTool> toolsList = new List<BusinessJSONTool>(1);

        public override List<BusinessJSONTool> ToolsList()
        {
            if (toolsList.Count == 0)
            {
                lock (toolsList)
                {
                    if (toolsList.Count == 0)
                    {
                        BusinessJSONTool tool;

                        tool = new BusinessJSONTool("nuevoCont", "Nuevo contacto", "goURL");
                        tool.urlBase = "/Edit/Contacto/From/Empresa/{idActual}";
                        toolsList.Add(tool);

                        tool = new BusinessJSONTool("nuevaPrev", "Nueva previsión", "goURL");
                        tool.urlBase = "/Edit/Prevision/From/Empresa/{idActual}";
                        toolsList.Add(tool);

                        tool = new BusinessJSONTool("nuevaInc", "Nueva incidencia", "goURL");
                        tool.urlBase = "/Edit/Incidencia/From/Empresa/{idActual}";
                        toolsList.Add(tool);

                        tool = new BusinessJSONTool("nuevaAlerta", "Nueva alerta", "goURL");
                        tool.urlBase = "/Edit/Alerta/From/Empresa/{idActual}";
                        toolsList.Add(tool);

                        tool = new BusinessJSONTool("nuevoMant", "Nuevo mant.", "goURL");
                        tool.urlBase = "/Edit/EmpresaProducto/From/Empresa/{idActual}";
                        toolsList.Add(tool);

                        tool = new BusinessJSONTool("nuevaDeleg", "Nueva delegación", "addColForm");
                        tool.colName = "ColEmpresaDelegacion";
                        toolsList.Add(tool);
                    }
                }
            }

            toolsList[0].visible = !this.Nuevo;
            toolsList[1].visible = !this.Nuevo;
            toolsList[2].visible = !this.Nuevo;
            toolsList[3].visible = !this.Nuevo;
            toolsList[4].visible = !this.Nuevo;
            toolsList[5].visible = !this.Nuevo;

            return toolsList;
        }
    }
}
