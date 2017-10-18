VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "crystl32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form FrmMUnPresupuesto 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Presupuesto"
   ClientHeight    =   8925
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9720
   HelpContextID   =   16
   Icon            =   "FrmMUnPresupuesto.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8925
   ScaleWidth      =   9720
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.CommandButton CmdDetalle 
      Caption         =   "&Presupuesto"
      Height          =   315
      Left            =   5985
      TabIndex        =   27
      Top             =   8070
      Width           =   1095
   End
   Begin VB.CommandButton CmdAceptar 
      Caption         =   "&Aceptar"
      Height          =   315
      Left            =   7125
      TabIndex        =   0
      Top             =   8070
      Width           =   1095
   End
   Begin VB.CommandButton CmdCancelar 
      Caption         =   "Cance&lar"
      Height          =   315
      Left            =   8265
      TabIndex        =   1
      Top             =   8070
      Width           =   1095
   End
   Begin VB.CommandButton CmdNuevo 
      Caption         =   "&Nuevo"
      Height          =   315
      Index           =   0
      Left            =   180
      TabIndex        =   2
      Top             =   8550
      Width           =   1095
   End
   Begin VB.CommandButton CmdModificar 
      Caption         =   "&Modificar"
      Height          =   315
      Left            =   1365
      TabIndex        =   3
      Top             =   8550
      Width           =   1095
   End
   Begin VB.CommandButton CmdCerrar 
      Cancel          =   -1  'True
      Caption         =   "&Cerrar"
      Height          =   315
      Left            =   7260
      TabIndex        =   5
      Top             =   8550
      Width           =   1095
   End
   Begin VB.CommandButton CmdEliminar 
      Caption         =   "&Eliminar"
      Height          =   315
      Left            =   2580
      TabIndex        =   4
      Top             =   8550
      Width           =   1095
   End
   Begin VB.CommandButton CmdAyuda 
      Caption         =   "A&yuda"
      Height          =   315
      Left            =   8400
      TabIndex        =   6
      Top             =   8550
      Width           =   1095
   End
   Begin TabDlg.SSTab MTab 
      Height          =   8430
      Left            =   120
      TabIndex        =   7
      Top             =   60
      Width           =   9495
      _ExtentX        =   16748
      _ExtentY        =   14870
      _Version        =   393216
      Style           =   1
      Tabs            =   9
      Tab             =   7
      TabsPerRow      =   10
      TabHeight       =   520
      TabCaption(0)   =   "Datos"
      TabPicture(0)   =   "FrmMUnPresupuesto.frx":0442
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Label10"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "LabelAceptado"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label4(0)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label9(0)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label3(3)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label20(2)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "LblEstado"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "LblAcuerdo"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "LabelAmpliaciones"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "CmdConfigurar"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "CmbTipo"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "CmdPresAceptado(0)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "TxtAnyo"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "CmdIrTipoPresupuesto"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "CmdImprimirPantalla"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "CmdIrSubtipo"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "CmbSubtipo"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "SSTab1"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "Frame8"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "CmbSucursal"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "TxtPEM"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "CmdIrObra"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "FrmFormaEntrada"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "CmdAcuerdoMarco"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "FrmAceptadoPor"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "FrmMarca"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).ControlCount=   26
      TabCaption(1)   =   "Observaciones "
      TabPicture(1)   =   "FrmMUnPresupuesto.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Label12(0)"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Label20(0)"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Label13"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "LblAvisoGeotecnico"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Label20(1)"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "Label20(5)"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "Label20(3)"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "Label20(4)"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "Label36"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "Label37"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "Label38"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "LblFirma"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "Label50"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "Label51"
      Tab(1).Control(13).Enabled=   0   'False
      Tab(1).Control(14)=   "Label20(7)"
      Tab(1).Control(14).Enabled=   0   'False
      Tab(1).Control(15)=   "OptMostrar(0)"
      Tab(1).Control(15).Enabled=   0   'False
      Tab(1).Control(16)=   "CDialogo"
      Tab(1).Control(16).Enabled=   0   'False
      Tab(1).Control(17)=   "CmbPConcepto"
      Tab(1).Control(17).Enabled=   0   'False
      Tab(1).Control(18)=   "CmdImprimir(3)"
      Tab(1).Control(18).Enabled=   0   'False
      Tab(1).Control(19)=   "OptMostrar(1)"
      Tab(1).Control(19).Enabled=   0   'False
      Tab(1).Control(20)=   "ChkPresPreliminar(0)"
      Tab(1).Control(20).Enabled=   0   'False
      Tab(1).Control(21)=   "CmdImprimir(2)"
      Tab(1).Control(21).Enabled=   0   'False
      Tab(1).Control(22)=   "CmdImprimir(1)"
      Tab(1).Control(22).Enabled=   0   'False
      Tab(1).Control(23)=   "TxtMeses"
      Tab(1).Control(23).Enabled=   0   'False
      Tab(1).Control(24)=   "TxtObservaciones"
      Tab(1).Control(24).Enabled=   0   'False
      Tab(1).Control(25)=   "CR_Informe"
      Tab(1).Control(25).Enabled=   0   'False
      Tab(1).Control(26)=   "Frame2"
      Tab(1).Control(26).Enabled=   0   'False
      Tab(1).Control(27)=   "ChkTotalPresupuesto"
      Tab(1).Control(27).Enabled=   0   'False
      Tab(1).Control(28)=   "CmbAvisoGeotecnico"
      Tab(1).Control(28).Enabled=   0   'False
      Tab(1).Control(29)=   "Frame5"
      Tab(1).Control(29).Enabled=   0   'False
      Tab(1).Control(30)=   "CmdExportarWord"
      Tab(1).Control(30).Enabled=   0   'False
      Tab(1).Control(31)=   "TxtNota"
      Tab(1).Control(31).Enabled=   0   'False
      Tab(1).Control(32)=   "Command1"
      Tab(1).Control(32).Enabled=   0   'False
      Tab(1).Control(33)=   "ChkFormaPago"
      Tab(1).Control(33).Enabled=   0   'False
      Tab(1).Control(34)=   "TxtPoliza"
      Tab(1).Control(34).Enabled=   0   'False
      Tab(1).Control(35)=   "CmbSeguros"
      Tab(1).Control(35).Enabled=   0   'False
      Tab(1).Control(36)=   "CmdIrCompañiaSeguros(1)"
      Tab(1).Control(36).Enabled=   0   'False
      Tab(1).Control(37)=   "CmbColaborador"
      Tab(1).Control(37).Enabled=   0   'False
      Tab(1).Control(38)=   "CmdIrColaborador(0)"
      Tab(1).Control(38).Enabled=   0   'False
      Tab(1).Control(39)=   "TxtHojaDatos"
      Tab(1).Control(39).Enabled=   0   'False
      Tab(1).Control(40)=   "CmdSelFecha(4)"
      Tab(1).Control(40).Enabled=   0   'False
      Tab(1).Control(41)=   "TxtFechaIniObra"
      Tab(1).Control(41).Enabled=   0   'False
      Tab(1).Control(42)=   "CmdSelFecha(5)"
      Tab(1).Control(42).Enabled=   0   'False
      Tab(1).Control(43)=   "TxtFechaFinObra"
      Tab(1).Control(43).Enabled=   0   'False
      Tab(1).Control(44)=   "ChkLogotipo"
      Tab(1).Control(44).Enabled=   0   'False
      Tab(1).Control(45)=   "CmbFirma"
      Tab(1).Control(45).Enabled=   0   'False
      Tab(1).Control(46)=   "CmdPColab"
      Tab(1).Control(46).Enabled=   0   'False
      Tab(1).Control(47)=   "CmdExportarWord2"
      Tab(1).Control(47).Enabled=   0   'False
      Tab(1).Control(48)=   "CmbCorredor"
      Tab(1).Control(48).Enabled=   0   'False
      Tab(1).Control(49)=   "CmdIrCorredorSeguros(0)"
      Tab(1).Control(49).Enabled=   0   'False
      Tab(1).Control(50)=   "CmdPDF(1)"
      Tab(1).Control(50).Enabled=   0   'False
      Tab(1).Control(51)=   "CmdMail"
      Tab(1).Control(51).Enabled=   0   'False
      Tab(1).Control(52)=   "CmdFax"
      Tab(1).Control(52).Enabled=   0   'False
      Tab(1).Control(53)=   "CmdDesaceptar"
      Tab(1).Control(53).Enabled=   0   'False
      Tab(1).Control(54)=   "Frame12"
      Tab(1).Control(54).Enabled=   0   'False
      Tab(1).Control(55)=   "CmdDocumentos"
      Tab(1).Control(55).Enabled=   0   'False
      Tab(1).Control(56)=   "CmbColaborador2"
      Tab(1).Control(56).Enabled=   0   'False
      Tab(1).ControlCount=   57
      TabCaption(2)   =   "Matríz Word "
      TabPicture(2)   =   "FrmMUnPresupuesto.frx":047A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label22"
      Tab(2).Control(1)=   "Label21"
      Tab(2).Control(2)=   "DbGridPropiedades"
      Tab(2).Control(3)=   "CmdImprimirWord"
      Tab(2).Control(4)=   "CmdDNuevo"
      Tab(2).Control(5)=   "CmdDEliminar"
      Tab(2).Control(6)=   "CmbMatrices"
      Tab(2).ControlCount=   7
      TabCaption(3)   =   "Tarifas "
      TabPicture(3)   =   "FrmMUnPresupuesto.frx":0496
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Label6(1)"
      Tab(3).Control(1)=   "DbGridMant(0)"
      Tab(3).Control(2)=   "TxtTotal(1)"
      Tab(3).Control(2).Enabled=   0   'False
      Tab(3).ControlCount=   3
      TabCaption(4)   =   "Total Presup."
      TabPicture(4)   =   "FrmMUnPresupuesto.frx":04B2
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label6(2)"
      Tab(4).Control(1)=   "DbGridMant(1)"
      Tab(4).Control(2)=   "TxtTotal(2)"
      Tab(4).Control(2).Enabled=   0   'False
      Tab(4).ControlCount=   3
      TabCaption(5)   =   "Facturación"
      TabPicture(5)   =   "FrmMUnPresupuesto.frx":04CE
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Frame1"
      Tab(5).Control(1)=   "Frame3"
      Tab(5).Control(2)=   "FrameAval"
      Tab(5).ControlCount=   3
      TabCaption(6)   =   "Oferta%"
      TabPicture(6)   =   "FrmMUnPresupuesto.frx":04EA
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "SSTab2"
      Tab(6).ControlCount=   1
      TabCaption(7)   =   "Ampliaciones"
      TabPicture(7)   =   "FrmMUnPresupuesto.frx":0506
      Tab(7).ControlEnabled=   -1  'True
      Tab(7).Control(0)=   "Label33(0)"
      Tab(7).Control(0).Enabled=   0   'False
      Tab(7).Control(1)=   "Label33(1)"
      Tab(7).Control(1).Enabled=   0   'False
      Tab(7).Control(2)=   "Label33(2)"
      Tab(7).Control(2).Enabled=   0   'False
      Tab(7).Control(3)=   "Label66(0)"
      Tab(7).Control(3).Enabled=   0   'False
      Tab(7).Control(4)=   "Label67"
      Tab(7).Control(4).Enabled=   0   'False
      Tab(7).Control(5)=   "Label68"
      Tab(7).Control(5).Enabled=   0   'False
      Tab(7).Control(6)=   "Label39"
      Tab(7).Control(6).Enabled=   0   'False
      Tab(7).Control(7)=   "DbGridMant(2)"
      Tab(7).Control(7).Enabled=   0   'False
      Tab(7).Control(8)=   "CmdPresAceptado(1)"
      Tab(7).Control(8).Enabled=   0   'False
      Tab(7).Control(9)=   "ChkPresPreliminar(1)"
      Tab(7).Control(9).Enabled=   0   'False
      Tab(7).Control(10)=   "CmdImprimir(4)"
      Tab(7).Control(10).Enabled=   0   'False
      Tab(7).Control(11)=   "CmdEliminarAmpliacion(1)"
      Tab(7).Control(11).Enabled=   0   'False
      Tab(7).Control(12)=   "CmdImprimir(5)"
      Tab(7).Control(12).Enabled=   0   'False
      Tab(7).Control(13)=   "CmdNuevo(1)"
      Tab(7).Control(13).Enabled=   0   'False
      Tab(7).Control(14)=   "TxtTotal(3)"
      Tab(7).Control(14).Enabled=   0   'False
      Tab(7).Control(15)=   "TxtTotal(4)"
      Tab(7).Control(15).Enabled=   0   'False
      Tab(7).Control(16)=   "TxtTotal(5)"
      Tab(7).Control(16).Enabled=   0   'False
      Tab(7).Control(17)=   "CmdNuevo(2)"
      Tab(7).Control(17).Enabled=   0   'False
      Tab(7).Control(18)=   "CmdNuevo(3)"
      Tab(7).Control(18).Enabled=   0   'False
      Tab(7).Control(19)=   "Frame15"
      Tab(7).Control(19).Enabled=   0   'False
      Tab(7).Control(20)=   "TxtIncidencias"
      Tab(7).Control(20).Enabled=   0   'False
      Tab(7).Control(21)=   "CmdEnviarAmpliacion"
      Tab(7).Control(21).Enabled=   0   'False
      Tab(7).Control(22)=   "CmdPDFAmpliacion(0)"
      Tab(7).Control(22).Enabled=   0   'False
      Tab(7).Control(23)=   "CmbEnviarAmpliacionFax"
      Tab(7).Control(23).Enabled=   0   'False
      Tab(7).Control(24)=   "ChkLogotipoAmpl"
      Tab(7).Control(24).Enabled=   0   'False
      Tab(7).Control(25)=   "Frame13"
      Tab(7).Control(25).Enabled=   0   'False
      Tab(7).Control(26)=   "CmbTipoAmpliacion"
      Tab(7).Control(26).Enabled=   0   'False
      Tab(7).ControlCount=   27
      TabCaption(8)   =   "Envio"
      TabPicture(8)   =   "FrmMUnPresupuesto.frx":0522
      Tab(8).ControlEnabled=   0   'False
      Tab(8).Control(0)=   "DbGridMant(3)"
      Tab(8).ControlCount=   1
      Begin VB.ComboBox CmbColaborador2 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":053E
         Left            =   -70080
         List            =   "FrmMUnPresupuesto.frx":0540
         Style           =   2  'Dropdown List
         TabIndex        =   172
         Tag             =   "1"
         Top             =   2220
         Width           =   2805
      End
      Begin VB.Frame FrmMarca 
         Caption         =   "Marca:"
         Height          =   795
         Left            =   -70170
         TabIndex        =   326
         Top             =   4440
         Width           =   4470
         Begin VB.CommandButton CmdIrMarcas 
            Caption         =   "..."
            Height          =   285
            Left            =   4035
            TabIndex        =   328
            ToolTipText     =   "Crear/Consultar Marcas"
            Top             =   315
            Width           =   360
         End
         Begin VB.Label LblMarca 
            Height          =   225
            Left            =   90
            TabIndex        =   327
            ToolTipText     =   "Puedes hacer doble clic aqui para crear y/o ver marcas ó topes para este presupuesto."
            Top             =   345
            UseMnemonic     =   0   'False
            Width           =   3810
         End
      End
      Begin VB.Frame FrmAceptadoPor 
         Caption         =   "Aceptado Por:"
         Height          =   1170
         Left            =   -69690
         TabIndex        =   302
         Top             =   6750
         Width           =   4005
         Begin VB.OptionButton OptAceptadoPor 
            Caption         =   "Descripcion:"
            Height          =   255
            Index           =   2
            Left            =   2535
            TabIndex        =   306
            Top             =   248
            Width           =   1320
         End
         Begin VB.TextBox TxtAceptadoPor 
            Height          =   570
            Left            =   105
            TabIndex        =   305
            Top             =   525
            Width           =   3810
         End
         Begin VB.OptionButton OptAceptadoPor 
            Caption         =   "Escrito"
            Height          =   255
            Index           =   1
            Left            =   1500
            TabIndex        =   304
            Top             =   248
            Width           =   960
         End
         Begin VB.OptionButton OptAceptadoPor 
            Caption         =   "No Aceptado"
            Height          =   255
            Index           =   0
            Left            =   135
            TabIndex        =   303
            Top             =   248
            Value           =   -1  'True
            Width           =   1350
         End
      End
      Begin VB.ComboBox CmbTipoAmpliacion 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":0542
         Left            =   6750
         List            =   "FrmMUnPresupuesto.frx":0552
         Style           =   2  'Dropdown List
         TabIndex        =   301
         Top             =   5505
         Width           =   1980
      End
      Begin VB.Frame Frame13 
         Caption         =   "Ampliación creada por:"
         ForeColor       =   &H00C00000&
         Height          =   570
         Left            =   6240
         TabIndex        =   298
         Top             =   3960
         Width           =   3135
         Begin VB.Label LblUsuarioAmpliacion 
            ForeColor       =   &H00C00000&
            Height          =   255
            Left            =   195
            TabIndex        =   299
            Top             =   240
            Width           =   2415
         End
      End
      Begin VB.CommandButton CmdDocumentos 
         Caption         =   "Adjuntar Plantillas de Documentos"
         Height          =   345
         Left            =   -74700
         TabIndex        =   297
         Top             =   6060
         Width           =   6495
      End
      Begin VB.CheckBox ChkLogotipoAmpl 
         Caption         =   "Logotipo"
         Height          =   255
         Left            =   2280
         TabIndex        =   296
         Top             =   6090
         Width           =   1095
      End
      Begin VB.CommandButton CmdAcuerdoMarco 
         Caption         =   "Acuerdo Marco..."
         Height          =   465
         Left            =   -68145
         TabIndex        =   294
         Top             =   1455
         Width           =   2415
      End
      Begin VB.Frame Frame12 
         Caption         =   "Usuario Asignado al Presup."
         ForeColor       =   &H00C00000&
         Height          =   540
         Left            =   -68265
         TabIndex        =   292
         Top             =   3510
         Width           =   2430
         Begin VB.Label LbUsuarioAsignado 
            ForeColor       =   &H00C00000&
            Height          =   270
            Left            =   120
            TabIndex        =   293
            Top             =   240
            Width           =   2145
         End
      End
      Begin VB.CommandButton CmbEnviarAmpliacionFax 
         Caption         =   "Enviar Ampliación por Fax"
         Height          =   450
         Left            =   5175
         TabIndex        =   291
         Top             =   5880
         Width           =   1530
      End
      Begin VB.CommandButton CmdPDFAmpliacion 
         Caption         =   "Exportar a Acrobat"
         Height          =   795
         Index           =   0
         Left            =   8475
         Picture         =   "FrmMUnPresupuesto.frx":059A
         Style           =   1  'Graphical
         TabIndex        =   290
         Top             =   5370
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CommandButton CmdEnviarAmpliacion 
         Caption         =   "Enviar Ampliación por Mail"
         Height          =   495
         Left            =   5175
         TabIndex        =   289
         Top             =   5310
         Width           =   1530
      End
      Begin VB.TextBox TxtIncidencias 
         Height          =   1350
         Left            =   180
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   288
         Top             =   6375
         Width           =   9060
      End
      Begin VB.Frame FrmFormaEntrada 
         Caption         =   "Forma de Entrada: "
         Height          =   795
         Left            =   -74880
         TabIndex        =   282
         Top             =   4440
         Width           =   4665
         Begin VB.OptionButton OptForma 
            Caption         =   "Por teléfono"
            Height          =   255
            Index           =   0
            Left            =   90
            TabIndex        =   286
            Top             =   330
            Value           =   -1  'True
            Width           =   1260
         End
         Begin VB.OptionButton OptForma 
            Caption         =   "Por fax"
            Height          =   375
            Index           =   1
            Left            =   1395
            TabIndex        =   285
            Top             =   270
            Width           =   930
         End
         Begin VB.OptionButton OptForma 
            Caption         =   "Escrito"
            Height          =   375
            Index           =   2
            Left            =   2310
            TabIndex        =   284
            Top             =   270
            Width           =   855
         End
         Begin VB.OptionButton OptForma 
            Caption         =   "Gestión directa"
            Height          =   375
            Index           =   3
            Left            =   3150
            TabIndex        =   283
            Top             =   270
            Width           =   1455
         End
      End
      Begin VB.Frame Frame15 
         Caption         =   "Orden en que se muestran las ampliaciones (útil para ampliaciones antiguas): "
         Height          =   555
         Left            =   180
         TabIndex        =   274
         Top             =   3960
         Width           =   5925
         Begin VB.OptionButton OptOrden 
            Caption         =   "Ordenar ampliaciones por tipo"
            Height          =   255
            Index           =   1
            Left            =   2760
            TabIndex        =   276
            Top             =   240
            Width           =   2535
         End
         Begin VB.OptionButton OptOrden 
            Caption         =   "Ordenar por Fecha de emision"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   275
            Top             =   240
            Value           =   -1  'True
            Width           =   2625
         End
      End
      Begin VB.CommandButton CmdDesaceptar 
         BackColor       =   &H8000000B&
         Caption         =   "Desaceptar Presupuesto"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   -71640
         TabIndex        =   271
         Top             =   8025
         Width           =   2400
      End
      Begin VB.CommandButton CmdFax 
         Caption         =   "Enviar Fax"
         Height          =   345
         Left            =   -68130
         TabIndex        =   270
         Top             =   7410
         Width           =   1335
      End
      Begin VB.CommandButton CmdMail 
         Caption         =   "Enviar Email"
         Height          =   375
         Left            =   -68130
         TabIndex        =   267
         Top             =   6960
         Width           =   1335
      End
      Begin VB.CommandButton CmdPDF 
         Caption         =   "Exportar a Acrobat"
         Height          =   795
         Index           =   1
         Left            =   -74775
         Picture         =   "FrmMUnPresupuesto.frx":14A0
         Style           =   1  'Graphical
         TabIndex        =   266
         Top             =   7485
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CommandButton CmdIrCorredorSeguros 
         Caption         =   "..."
         Height          =   255
         Index           =   0
         Left            =   -71880
         TabIndex        =   265
         TabStop         =   0   'False
         Tag             =   "1"
         Top             =   2820
         Width           =   375
      End
      Begin VB.ComboBox CmbCorredor 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":23A6
         Left            =   -74640
         List            =   "FrmMUnPresupuesto.frx":23A8
         Style           =   2  'Dropdown List
         TabIndex        =   264
         Tag             =   "1"
         Top             =   2790
         Width           =   2715
      End
      Begin VB.CommandButton CmdExportarWord2 
         Caption         =   "Exportar a Word. 2º Listado"
         Height          =   795
         Left            =   -66720
         Picture         =   "FrmMUnPresupuesto.frx":23AA
         Style           =   1  'Graphical
         TabIndex        =   258
         Top             =   6960
         Width           =   975
      End
      Begin VB.CommandButton CmdPColab 
         Height          =   225
         Left            =   -66780
         TabIndex        =   257
         Top             =   4290
         Width           =   285
      End
      Begin VB.CommandButton CmdIrObra 
         Caption         =   "Ir a la obra"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   -71445
         TabIndex        =   253
         Top             =   6765
         Width           =   1665
      End
      Begin VB.ComboBox CmbFirma 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":27EC
         Left            =   -71190
         List            =   "FrmMUnPresupuesto.frx":27EE
         Style           =   2  'Dropdown List
         TabIndex        =   250
         ToolTipText     =   "Firma que aparece en el presupuesto."
         Top             =   4230
         Width           =   2775
      End
      Begin VB.CheckBox ChkLogotipo 
         Caption         =   "Logotipo"
         Height          =   255
         Left            =   -69660
         TabIndex        =   249
         Top             =   6990
         Width           =   1095
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   6615
         Left            =   -74820
         TabIndex        =   185
         Top             =   720
         Width           =   9195
         _ExtentX        =   16219
         _ExtentY        =   11668
         _Version        =   393216
         TabHeight       =   520
         TabCaption(0)   =   "PartidaAlzada"
         TabPicture(0)   =   "FrmMUnPresupuesto.frx":27F0
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame7"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Frame6"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "Frame4"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).ControlCount=   3
         TabCaption(1)   =   "OfertaEconomica"
         TabPicture(1)   =   "FrmMUnPresupuesto.frx":280C
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame10"
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "Seguridad y salud"
         TabPicture(2)   =   "FrmMUnPresupuesto.frx":2828
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame14"
         Tab(2).ControlCount=   1
         Begin VB.Frame Frame14 
            Caption         =   "Misiones A Contratar"
            Height          =   3315
            Left            =   -74820
            TabIndex        =   307
            Top             =   480
            Width           =   8835
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   23
               Left            =   7320
               TabIndex        =   320
               Top             =   1560
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   22
               Left            =   5760
               TabIndex        =   316
               Top             =   1560
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   21
               Left            =   7320
               TabIndex        =   319
               Top             =   1200
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   20
               Left            =   5760
               TabIndex        =   315
               Top             =   1200
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   19
               Left            =   7320
               TabIndex        =   318
               Top             =   840
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   18
               Left            =   5760
               TabIndex        =   314
               Top             =   840
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   17
               Left            =   7320
               TabIndex        =   317
               Top             =   480
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   16
               Left            =   5760
               TabIndex        =   313
               Top             =   480
               Width           =   1455
            End
            Begin VB.TextBox TxtTotalOfertaEconomica 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   1
               Left            =   5760
               Locked          =   -1  'True
               TabIndex        =   324
               Top             =   2160
               Width           =   1455
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Coordinación de Seguridad y Salud en Fase de Proyecto (CSSFP)"
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   255
               Index           =   14
               Left            =   120
               TabIndex        =   308
               Top             =   540
               Value           =   1  'Checked
               Width           =   5415
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Otros a describir"
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   255
               Index           =   15
               Left            =   120
               TabIndex        =   311
               Top             =   1620
               Width           =   5415
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Redacción de Estudios o Estudios Básicos de Seguridad y Salud"
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   255
               Index           =   16
               Left            =   120
               TabIndex        =   310
               Top             =   1260
               Width           =   5415
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Coordinación de Seguridad y Salud en Fase de Ejecución (CSSFE)"
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   255
               Index           =   18
               Left            =   120
               TabIndex        =   309
               Top             =   900
               Width           =   5415
            End
            Begin VB.Label Label2 
               Caption         =   "TOTAL:"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   180
               TabIndex        =   323
               Top             =   2160
               Width           =   1335
            End
            Begin VB.Line Line2 
               Index           =   1
               X1              =   120
               X2              =   8640
               Y1              =   2040
               Y2              =   2040
            End
            Begin VB.Label Label15 
               Caption         =   "PORCENTAJE(%)"
               Height          =   315
               Index           =   5
               Left            =   7320
               TabIndex        =   322
               Top             =   180
               Width           =   1275
            End
            Begin VB.Label Label15 
               Alignment       =   2  'Center
               Caption         =   "IMPORTE EN €"
               Height          =   315
               Index           =   4
               Left            =   5700
               TabIndex        =   321
               Top             =   180
               Width           =   1575
            End
         End
         Begin VB.Frame Frame10 
            Caption         =   "Misiones A Contratar"
            Height          =   4035
            Left            =   -74430
            TabIndex        =   220
            Top             =   540
            Width           =   7035
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   15
               Left            =   4680
               TabIndex        =   242
               Top             =   2340
               Width           =   1275
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Instalaciones. Pruebas Finales"
               Height          =   255
               Index           =   9
               Left            =   120
               TabIndex        =   226
               Top             =   2370
               Width           =   2475
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   14
               Left            =   2700
               TabIndex        =   234
               Top             =   2340
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   13
               Left            =   4680
               TabIndex        =   241
               Top             =   1980
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   12
               Left            =   4680
               TabIndex        =   240
               Top             =   1620
               Width           =   1275
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Instalaciones. Proyecto"
               Height          =   255
               Index           =   7
               Left            =   120
               TabIndex        =   224
               Top             =   1665
               Width           =   1995
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Instalaciones. Montaje"
               Height          =   255
               Index           =   8
               Left            =   120
               TabIndex        =   225
               Top             =   2010
               Width           =   1995
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   11
               Left            =   2700
               TabIndex        =   232
               Top             =   1620
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   10
               Left            =   2700
               TabIndex        =   233
               Top             =   1980
               Width           =   1455
            End
            Begin VB.TextBox TxtTotalOfertaEconomica 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   0
               Left            =   2700
               Locked          =   -1  'True
               TabIndex        =   273
               Top             =   3570
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   4
               Left            =   2700
               TabIndex        =   236
               Top             =   3060
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   3
               Left            =   2700
               TabIndex        =   235
               Top             =   2700
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   2
               Left            =   2700
               TabIndex        =   231
               Top             =   1260
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   1
               Left            =   2700
               TabIndex        =   230
               Top             =   900
               Width           =   1455
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   0
               Left            =   2700
               TabIndex        =   229
               Top             =   540
               Width           =   1455
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Cobertura Básica Obligatoria"
               Height          =   255
               Index           =   4
               Left            =   120
               TabIndex        =   221
               Top             =   600
               Value           =   1  'Checked
               Width           =   2355
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Otros A Describir"
               Height          =   255
               Index           =   3
               Left            =   120
               TabIndex        =   228
               Top             =   3060
               Width           =   1575
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Control Acabados"
               Height          =   255
               Index           =   2
               Left            =   120
               TabIndex        =   227
               Top             =   2715
               Width           =   1635
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Estanquidad Cubiertas"
               Height          =   255
               Index           =   1
               Left            =   120
               TabIndex        =   223
               Top             =   1290
               Width           =   1995
            End
            Begin VB.CheckBox ChkMisión 
               Caption         =   "Estanquidad Fachadas"
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   222
               Top             =   945
               Width           =   1995
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   5
               Left            =   4680
               TabIndex        =   237
               Top             =   540
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   6
               Left            =   4680
               TabIndex        =   238
               Top             =   900
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   7
               Left            =   4680
               TabIndex        =   239
               Top             =   1260
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   8
               Left            =   4680
               TabIndex        =   243
               Top             =   2700
               Width           =   1275
            End
            Begin VB.TextBox TxtValor 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   9
               Left            =   4680
               TabIndex        =   244
               Top             =   3060
               Width           =   1275
            End
            Begin VB.Label Label65 
               Caption         =   "TOTAL:"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   272
               Top             =   3600
               Width           =   1335
            End
            Begin VB.Line Line2 
               Index           =   0
               X1              =   120
               X2              =   6840
               Y1              =   3480
               Y2              =   3480
            End
            Begin VB.Label Label15 
               Alignment       =   2  'Center
               Caption         =   "IMPORTE EN €"
               Height          =   315
               Index           =   3
               Left            =   2700
               TabIndex        =   246
               Top             =   180
               Width           =   1455
            End
            Begin VB.Label Label15 
               Caption         =   "PORCENTAJE(%)"
               Height          =   315
               Index           =   2
               Left            =   4680
               TabIndex        =   245
               Top             =   180
               Width           =   1275
            End
         End
         Begin VB.Frame Frame4 
            ForeColor       =   &H00C0FFFF&
            Height          =   2415
            Left            =   150
            TabIndex        =   196
            Top             =   1500
            Width           =   7875
            Begin VB.CheckBox ChkDesgloseDetallada 
               Caption         =   "Presupuesto con porcentaje con desglose de tarifas"
               Height          =   195
               Index           =   1
               Left            =   240
               TabIndex        =   211
               Top             =   0
               Width           =   4215
            End
            Begin VB.TextBox TxtPresupuesto 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#.##0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1034
                  SubFormatType   =   1
               EndProperty
               Enabled         =   0   'False
               Height          =   315
               Index           =   4
               Left            =   5940
               TabIndex        =   210
               Top             =   1920
               Width           =   1215
            End
            Begin VB.TextBox TxtPA 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#.##0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1034
                  SubFormatType   =   1
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   315
               Index           =   4
               Left            =   4020
               TabIndex        =   209
               Top             =   1920
               Width           =   1215
            End
            Begin VB.TextBox TxtPresupuesto 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               Enabled         =   0   'False
               Height          =   315
               Index           =   3
               Left            =   5940
               TabIndex        =   208
               Top             =   1500
               Width           =   1215
            End
            Begin VB.TextBox TxtPresupuesto 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               Enabled         =   0   'False
               Height          =   315
               Index           =   2
               Left            =   5940
               TabIndex        =   207
               Top             =   1140
               Width           =   1215
            End
            Begin VB.TextBox TxtPresupuesto 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               Enabled         =   0   'False
               Height          =   315
               Index           =   1
               Left            =   5940
               TabIndex        =   206
               Top             =   780
               Width           =   1215
            End
            Begin VB.TextBox TxtPresupuesto 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               Enabled         =   0   'False
               Height          =   315
               Index           =   0
               Left            =   5940
               TabIndex        =   205
               Top             =   420
               Width           =   1215
            End
            Begin VB.TextBox TxtTarifa 
               Height          =   315
               Index           =   3
               Left            =   7860
               TabIndex        =   204
               Top             =   2280
               Visible         =   0   'False
               Width           =   975
            End
            Begin VB.TextBox TxtTarifa 
               Height          =   315
               Index           =   2
               Left            =   7860
               TabIndex        =   203
               Top             =   1860
               Visible         =   0   'False
               Width           =   975
            End
            Begin VB.TextBox TxtTarifa 
               Height          =   315
               Index           =   1
               Left            =   7860
               TabIndex        =   202
               Top             =   1440
               Visible         =   0   'False
               Width           =   975
            End
            Begin VB.TextBox TxtTarifa 
               Height          =   315
               Index           =   0
               Left            =   7860
               TabIndex        =   201
               Top             =   1020
               Visible         =   0   'False
               Width           =   975
            End
            Begin VB.TextBox TxtPA 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   3
               Left            =   4020
               TabIndex        =   200
               Top             =   1500
               Width           =   1215
            End
            Begin VB.TextBox TxtPA 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   2
               Left            =   4020
               TabIndex        =   199
               Top             =   1140
               Width           =   1215
            End
            Begin VB.TextBox TxtPA 
               Alignment       =   1  'Right Justify
               Height          =   315
               Index           =   1
               Left            =   4020
               TabIndex        =   198
               Top             =   780
               Width           =   1215
            End
            Begin VB.TextBox TxtPA 
               Alignment       =   1  'Right Justify
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#.##0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1034
                  SubFormatType   =   0
               EndProperty
               Height          =   315
               Index           =   0
               Left            =   4020
               TabIndex        =   197
               Top             =   420
               Width           =   1215
            End
            Begin VB.Line Line1 
               BorderWidth     =   2
               X1              =   7440
               X2              =   120
               Y1              =   1860
               Y2              =   1860
            End
            Begin VB.Label Label25 
               Caption         =   "TOTALES:"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   7
               Left            =   120
               TabIndex        =   219
               Top             =   1920
               Width           =   2415
            End
            Begin VB.Label Label25 
               Caption         =   "Presupuestado (€)"
               Height          =   255
               Index           =   6
               Left            =   5940
               TabIndex        =   218
               Top             =   180
               Width           =   1515
            End
            Begin VB.Label Label25 
               Caption         =   "Tarifa"
               Height          =   255
               Index           =   5
               Left            =   7980
               TabIndex        =   217
               Top             =   660
               Visible         =   0   'False
               Width           =   915
            End
            Begin VB.Label Label25 
               Caption         =   "Inserte la Cantidad (€)"
               Height          =   255
               Index           =   4
               Left            =   4020
               TabIndex        =   216
               Top             =   180
               Width           =   1875
            End
            Begin VB.Label Label25 
               Caption         =   "ASISTENCIA TÉCNICA:"
               Height          =   255
               Index           =   3
               Left            =   120
               TabIndex        =   215
               Top             =   1560
               Width           =   2415
            End
            Begin VB.Label Label25 
               Caption         =   "PRUEBAS FINALES DE INSTALACIONES:"
               Height          =   255
               Index           =   2
               Left            =   120
               TabIndex        =   214
               Top             =   1200
               Width           =   3555
            End
            Begin VB.Label Label25 
               Caption         =   "CONTROL DE MONTAJE DE INSTALACIONES:"
               Height          =   255
               Index           =   1
               Left            =   120
               TabIndex        =   213
               Top             =   840
               Width           =   3615
            End
            Begin VB.Label Label25 
               Caption         =   "CONTROL DE MATERIALES:"
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   212
               Top             =   480
               Width           =   2415
            End
         End
         Begin VB.Frame Frame6 
            Height          =   915
            Left            =   150
            TabIndex        =   189
            Top             =   540
            Width           =   7875
            Begin VB.CheckBox ChkDesgloseDetallada 
               Caption         =   "Presupuesto con porcentaje sin desglose de tarifas"
               Height          =   195
               Index           =   0
               Left            =   240
               TabIndex        =   192
               Top             =   0
               Width           =   4155
            End
            Begin VB.TextBox TxtPartidaAlzada 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#.##0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1034
                  SubFormatType   =   0
               EndProperty
               Height          =   315
               Index           =   1
               Left            =   5940
               TabIndex        =   191
               Top             =   480
               Width           =   1215
            End
            Begin VB.TextBox TxtPartidaAlzada 
               Alignment       =   1  'Right Justify
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#.##0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1034
                  SubFormatType   =   0
               EndProperty
               Height          =   315
               Index           =   0
               Left            =   4020
               TabIndex        =   190
               Top             =   480
               Width           =   1215
            End
            Begin VB.Label Label25 
               Caption         =   "Inserte la Cantidad (€)"
               Height          =   255
               Index           =   10
               Left            =   4020
               TabIndex        =   195
               Top             =   180
               Width           =   1875
            End
            Begin VB.Label Label25 
               Caption         =   "Presupuestado (€)"
               Height          =   255
               Index           =   9
               Left            =   5940
               TabIndex        =   194
               Top             =   180
               Width           =   1515
            End
            Begin VB.Label Label25 
               Caption         =   "CONTROL DE MATERIALES E INSTALACIONES"
               Height          =   255
               Index           =   8
               Left            =   120
               TabIndex        =   193
               Top             =   540
               Width           =   3675
            End
         End
         Begin VB.Frame Frame7 
            Height          =   615
            Left            =   150
            TabIndex        =   186
            Top             =   4020
            Width           =   7875
            Begin VB.TextBox TxtPresupuesto 
               Alignment       =   1  'Right Justify
               BackColor       =   &H80000018&
               Enabled         =   0   'False
               Height          =   315
               Index           =   5
               Left            =   6000
               TabIndex        =   187
               Top             =   180
               Width           =   1215
            End
            Begin VB.Label Label25 
               Caption         =   "PRUEBAS Y ENSAYOS FUERA DEL PRESUPUESTO INICIAL:"
               Height          =   255
               Index           =   11
               Left            =   90
               TabIndex        =   188
               Top             =   270
               Width           =   5295
            End
         End
      End
      Begin VB.TextBox TxtFechaFinObra 
         Height          =   285
         Left            =   -73080
         TabIndex        =   182
         Tag             =   "1"
         Top             =   4260
         Width           =   1095
      End
      Begin VB.CommandButton CmdSelFecha 
         Caption         =   "..."
         Height          =   255
         Index           =   5
         Left            =   -71940
         TabIndex        =   181
         TabStop         =   0   'False
         Tag             =   "1"
         Top             =   4320
         Width           =   375
      End
      Begin VB.TextBox TxtFechaIniObra 
         Height          =   285
         Left            =   -74700
         TabIndex        =   180
         Tag             =   "1"
         Top             =   4260
         Width           =   1095
      End
      Begin VB.CommandButton CmdSelFecha 
         Caption         =   "..."
         Height          =   255
         Index           =   4
         Left            =   -73560
         TabIndex        =   179
         TabStop         =   0   'False
         Tag             =   "1"
         Top             =   4320
         Width           =   375
      End
      Begin VB.TextBox TxtHojaDatos 
         Height          =   285
         Left            =   -66600
         TabIndex        =   174
         Tag             =   "2"
         Text            =   "H"
         Top             =   1890
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.CommandButton CmdIrColaborador 
         Caption         =   "..."
         Height          =   255
         Index           =   0
         Left            =   -67110
         TabIndex        =   173
         TabStop         =   0   'False
         Tag             =   "1"
         ToolTipText     =   "Añadir nuevos colaboradores"
         Top             =   1920
         Width           =   375
      End
      Begin VB.ComboBox CmbColaborador 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":2844
         Left            =   -70080
         List            =   "FrmMUnPresupuesto.frx":2846
         Style           =   2  'Dropdown List
         TabIndex        =   171
         Tag             =   "1"
         Top             =   1890
         Width           =   2805
      End
      Begin VB.CommandButton CmdIrCompañiaSeguros 
         Caption         =   "..."
         Height          =   255
         Index           =   1
         Left            =   -71880
         TabIndex        =   170
         TabStop         =   0   'False
         Tag             =   "1"
         Top             =   1920
         Width           =   375
      End
      Begin VB.ComboBox CmbSeguros 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":2848
         Left            =   -74640
         List            =   "FrmMUnPresupuesto.frx":284A
         Style           =   2  'Dropdown List
         TabIndex        =   169
         Tag             =   "1"
         Top             =   1920
         Width           =   2715
      End
      Begin VB.TextBox TxtPoliza 
         Height          =   285
         Left            =   -71220
         MaxLength       =   10
         TabIndex        =   168
         Tag             =   "2"
         Top             =   1890
         Width           =   915
      End
      Begin VB.TextBox TxtPEM 
         Height          =   285
         Left            =   -74850
         TabIndex        =   165
         Tag             =   "2"
         ToolTipText     =   "Presupuesto Ejecución Materiales"
         Top             =   1620
         Width           =   1935
      End
      Begin VB.ComboBox CmbSucursal 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":284C
         Left            =   -74850
         List            =   "FrmMUnPresupuesto.frx":284E
         Style           =   2  'Dropdown List
         TabIndex        =   163
         Tag             =   "1"
         Top             =   900
         Width           =   1155
      End
      Begin VB.CommandButton CmdNuevo 
         Caption         =   "&Ampliar Mixta"
         Height          =   495
         Index           =   3
         Left            =   1500
         TabIndex        =   89
         ToolTipText     =   "AMPLIAR UNIDADES PRESUPUESTO INICIAL"
         Top             =   5310
         Width           =   675
      End
      Begin VB.CommandButton CmdNuevo 
         Caption         =   "&Ampliar Presup."
         Height          =   495
         Index           =   2
         Left            =   840
         TabIndex        =   82
         ToolTipText     =   "AMPLIAR TARIFAS NUEVAS"
         Top             =   5310
         Width           =   675
      End
      Begin VB.Frame Frame8 
         Caption         =   "Persona de Contacto del Presupuesto: "
         Height          =   1455
         Left            =   -74880
         TabIndex        =   125
         Top             =   5250
         Width           =   9180
         Begin VB.CommandButton cmdAgenda 
            Caption         =   "Agenda"
            Height          =   375
            Left            =   6150
            TabIndex        =   325
            ToolTipText     =   $"FrmMUnPresupuesto.frx":2850
            Top             =   990
            Width           =   2865
         End
         Begin VB.TextBox TxtEmail 
            Height          =   285
            Left            =   4080
            TabIndex        =   268
            Tag             =   "1"
            Top             =   1080
            Width           =   1965
         End
         Begin VB.CommandButton CmdHojaDatos 
            Caption         =   "HOJA DE DATOS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   6150
            TabIndex        =   167
            Top             =   165
            Width           =   2865
         End
         Begin VB.TextBox TxtMovil 
            Height          =   285
            Left            =   1320
            TabIndex        =   135
            Tag             =   "1"
            Top             =   1080
            Width           =   1395
         End
         Begin VB.TextBox TxtFax 
            Height          =   285
            Left            =   2760
            TabIndex        =   134
            Tag             =   "1"
            Top             =   1080
            Width           =   1275
         End
         Begin VB.TextBox TxtTelefono 
            Height          =   285
            Left            =   120
            TabIndex        =   133
            Tag             =   "1"
            Top             =   1080
            Width           =   1155
         End
         Begin VB.TextBox TxtApellidos 
            Height          =   285
            Left            =   2760
            TabIndex        =   129
            Tag             =   "1"
            Top             =   480
            Width           =   3315
         End
         Begin VB.TextBox TxtNombre 
            Height          =   285
            Left            =   780
            TabIndex        =   128
            Tag             =   "1"
            Top             =   480
            Width           =   1875
         End
         Begin VB.TextBox TxtDon 
            Height          =   285
            Left            =   120
            TabIndex        =   127
            Tag             =   "1"
            Top             =   480
            Width           =   555
         End
         Begin VB.CheckBox ChkOcultar 
            Caption         =   "Ocultar Impresión"
            Height          =   315
            Left            =   6150
            TabIndex        =   126
            Top             =   615
            Width           =   2175
         End
         Begin VB.Label Label62 
            AutoSize        =   -1  'True
            Caption         =   "Email:"
            Height          =   195
            Left            =   4080
            TabIndex        =   269
            Top             =   840
            Width           =   420
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Móvil:"
            Height          =   195
            Left            =   1320
            TabIndex        =   138
            Top             =   840
            Width           =   420
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Fax:"
            Height          =   195
            Left            =   2760
            TabIndex        =   137
            Top             =   840
            Width           =   300
         End
         Begin VB.Label LblTelefono 
            AutoSize        =   -1  'True
            Caption         =   "Teléfono:"
            Height          =   195
            Left            =   120
            TabIndex        =   136
            Top             =   840
            Width           =   675
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Apellidos:"
            Height          =   195
            Left            =   2760
            TabIndex        =   132
            Top             =   240
            Width           =   675
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Nombre:"
            Height          =   195
            Left            =   780
            TabIndex        =   131
            Top             =   240
            Width           =   600
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Trato:"
            Height          =   195
            Left            =   120
            TabIndex        =   130
            Top             =   240
            Width           =   420
         End
      End
      Begin TabDlg.SSTab SSTab1 
         Height          =   2370
         Left            =   -74880
         TabIndex        =   100
         Top             =   2040
         Width           =   9180
         _ExtentX        =   16193
         _ExtentY        =   4180
         _Version        =   393216
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   520
         ForeColor       =   9176589
         TabCaption(0)   =   "Datos Cliente"
         TabPicture(0)   =   "FrmMUnPresupuesto.frx":28E2
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Label14"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Label9(1)"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "Label3(1)"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "Label4(1)"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).Control(4)=   "Label12(1)"
         Tab(0).Control(4).Enabled=   0   'False
         Tab(0).Control(5)=   "Label32(1)"
         Tab(0).Control(5).Enabled=   0   'False
         Tab(0).Control(6)=   "Label3(2)"
         Tab(0).Control(6).Enabled=   0   'False
         Tab(0).Control(7)=   "Label1(2)"
         Tab(0).Control(7).Enabled=   0   'False
         Tab(0).Control(8)=   "CmbTipoCliente"
         Tab(0).Control(8).Enabled=   0   'False
         Tab(0).Control(9)=   "CmdSelCliente"
         Tab(0).Control(9).Enabled=   0   'False
         Tab(0).Control(10)=   "TxtPeticionario"
         Tab(0).Control(10).Enabled=   0   'False
         Tab(0).Control(11)=   "CmdIrCliente"
         Tab(0).Control(11).Enabled=   0   'False
         Tab(0).Control(12)=   "ChkPreciosUnitarios"
         Tab(0).Control(12).Enabled=   0   'False
         Tab(0).Control(13)=   "ChkSeguimiento"
         Tab(0).Control(13).Enabled=   0   'False
         Tab(0).Control(14)=   "TxtNombreObra"
         Tab(0).Control(14).Enabled=   0   'False
         Tab(0).Control(15)=   "TxtPoblacion"
         Tab(0).Control(15).Enabled=   0   'False
         Tab(0).Control(16)=   "TxtDireccion"
         Tab(0).Control(16).Enabled=   0   'False
         Tab(0).Control(17)=   "TxtCP"
         Tab(0).Control(17).Enabled=   0   'False
         Tab(0).Control(18)=   "TxtProvincia"
         Tab(0).Control(18).Enabled=   0   'False
         Tab(0).Control(19)=   "Opt_PreciosUnitarios"
         Tab(0).Control(19).Enabled=   0   'False
         Tab(0).Control(20)=   "Opt_Estandar"
         Tab(0).Control(20).Enabled=   0   'False
         Tab(0).Control(21)=   "Opt_Oferta"
         Tab(0).Control(21).Enabled=   0   'False
         Tab(0).Control(22)=   "CmbTipoAceptacion"
         Tab(0).Control(22).Enabled=   0   'False
         Tab(0).ControlCount=   23
         TabCaption(1)   =   "Datos Presupuesto"
         TabPicture(1)   =   "FrmMUnPresupuesto.frx":28FE
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "CmbCondicionesPago"
         Tab(1).Control(1)=   "Frame9"
         Tab(1).Control(2)=   "CmbVerbal"
         Tab(1).Control(3)=   "TxtFechaTerminado"
         Tab(1).Control(4)=   "CmdSelFecha(2)"
         Tab(1).Control(4).Enabled=   0   'False
         Tab(1).Control(5)=   "TxtFechaAceptacion"
         Tab(1).Control(6)=   "CmdSelFecha(1)"
         Tab(1).Control(6).Enabled=   0   'False
         Tab(1).Control(7)=   "TxtFechaEmision"
         Tab(1).Control(8)=   "CmdSelFecha(0)"
         Tab(1).Control(8).Enabled=   0   'False
         Tab(1).Control(9)=   "CmbFormaPago"
         Tab(1).Control(10)=   "CmbUsuario(1)"
         Tab(1).Control(11)=   "CmbFechaFactura"
         Tab(1).Control(12)=   "TxtTotal(0)"
         Tab(1).Control(12).Enabled=   0   'False
         Tab(1).Control(13)=   "Label49"
         Tab(1).Control(14)=   "Label(0)"
         Tab(1).Control(15)=   "Label1(1)"
         Tab(1).Control(16)=   "Label6(3)"
         Tab(1).Control(17)=   "Label15(1)"
         Tab(1).Control(18)=   "Label5(1)"
         Tab(1).Control(19)=   "Label19(1)"
         Tab(1).Control(20)=   "Label25(12)"
         Tab(1).Control(21)=   "Label25(13)"
         Tab(1).Control(22)=   "Label34"
         Tab(1).ControlCount=   23
         Begin VB.ComboBox CmbTipoAceptacion 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":291A
            Left            =   6960
            List            =   "FrmMUnPresupuesto.frx":291C
            Style           =   2  'Dropdown List
            TabIndex        =   280
            Top             =   600
            Width           =   2055
         End
         Begin VB.OptionButton Opt_Oferta 
            Caption         =   "Oferta % SIN ampliaciones"
            Height          =   225
            Left            =   5340
            TabIndex        =   261
            Top             =   2040
            Width           =   3465
         End
         Begin VB.OptionButton Opt_Estandar 
            Caption         =   "Estándar"
            Height          =   225
            Left            =   180
            TabIndex        =   260
            Top             =   2040
            Value           =   -1  'True
            Width           =   1095
         End
         Begin VB.OptionButton Opt_PreciosUnitarios 
            Caption         =   "Precios Unitarios Especial SIN ampliaciones"
            Height          =   225
            Left            =   1500
            TabIndex        =   259
            Top             =   2040
            Width           =   3405
         End
         Begin VB.ComboBox CmbCondicionesPago 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":291E
            Left            =   -70950
            List            =   "FrmMUnPresupuesto.frx":2928
            Style           =   2  'Dropdown List
            TabIndex        =   247
            Top             =   1920
            Width           =   4965
         End
         Begin VB.Frame Frame9 
            Height          =   675
            Left            =   -70980
            TabIndex        =   151
            Top             =   960
            Width           =   4965
            Begin VB.CommandButton CmdIrOCT 
               Caption         =   "..."
               Height          =   255
               Left            =   3570
               TabIndex        =   162
               TabStop         =   0   'False
               Tag             =   "1"
               Top             =   240
               Width           =   375
            End
            Begin VB.ComboBox CmbOCT 
               Height          =   315
               Left            =   450
               TabIndex        =   161
               Top             =   210
               Width           =   3075
            End
            Begin VB.CheckBox ChkOCT 
               Caption         =   "OCT"
               Height          =   315
               Left            =   60
               TabIndex        =   152
               Top             =   -60
               Width           =   735
            End
            Begin VB.Label Label35 
               Caption         =   "Nombre OCT: "
               Height          =   255
               Left            =   480
               TabIndex        =   153
               Top             =   240
               Width           =   2055
            End
         End
         Begin VB.TextBox TxtProvincia 
            Height          =   285
            Left            =   6900
            TabIndex        =   146
            Tag             =   "1"
            Top             =   1680
            Width           =   2115
         End
         Begin VB.TextBox TxtCP 
            Height          =   285
            Left            =   3840
            TabIndex        =   145
            Tag             =   "1"
            Top             =   1680
            Width           =   915
         End
         Begin VB.TextBox TxtDireccion 
            Height          =   285
            Left            =   120
            TabIndex        =   144
            Tag             =   "1"
            Top             =   1680
            Width           =   3615
         End
         Begin VB.TextBox TxtPoblacion 
            Height          =   285
            Left            =   4860
            TabIndex        =   143
            Tag             =   "1"
            Top             =   1680
            Width           =   1875
         End
         Begin VB.TextBox TxtNombreObra 
            Height          =   285
            Left            =   120
            TabIndex        =   141
            Tag             =   "1"
            Top             =   1140
            Width           =   6615
         End
         Begin VB.ComboBox CmbVerbal 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":2982
            Left            =   -68640
            List            =   "FrmMUnPresupuesto.frx":298C
            Style           =   2  'Dropdown List
            TabIndex        =   139
            Tag             =   "1"
            Top             =   540
            Width           =   1755
         End
         Begin VB.CheckBox ChkSeguimiento 
            Caption         =   "Sin Seguimiento"
            Height          =   255
            Left            =   6960
            TabIndex        =   124
            Top             =   960
            Width           =   1635
         End
         Begin VB.CheckBox ChkPreciosUnitarios 
            Caption         =   "Precios Unitarios"
            Height          =   255
            Left            =   6960
            TabIndex        =   123
            Top             =   1170
            Visible         =   0   'False
            Width           =   1665
         End
         Begin VB.TextBox TxtFechaTerminado 
            Height          =   285
            Left            =   -72120
            TabIndex        =   116
            Tag             =   "1"
            Top             =   540
            Width           =   975
         End
         Begin VB.CommandButton CmdSelFecha 
            Caption         =   "..."
            Height          =   255
            Index           =   2
            Left            =   -71160
            TabIndex        =   115
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtFechaAceptacion 
            Height          =   285
            Left            =   -73500
            TabIndex        =   114
            Tag             =   "1"
            Top             =   540
            Width           =   975
         End
         Begin VB.CommandButton CmdSelFecha 
            Caption         =   "..."
            Height          =   255
            Index           =   1
            Left            =   -72540
            TabIndex        =   113
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   570
            Width           =   375
         End
         Begin VB.TextBox TxtFechaEmision 
            Height          =   285
            Left            =   -74880
            TabIndex        =   112
            Tag             =   "1"
            Top             =   540
            Width           =   975
         End
         Begin VB.CommandButton CmdSelFecha 
            Caption         =   "..."
            Height          =   255
            Index           =   0
            Left            =   -73920
            TabIndex        =   111
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   570
            Width           =   375
         End
         Begin VB.ComboBox CmbFormaPago 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":29A1
            Left            =   -73170
            List            =   "FrmMUnPresupuesto.frx":29A3
            Style           =   2  'Dropdown List
            TabIndex        =   110
            Tag             =   "2"
            Top             =   1920
            Width           =   2055
         End
         Begin VB.ComboBox CmbUsuario 
            Height          =   315
            Index           =   1
            Left            =   -74880
            Sorted          =   -1  'True
            TabIndex        =   109
            Text            =   "CmbUsuario"
            Top             =   1200
            Width           =   3795
         End
         Begin VB.ComboBox CmbFechaFactura 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":29A5
            Left            =   -74910
            List            =   "FrmMUnPresupuesto.frx":29B8
            TabIndex        =   108
            Text            =   "CmbFechaFactura"
            Top             =   1920
            Width           =   1635
         End
         Begin VB.TextBox TxtTotal 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000018&
            Height          =   285
            Index           =   0
            Left            =   -70620
            TabIndex        =   106
            TabStop         =   0   'False
            Tag             =   "4"
            Top             =   540
            Width           =   1785
         End
         Begin VB.CommandButton CmdIrCliente 
            Caption         =   "..."
            Height          =   255
            Left            =   5160
            TabIndex        =   104
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   660
            Width           =   375
         End
         Begin VB.TextBox TxtPeticionario 
            BackColor       =   &H80000014&
            Height          =   285
            Left            =   120
            TabIndex        =   103
            Tag             =   "1"
            Top             =   600
            Width           =   4995
         End
         Begin VB.CommandButton CmdSelCliente 
            Caption         =   "Buscar cliente"
            Height          =   315
            Left            =   5580
            TabIndex        =   102
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   600
            Width           =   1155
         End
         Begin VB.ComboBox CmbTipoCliente 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":29E4
            Left            =   6900
            List            =   "FrmMUnPresupuesto.frx":29F4
            TabIndex        =   101
            Top             =   600
            Visible         =   0   'False
            Width           =   1875
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Tipo de Aceptación:"
            Height          =   195
            Index           =   2
            Left            =   6960
            TabIndex        =   281
            Top             =   360
            Width           =   1440
         End
         Begin VB.Label Label49 
            Caption         =   "€"
            Height          =   225
            Left            =   -68820
            TabIndex        =   254
            Top             =   585
            Width           =   165
         End
         Begin VB.Label Label 
            Caption         =   "Condición de pago:"
            Height          =   255
            Index           =   0
            Left            =   -70950
            TabIndex        =   248
            Top             =   1680
            Width           =   1575
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Verbal o escrito:"
            Height          =   195
            Index           =   1
            Left            =   -68640
            TabIndex        =   160
            Top             =   360
            Width           =   1440
         End
         Begin VB.Label Label6 
            Caption         =   "Total presupuestado:"
            Height          =   195
            Index           =   3
            Left            =   -70560
            TabIndex        =   159
            Top             =   360
            Width           =   1515
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Fecha de fin:"
            Height          =   195
            Index           =   1
            Left            =   -72060
            TabIndex        =   158
            Top             =   360
            Width           =   930
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Fecha aceptación:"
            Height          =   195
            Index           =   1
            Left            =   -73500
            TabIndex        =   157
            Top             =   360
            Width           =   1335
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Fecha emisión:"
            Height          =   195
            Index           =   1
            Left            =   -74880
            TabIndex        =   156
            Top             =   360
            Width           =   1065
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Cliente peticionario:"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   155
            Top             =   360
            Width           =   1380
         End
         Begin VB.Label Label32 
            Caption         =   "TipoCliente:"
            Height          =   255
            Index           =   1
            Left            =   6900
            TabIndex        =   154
            Top             =   360
            Visible         =   0   'False
            Width           =   1635
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Provincia:"
            Height          =   195
            Index           =   1
            Left            =   6900
            TabIndex        =   150
            Top             =   1440
            Width           =   705
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "C.P.:"
            Height          =   195
            Index           =   1
            Left            =   3840
            TabIndex        =   149
            Top             =   1440
            Width           =   345
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Dirección:"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   148
            Top             =   1440
            Width           =   720
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Población:"
            Height          =   195
            Index           =   1
            Left            =   4860
            TabIndex        =   147
            Top             =   1440
            Width           =   750
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Nombre de la obra:"
            Height          =   195
            Left            =   120
            TabIndex        =   142
            Top             =   900
            Width           =   1350
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Aceptación Verbal o escrito:"
            Height          =   195
            Index           =   0
            Left            =   6360
            TabIndex        =   140
            Top             =   -240
            Visible         =   0   'False
            Width           =   1995
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Fecha de fin:"
            Height          =   195
            Index           =   0
            Left            =   2880
            TabIndex        =   122
            Top             =   -240
            Width           =   930
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Fecha aceptación:"
            Height          =   195
            Index           =   0
            Left            =   1500
            TabIndex        =   121
            Top             =   -240
            Width           =   1335
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Fecha emisión:"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   120
            Top             =   -240
            Width           =   1065
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Forma de pago:"
            Height          =   195
            Index           =   12
            Left            =   -73170
            TabIndex        =   119
            Top             =   1680
            Width           =   1230
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "FechaPrevistaFacturar:"
            Height          =   195
            Index           =   13
            Left            =   -74910
            TabIndex        =   118
            Top             =   1680
            Width           =   1650
         End
         Begin VB.Label Label34 
            Caption         =   "Persona de seguimiento del presupuesto:"
            Height          =   195
            Left            =   -74880
            TabIndex        =   117
            Top             =   1020
            Width           =   3075
         End
         Begin VB.Label Label6 
            Caption         =   "Total presupuestado:"
            Height          =   195
            Index           =   0
            Left            =   4380
            TabIndex        =   107
            Top             =   -240
            Width           =   1515
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Cliente peticionario:"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   105
            Top             =   -240
            Width           =   1380
         End
      End
      Begin VB.TextBox TxtTotal 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   315
         Index           =   5
         Left            =   6555
         TabIndex        =   99
         Top             =   4905
         Width           =   1995
      End
      Begin VB.TextBox TxtTotal 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   315
         Index           =   4
         Left            =   3180
         TabIndex        =   97
         Top             =   4890
         Width           =   2385
      End
      Begin VB.TextBox TxtTotal 
         Alignment       =   1  'Right Justify
         Enabled         =   0   'False
         Height          =   315
         Index           =   3
         Left            =   180
         TabIndex        =   95
         Top             =   4890
         Width           =   2445
      End
      Begin VB.CheckBox ChkFormaPago 
         Caption         =   "Forma Pago"
         Height          =   255
         Left            =   -70980
         TabIndex        =   93
         Top             =   6990
         Value           =   1  'Checked
         Width           =   1275
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Exportar a Excel"
         Height          =   795
         Left            =   -66720
         Picture         =   "FrmMUnPresupuesto.frx":2A2D
         Style           =   1  'Graphical
         TabIndex        =   92
         Top             =   6060
         Width           =   975
      End
      Begin VB.TextBox TxtNota 
         Height          =   1125
         Left            =   -74700
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   91
         Tag             =   "2"
         Top             =   4800
         Width           =   8955
      End
      Begin VB.CommandButton CmdNuevo 
         Caption         =   "&Ampliar Unidad."
         Height          =   495
         Index           =   1
         Left            =   180
         TabIndex        =   88
         ToolTipText     =   "AMPLIAR UNIDADES PRESUPUESTO INICIAL"
         Top             =   5310
         Width           =   675
      End
      Begin VB.CommandButton CmdExportarWord 
         Caption         =   "Exportar a Word"
         Height          =   795
         Left            =   -68130
         Picture         =   "FrmMUnPresupuesto.frx":2E6F
         Style           =   1  'Graphical
         TabIndex        =   87
         Top             =   6060
         Width           =   1335
      End
      Begin VB.ComboBox CmbSubtipo 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":32B1
         Left            =   -69390
         List            =   "FrmMUnPresupuesto.frx":32B3
         TabIndex        =   86
         Text            =   "CmbSubtipo"
         Top             =   900
         Width           =   2085
      End
      Begin VB.CommandButton CmdIrSubtipo 
         Caption         =   "..."
         Height          =   255
         Left            =   -67200
         TabIndex        =   85
         TabStop         =   0   'False
         Tag             =   "1"
         Top             =   960
         Width           =   375
      End
      Begin VB.CommandButton CmdImprimir 
         Caption         =   "Imprimir Global"
         Height          =   495
         Index           =   5
         Left            =   2940
         TabIndex        =   84
         Tag             =   "2"
         Top             =   5310
         Width           =   675
      End
      Begin VB.CommandButton CmdEliminarAmpliacion 
         Caption         =   "Eliminar Ampliac"
         Height          =   495
         Index           =   1
         Left            =   4380
         TabIndex        =   83
         Top             =   5310
         Width           =   735
      End
      Begin VB.CommandButton CmdImprimir 
         Caption         =   "Imprimir Detalle"
         Height          =   495
         Index           =   4
         Left            =   2280
         TabIndex        =   81
         Tag             =   "2"
         Top             =   5310
         Width           =   675
      End
      Begin VB.CheckBox ChkPresPreliminar 
         Caption         =   "Presentación preliminar"
         Height          =   195
         Index           =   1
         Left            =   2280
         TabIndex        =   80
         Tag             =   "2"
         Top             =   5850
         Width           =   2040
      End
      Begin VB.CommandButton CmdPresAceptado 
         Caption         =   "Aceptar Presup."
         Height          =   495
         Index           =   1
         Left            =   3720
         TabIndex        =   79
         Tag             =   "1"
         Top             =   5310
         Width           =   675
      End
      Begin VB.CommandButton CmdImprimirPantalla 
         Caption         =   "ImprimirPantalla"
         Height          =   315
         Left            =   -70470
         TabIndex        =   77
         Top             =   8010
         Width           =   1275
      End
      Begin VB.CommandButton CmdIrTipoPresupuesto 
         Caption         =   "..."
         Height          =   255
         Left            =   -70950
         TabIndex        =   76
         TabStop         =   0   'False
         Tag             =   "1"
         Top             =   960
         Width           =   375
      End
      Begin VB.Frame Frame5 
         Caption         =   "Ampliar Precios Unitarios"
         Height          =   735
         Left            =   -74700
         TabIndex        =   72
         Top             =   3180
         Visible         =   0   'False
         Width           =   2835
         Begin VB.CommandButton CmdAmpliar 
            Caption         =   "Ampliar"
            Height          =   315
            Left            =   1500
            TabIndex        =   75
            Top             =   300
            Width           =   1095
         End
         Begin VB.TextBox TxtPrecio 
            Height          =   315
            Left            =   300
            TabIndex        =   73
            Top             =   300
            Width           =   915
         End
         Begin VB.Label Label31 
            Caption         =   "%"
            Height          =   195
            Left            =   1260
            TabIndex        =   74
            Top             =   360
            Width           =   195
         End
      End
      Begin VB.Frame FrameAval 
         Caption         =   " Aval "
         Height          =   1935
         Left            =   -74220
         TabIndex        =   59
         Top             =   2640
         Width           =   6795
         Begin VB.TextBox TxtImporteAval 
            Alignment       =   1  'Right Justify
            Height          =   285
            Left            =   240
            MaxLength       =   8
            TabIndex        =   68
            Tag             =   "2"
            Top             =   1440
            Width           =   1455
         End
         Begin VB.TextBox TxtFechaAvalAceptacion 
            Height          =   285
            Left            =   4980
            TabIndex        =   65
            Tag             =   "1"
            Top             =   720
            Width           =   1095
         End
         Begin VB.CommandButton CmdSelFecha 
            Caption         =   "..."
            Height          =   255
            Index           =   3
            Left            =   6120
            TabIndex        =   64
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   780
            Width           =   375
         End
         Begin VB.ComboBox CmbEntidadBancaria 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":32B5
            Left            =   240
            List            =   "FrmMUnPresupuesto.frx":32BC
            Style           =   2  'Dropdown List
            TabIndex        =   63
            Top             =   720
            Width           =   2835
         End
         Begin VB.ComboBox CmbAval 
            Height          =   315
            ItemData        =   "FrmMUnPresupuesto.frx":32D4
            Left            =   3300
            List            =   "FrmMUnPresupuesto.frx":32DB
            Style           =   2  'Dropdown List
            TabIndex        =   61
            Top             =   720
            Width           =   1455
         End
         Begin VB.Label Label30 
            Caption         =   "Euros"
            Height          =   255
            Left            =   1770
            TabIndex        =   71
            Top             =   1500
            Width           =   495
         End
         Begin VB.Label LblEuros 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   315
            Left            =   2460
            TabIndex        =   70
            Top             =   1440
            Width           =   1155
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Pts."
            Height          =   195
            Index           =   2
            Left            =   3720
            TabIndex        =   69
            Top             =   1500
            Width           =   270
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Importe Aval:"
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   67
            Top             =   1200
            Width           =   930
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Fecha de aceptación:"
            Height          =   195
            Index           =   0
            Left            =   4980
            TabIndex        =   66
            Top             =   420
            Width           =   1560
         End
         Begin VB.Label Label28 
            Caption         =   "Entidad Bancaria:"
            Height          =   195
            Left            =   240
            TabIndex        =   62
            Top             =   420
            Width           =   1455
         End
         Begin VB.Label Label26 
            Caption         =   "Estado del aval:"
            Height          =   195
            Left            =   3300
            TabIndex        =   60
            Top             =   420
            Width           =   1455
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   " Bonificación e IVA "
         Height          =   1335
         Left            =   -74280
         TabIndex        =   54
         Top             =   960
         Width           =   2895
         Begin VB.TextBox TxtIVA 
            Height          =   285
            Left            =   1620
            TabIndex        =   56
            Tag             =   "2"
            Top             =   660
            Width           =   735
         End
         Begin VB.TextBox TxtDescuento 
            Height          =   285
            Left            =   360
            TabIndex        =   55
            Tag             =   "2"
            Top             =   660
            Width           =   735
         End
         Begin VB.Label Label18 
            Caption         =   "% Bonificación:"
            Height          =   255
            Left            =   360
            TabIndex        =   58
            Top             =   360
            Width           =   1185
         End
         Begin VB.Label Label27 
            Caption         =   "IVA:"
            Height          =   195
            Left            =   1620
            TabIndex        =   57
            Top             =   360
            Width           =   435
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   -71160
         TabIndex        =   48
         Top             =   960
         Width           =   3735
         Begin VB.TextBox TxtBfoIndustrial 
            Height          =   285
            Left            =   2040
            TabIndex        =   51
            Tag             =   "2"
            Top             =   660
            Width           =   795
         End
         Begin VB.TextBox TxtGastosGenerales 
            Height          =   285
            Left            =   420
            TabIndex        =   50
            Tag             =   "2"
            Top             =   660
            Width           =   795
         End
         Begin VB.CheckBox ChkGastosYBfo 
            Caption         =   "Gastos y Benficio Industrial"
            Height          =   195
            Left            =   120
            TabIndex        =   49
            Tag             =   "1"
            ToolTipText     =   "Se aplican sobre el concepto total"
            Top             =   0
            Width           =   2295
         End
         Begin VB.Label Label24 
            Caption         =   "Beneficio Industrial:"
            Height          =   195
            Left            =   2040
            TabIndex        =   53
            Top             =   300
            Width           =   1395
         End
         Begin VB.Label Label23 
            Caption         =   "Gastos Generales:"
            Height          =   255
            Left            =   420
            TabIndex        =   52
            Top             =   300
            Width           =   1755
         End
      End
      Begin VB.ComboBox CmbAvisoGeotecnico 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":32E8
         Left            =   -71220
         List            =   "FrmMUnPresupuesto.frx":32EF
         Style           =   2  'Dropdown List
         TabIndex        =   46
         Tag             =   "2"
         Top             =   2820
         Width           =   2715
      End
      Begin VB.CheckBox ChkTotalPresupuesto 
         Caption         =   "Total Presupuesto"
         Height          =   255
         Left            =   -72660
         TabIndex        =   45
         Top             =   6990
         Value           =   1  'Checked
         Width           =   1695
      End
      Begin VB.Frame Frame2 
         Height          =   555
         Left            =   -68265
         TabIndex        =   42
         Top             =   2940
         Width           =   2415
         Begin VB.Label LbCrear 
            AutoSize        =   -1  'True
            ForeColor       =   &H00C00000&
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   44
            Top             =   240
            Visible         =   0   'False
            Width           =   2265
         End
         Begin VB.Label LbCrear 
            AutoSize        =   -1  'True
            Caption         =   "Presupuesto creado por:"
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   0
            Left            =   165
            TabIndex        =   43
            Top             =   30
            Visible         =   0   'False
            Width           =   1740
         End
      End
      Begin Crystal.CrystalReport CR_Informe 
         Left            =   -71040
         Top             =   7380
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   348160
         ReportFileName  =   "F:\SegData\Prgs\Programacion\CEMOSA\Data\Infpfact.rpt"
         WindowTitle     =   "Borrador de facturación"
         WindowControlBox=   -1  'True
         WindowMaxButton =   -1  'True
         WindowMinButton =   -1  'True
         PrintFileLinesPerPage=   60
         WindowShowPrintSetupBtn=   -1  'True
      End
      Begin VB.TextBox TxtAnyo 
         Height          =   285
         Left            =   -66720
         TabIndex        =   25
         Tag             =   "1"
         Top             =   900
         Width           =   975
      End
      Begin VB.TextBox TxtObservaciones 
         Height          =   285
         Left            =   -74640
         TabIndex        =   8
         Tag             =   "2"
         Top             =   660
         Width           =   8865
      End
      Begin VB.TextBox TxtMeses 
         Height          =   285
         Left            =   -74640
         TabIndex        =   9
         Tag             =   "2"
         Top             =   1260
         Width           =   1095
      End
      Begin VB.CommandButton CmdPresAceptado 
         Caption         =   "Presupuesto aceptado... (Crear Obra nueva)"
         Height          =   555
         Index           =   0
         Left            =   -74880
         TabIndex        =   26
         Tag             =   "1"
         Top             =   6780
         Width           =   1875
      End
      Begin VB.CommandButton CmdImprimir 
         Caption         =   "Imprimir detalle"
         Height          =   315
         Index           =   1
         Left            =   -74700
         TabIndex        =   13
         Tag             =   "2"
         Top             =   6540
         Width           =   3015
      End
      Begin VB.CommandButton CmdImprimir 
         Caption         =   "Imprimir todo"
         Height          =   315
         Index           =   2
         Left            =   -71640
         TabIndex        =   14
         Tag             =   "2"
         Top             =   6540
         Width           =   1215
      End
      Begin VB.CheckBox ChkPresPreliminar 
         Caption         =   "Presentación preliminar"
         Height          =   255
         Index           =   0
         Left            =   -74700
         TabIndex        =   16
         Tag             =   "2"
         Top             =   6990
         Width           =   2040
      End
      Begin VB.ComboBox CmbTipo 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":3307
         Left            =   -73560
         List            =   "FrmMUnPresupuesto.frx":3309
         TabIndex        =   23
         Tag             =   "1"
         Text            =   "CmbTipo"
         Top             =   900
         Width           =   2505
      End
      Begin VB.OptionButton OptMostrar 
         Caption         =   "Imprimir sólo información"
         Height          =   255
         Index           =   1
         Left            =   -71520
         TabIndex        =   12
         Top             =   3660
         Value           =   -1  'True
         Width           =   2535
      End
      Begin VB.CommandButton CmdImprimir 
         Caption         =   "Imprimir detalle completo"
         Height          =   315
         Index           =   3
         Left            =   -70380
         TabIndex        =   15
         Tag             =   "2"
         Top             =   6540
         Width           =   2175
      End
      Begin VB.ComboBox CmbMatrices 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":330B
         Left            =   -74880
         List            =   "FrmMUnPresupuesto.frx":3312
         Style           =   2  'Dropdown List
         TabIndex        =   17
         Top             =   960
         Width           =   2775
      End
      Begin VB.TextBox TxtTotal 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000018&
         Height          =   285
         Index           =   2
         Left            =   -69060
         TabIndex        =   22
         TabStop         =   0   'False
         Tag             =   "4"
         Top             =   4740
         Width           =   1335
      End
      Begin VB.TextBox TxtTotal 
         BackColor       =   &H80000018&
         Height          =   285
         Index           =   1
         Left            =   -69000
         TabIndex        =   21
         TabStop         =   0   'False
         Tag             =   "4"
         Top             =   4740
         Width           =   1335
      End
      Begin VB.CommandButton CmdDEliminar 
         Caption         =   "&Eliminar"
         Height          =   315
         Left            =   -73740
         TabIndex        =   20
         Top             =   4500
         Width           =   1095
      End
      Begin VB.CommandButton CmdDNuevo 
         Caption         =   "&Nueva"
         Height          =   315
         Left            =   -74820
         TabIndex        =   19
         Top             =   4500
         Width           =   975
      End
      Begin VB.CommandButton CmdImprimirWord 
         Caption         =   "&Imprimir"
         Height          =   315
         Left            =   -71880
         TabIndex        =   18
         Top             =   960
         Width           =   1095
      End
      Begin VB.ComboBox CmbPConcepto 
         Height          =   315
         ItemData        =   "FrmMUnPresupuesto.frx":3323
         Left            =   -73440
         List            =   "FrmMUnPresupuesto.frx":3325
         TabIndex        =   10
         Tag             =   "2"
         Top             =   1260
         Width           =   7665
      End
      Begin VB.CommandButton CmdConfigurar 
         Caption         =   "Configurar"
         Height          =   315
         Left            =   -70530
         TabIndex        =   24
         Top             =   900
         Width           =   1035
      End
      Begin MSDataGridLib.DataGrid DbGridPropiedades 
         Height          =   2775
         Left            =   -74820
         TabIndex        =   28
         Top             =   1680
         Width           =   8955
         _ExtentX        =   15796
         _ExtentY        =   4895
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   15
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   "Nombre"
            Caption         =   "Nombre"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   "Valor"
            Caption         =   "Valor"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            AllowRowSizing  =   0   'False
            BeginProperty Column00 
               ColumnWidth     =   2624,882
            EndProperty
            BeginProperty Column01 
               ColumnWidth     =   5715,213
            EndProperty
         EndProperty
      End
      Begin MSDataGridLib.DataGrid DbGridMant 
         Height          =   4035
         Index           =   0
         Left            =   -74760
         TabIndex        =   29
         Top             =   720
         Width           =   7635
         _ExtentX        =   13467
         _ExtentY        =   7117
         _Version        =   393216
         AllowUpdate     =   -1  'True
         BorderStyle     =   0
         HeadLines       =   1
         RowHeight       =   15
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   6
         BeginProperty Column00 
            DataField       =   "Codigo"
            Caption         =   "Código"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   "DescCorta"
            Caption         =   "Descripción"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column02 
            DataField       =   "NumeroUnidades"
            Caption         =   "Unidades"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "PrecioUnitario"
            Caption         =   "Precio"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "PrecioTotal"
            Caption         =   "Total"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column05 
            DataField       =   "Aceptada"
            Caption         =   "Acep."
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   5
               Format          =   ""
               HaveTrueFalseNull=   1
               TrueValue       =   "Sí"
               FalseValue      =   "No"
               NullValue       =   ""
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            AllowRowSizing  =   0   'False
            BeginProperty Column00 
               Locked          =   -1  'True
            EndProperty
            BeginProperty Column01 
               Locked          =   -1  'True
            EndProperty
            BeginProperty Column02 
               Locked          =   -1  'True
            EndProperty
            BeginProperty Column03 
               Alignment       =   1
               Locked          =   -1  'True
            EndProperty
            BeginProperty Column04 
               Alignment       =   1
               Locked          =   -1  'True
            EndProperty
            BeginProperty Column05 
               Button          =   -1  'True
            EndProperty
         EndProperty
      End
      Begin MSDataGridLib.DataGrid DbGridMant 
         Height          =   3855
         Index           =   1
         Left            =   -74820
         TabIndex        =   30
         Top             =   720
         Width           =   8415
         _ExtentX        =   14843
         _ExtentY        =   6800
         _Version        =   393216
         AllowUpdate     =   0   'False
         BorderStyle     =   0
         HeadLines       =   1
         RowHeight       =   15
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   5
         BeginProperty Column00 
            DataField       =   "Codigo"
            Caption         =   "Código"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   "DescCorta"
            Caption         =   "Descripción"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column02 
            DataField       =   "NumeroUnidades"
            Caption         =   "Unidades"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "PrecioUnitario"
            Caption         =   "Precio"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "0,00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   1
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "PrecioTotal"
            Caption         =   "Total"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "0,00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   1
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            AllowRowSizing  =   0   'False
            BeginProperty Column00 
               Alignment       =   2
               ColumnWidth     =   599,811
            EndProperty
            BeginProperty Column01 
               ColumnWidth     =   4050,142
            EndProperty
            BeginProperty Column02 
               Alignment       =   1
               ColumnWidth     =   900,284
            EndProperty
            BeginProperty Column03 
               Alignment       =   1
               ColumnWidth     =   975,118
            EndProperty
            BeginProperty Column04 
               Alignment       =   1
               ColumnWidth     =   1530,142
            EndProperty
         EndProperty
      End
      Begin MSComDlg.CommonDialog CDialogo 
         Left            =   -71670
         Top             =   7350
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
         CancelError     =   -1  'True
         DialogTitle     =   "Abrir documento"
         Filter          =   "Documentos de Word (*.doc)|*.doc"
      End
      Begin VB.OptionButton OptMostrar 
         Caption         =   "Imprimir total menos bonificación"
         Height          =   315
         Index           =   0
         Left            =   -71520
         TabIndex        =   11
         Top             =   3360
         Width           =   2835
      End
      Begin MSDataGridLib.DataGrid DbGridMant 
         Height          =   3450
         Index           =   2
         Left            =   180
         TabIndex        =   78
         Top             =   465
         Width           =   9150
         _ExtentX        =   16140
         _ExtentY        =   6085
         _Version        =   393216
         AllowUpdate     =   -1  'True
         HeadLines       =   1
         RowHeight       =   15
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   5
         BeginProperty Column00 
            DataField       =   "FechaEmision"
            Caption         =   "FechaEmisión"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "dd/MM/yy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   3
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   "FechaAceptacion"
            Caption         =   "FechaAcep."
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "dd/MM/yy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1034
               SubFormatType   =   3
            EndProperty
         EndProperty
         BeginProperty Column02 
            DataField       =   "NombreObra"
            Caption         =   "Obra"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "Observaciones"
            Caption         =   "Descripción"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1034
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "Aceptado"
            Caption         =   "Acep."
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   5
               Format          =   "0,000E+00"
               HaveTrueFalseNull=   1
               TrueValue       =   "S"
               FalseValue      =   "N"
               NullValue       =   ""
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   7
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            AllowRowSizing  =   0   'False
            BeginProperty Column00 
               Alignment       =   2
               Locked          =   -1  'True
               ColumnWidth     =   1080
            EndProperty
            BeginProperty Column01 
               ColumnWidth     =   959,811
            EndProperty
            BeginProperty Column02 
               Locked          =   -1  'True
               ColumnWidth     =   3075,024
            EndProperty
            BeginProperty Column03 
               ColumnWidth     =   3030,236
            EndProperty
            BeginProperty Column04 
               Alignment       =   2
               Locked          =   -1  'True
               ColumnWidth     =   510,236
            EndProperty
         EndProperty
      End
      Begin MSDataGridLib.DataGrid DbGridMant 
         Height          =   3855
         Index           =   3
         Left            =   -74760
         TabIndex        =   287
         Top             =   720
         Width           =   8415
         _ExtentX        =   14843
         _ExtentY        =   6800
         _Version        =   393216
         AllowUpdate     =   0   'False
         BorderStyle     =   0
         HeadLines       =   1
         RowHeight       =   15
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   8
         BeginProperty Column00 
            DataField       =   "Email"
            Caption         =   "Email"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   "Fax"
            Caption         =   "Fax"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column02 
            DataField       =   "FechaEnvio"
            Caption         =   "Fecha de Envio"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "HoraEnvio"
            Caption         =   "H. Envio"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "DocumentoP"
            Caption         =   "Documento"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column05 
            DataField       =   "Documento1"
            Caption         =   "Documento1"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column06 
            DataField       =   "Documento2"
            Caption         =   "Documento2"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column07 
            DataField       =   "TipoEnvio"
            Caption         =   "Envio"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   3082
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            AllowRowSizing  =   0   'False
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
               ColumnWidth     =   929,764
            EndProperty
            BeginProperty Column02 
               Alignment       =   2
               ColumnWidth     =   1230,236
            EndProperty
            BeginProperty Column03 
               Alignment       =   2
               ColumnWidth     =   780,095
            EndProperty
            BeginProperty Column04 
               ColumnWidth     =   959,811
            EndProperty
            BeginProperty Column05 
               ColumnWidth     =   1035,213
            EndProperty
            BeginProperty Column06 
               ColumnWidth     =   1049,953
            EndProperty
            BeginProperty Column07 
               ColumnWidth     =   569,764
            EndProperty
         EndProperty
      End
      Begin VB.Label LabelAmpliaciones 
         Caption         =   "Con Ampliaciones"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   360
         Left            =   -73005
         TabIndex        =   312
         Top             =   7485
         Visible         =   0   'False
         Width           =   3240
      End
      Begin VB.Label Label39 
         Caption         =   "Tipo de ampliación:"
         Height          =   180
         Left            =   6750
         TabIndex        =   300
         Top             =   5310
         Width           =   1470
      End
      Begin VB.Label LblAcuerdo 
         Alignment       =   2  'Center
         Caption         =   "ACUERDO MARCO"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   -70995
         TabIndex        =   295
         Top             =   1545
         Visible         =   0   'False
         Width           =   2655
      End
      Begin VB.Label Label68 
         Caption         =   "€"
         Height          =   285
         Left            =   8625
         TabIndex        =   279
         Top             =   4965
         Width           =   255
      End
      Begin VB.Label Label67 
         Caption         =   "€"
         Height          =   255
         Left            =   5640
         TabIndex        =   278
         Top             =   4950
         Width           =   225
      End
      Begin VB.Label Label66 
         AutoSize        =   -1  'True
         Caption         =   "€"
         Height          =   195
         Index           =   0
         Left            =   2730
         TabIndex        =   277
         Top             =   4950
         Width           =   90
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Corredor de seguros:"
         Height          =   195
         Index           =   7
         Left            =   -74640
         TabIndex        =   263
         Top             =   2580
         Width           =   1470
      End
      Begin VB.Label Label51 
         Height          =   195
         Left            =   -67170
         TabIndex        =   256
         Top             =   3990
         Width           =   225
      End
      Begin VB.Label Label50 
         Caption         =   "% Colaborador"
         Height          =   195
         Left            =   -68040
         TabIndex        =   255
         Top             =   4290
         Width           =   1065
      End
      Begin VB.Label LblEstado 
         AutoSize        =   -1  'True
         Caption         =   "Estado"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   240
         Left            =   -74850
         TabIndex        =   252
         Top             =   7440
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label LblFirma 
         Caption         =   "Firma:"
         Height          =   195
         Left            =   -71220
         TabIndex        =   251
         Top             =   3990
         Width           =   1335
      End
      Begin VB.Label Label38 
         AutoSize        =   -1  'True
         Caption         =   "Fecha fin obra:"
         Height          =   195
         Left            =   -73080
         TabIndex        =   184
         Top             =   4020
         Width           =   1065
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "Fecha inicio obra:"
         Height          =   195
         Left            =   -74700
         TabIndex        =   183
         Top             =   4020
         Width           =   1260
      End
      Begin VB.Label Label36 
         AutoSize        =   -1  'True
         Caption         =   "Colaboradores:"
         Height          =   195
         Left            =   -70080
         TabIndex        =   178
         Top             =   1650
         Width           =   1065
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Hoja de datos:"
         Height          =   195
         Index           =   4
         Left            =   -66600
         TabIndex        =   177
         Top             =   1680
         Visible         =   0   'False
         Width           =   1035
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Compañía de seguros:"
         Height          =   195
         Index           =   3
         Left            =   -74640
         TabIndex        =   176
         Top             =   1650
         Width           =   1605
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Nº de Poliza:"
         Height          =   195
         Index           =   5
         Left            =   -71220
         TabIndex        =   175
         Top             =   1650
         Width           =   915
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "P.E.M."
         Height          =   195
         Index           =   2
         Left            =   -74850
         TabIndex        =   166
         Top             =   1380
         Width           =   480
      End
      Begin VB.Label Label3 
         Caption         =   "Sucursal:"
         Height          =   195
         Index           =   3
         Left            =   -74850
         TabIndex        =   164
         Top             =   660
         Width           =   1095
      End
      Begin VB.Label Label33 
         Caption         =   "SUMA TOTAL:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Index           =   2
         Left            =   6555
         TabIndex        =   98
         Top             =   4665
         Width           =   1575
      End
      Begin VB.Label Label33 
         Caption         =   "TOTAL AMPLIACIONES (aceptadas):"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Index           =   1
         Left            =   3210
         TabIndex        =   96
         Top             =   4650
         Width           =   3315
      End
      Begin VB.Label Label33 
         Caption         =   "TOTAL PRESUPUESTO INICIAL:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Index           =   0
         Left            =   180
         TabIndex        =   94
         Top             =   4650
         Width           =   3315
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Nota:"
         Height          =   195
         Index           =   1
         Left            =   -74700
         TabIndex        =   90
         Top             =   4590
         Width           =   390
      End
      Begin VB.Label LblAvisoGeotecnico 
         Caption         =   "Aviso Presupuesto geotécnico:"
         Height          =   195
         Left            =   -71220
         TabIndex        =   47
         Top             =   2580
         Width           =   2355
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Tipo de presupuesto:"
         Height          =   195
         Index           =   0
         Left            =   -73560
         TabIndex        =   41
         Top             =   660
         Width           =   1500
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Año:"
         Height          =   195
         Index           =   0
         Left            =   -66720
         TabIndex        =   40
         Top             =   660
         Width           =   330
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Observaciones:"
         Height          =   195
         Left            =   -74640
         TabIndex        =   39
         Top             =   420
         Width           =   1110
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Meses:"
         Height          =   195
         Index           =   0
         Left            =   -74640
         TabIndex        =   38
         Top             =   1020
         Width           =   510
      End
      Begin VB.Label LabelAceptado 
         AutoSize        =   -1  'True
         Caption         =   "Aceptado"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   435
         Left            =   -72945
         TabIndex        =   37
         Top             =   6840
         Visible         =   0   'False
         Width           =   1425
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Subtipo:"
         Height          =   195
         Left            =   -69390
         TabIndex        =   36
         Top             =   660
         Width           =   585
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Programa - Presupuesto para:"
         Height          =   195
         Index           =   0
         Left            =   -73440
         TabIndex        =   35
         Top             =   1020
         Width           =   2100
      End
      Begin VB.Label Label21 
         Caption         =   "Matríz:"
         Height          =   195
         Left            =   -74880
         TabIndex        =   34
         Top             =   720
         Width           =   675
      End
      Begin VB.Label Label22 
         Caption         =   "Propiedades adicionales:"
         Height          =   195
         Left            =   -74640
         TabIndex        =   33
         Top             =   1380
         Width           =   2115
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Total:"
         Height          =   195
         Index           =   2
         Left            =   -70020
         TabIndex        =   32
         Top             =   4800
         Width           =   405
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Total:"
         Height          =   195
         Index           =   1
         Left            =   -70080
         TabIndex        =   31
         Top             =   4800
         Width           =   405
      End
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      Caption         =   "Compañía de seguros:"
      Height          =   195
      Index           =   6
      Left            =   420
      TabIndex        =   262
      Top             =   2610
      Width           =   1605
   End
End
Attribute VB_Name = "FrmMUnPresupuesto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'DOCFORM INICIO ------------------------------------------------------
'
'PROPOSITO :
'   Formulario que nos permite dar de alta, modificar, eliminar Presupuestos
'   Nos permite realizar todas las operacion que queramos con todo lo referente a Presupuestos, asi como lanzar informes
'
'DESCRIPCION :
'
'CATEGORIA : GUI
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCFORM FIN ----------------------------------------------------------

'Establecemos la variable que define el tipo de operación a realizar
Dim NuevoRegistro As Boolean
'Establecemos la variable que indica que estamos en proceso de edición de un registro
Dim EnEdicion As Boolean
'Establecemos la variable que indica que el registro ha sido bloquedo
Dim RegistroBloqueado As Boolean
'Recordset para las modificaciones en el Presupuesto.
Dim RsPresupuesto As New Recordset
'Establecemos la variable que almacena el IDCliente para el presupuesto.
Dim IDClientePresupuesto As Long
'Establecemos la variable que almacena el IDCliente para el presupuesto.
Dim PresupuestoAceptado As Boolean
Dim sTxtCodigo As String
Dim Cambio As Boolean
Dim RsMant(0 To 3) As New Recordset
Dim RsPropiedades As New Recordset
Dim RsDocumentos As New Recordset
Dim WordDoc(0 To 1) As String 'Pedro. 25 5 2006. Sustituye a dos textbox que estaban invisibles.



Sub ArrImpresionPresupIntec(DestinoImpresion As Integer, frmOrigen As Form, vPreliminar As Boolean, pPresupuesto As String, pPeticionario As String, pNombreObra As String, pDon As String, pPersona As String, pFecha As String, pConcepto As String, pDescuento As Double, pMostrar As Boolean, Optional pImprimirTodo As Boolean = False, Optional Logotipo As Boolean = False)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un base de datos de Access con una tabla para lanzar un informe de CrystalReport
'
'PARAMETROS :
'   frmOrigen      --> Formulario de Origen
'   vPreliminar    --> Indica si se a mostrar una presentacion preliminar del listado
'   pPresupuesto   --> Cadena an la que se guardara un texto de la obra a imprimir
'   pPeticionario  --> No se utiliza
'   pNombreObra    --> No se utiliza
'   pDon           --> No se utiliza
'   pPersona       --> No se utiliza
'   pFecha         --> Valor que se utiliza para asignarselo a un campo Fecha de la tabla de Access creada
'   pConcepto      --> No se utiliza
'   pDescuento     --> Valor que se utiliza para asignarselo a un campo Descuento de la tabla de Access creada
'   pIVA           --> No se utiliza
'   pMostrar       --> No se utiliza
'
'RETORNO :
'
'PROCESO :
'   1) Crea un base de datos de Access llamada "Presupuestos.mdb"
'   2) Dependiendo del Tab en el que estemos guarda valores
'      -Si el Tab es el de "Ampliaciones" guarda valores del recordset RsMant(2)
'      -Si es otro distinto lee de variables globales y cajas de texto
'   3) Si la variable pImprimirTodo es .T.
'      -Crea un tabla en Access llamada "Presupuestos" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de las obras que tengan el valor de la
'       variable global m_IdObra
'      -Sino, Crea un tabla en Access llamada "Presupuestos" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de los presupuestos que en su Id tengas
'       el valor de la variable IdPresu asignado anteriormente
'   4) Crea un recordset de "Presupuestos", "PresupuestosyTarifas", "Materiales", "Tarifas", "Titulos" de los
'      presupuestos no aceptados y de los presupuestos que en su Id tengas el valor de la variable global
'      m_IdPresupuestos
'   5) Recorre le recordset con un While y actualiza el campo Presupuestos!Titulos_DescLarga con el valor del campo al que
'      correspondencia en el recordset y lo hace en los registros que cumplan Titulos_Codigo = RsTitulos!Titulos_Codigo
'   6) Añade a la tabla de Access "Presupuestos" varios campos necesarios para la impresion
'   7) Crea un recordset de "Presupuestos" y selecciona los registros cuyo codigo de tarifa este entre 8000 y 9000
'   8) Actualiza el campo CondicionesGenerales de la tabla de Access con un 1 en todos los registros del recordset
'   9) Crea un recordset de "Detalle" con todos los registros actualiza los registros recorriendolos con un While
'      y modificando el campo Presupuestos!Orden
'  10) Actualiza varios campos mas de la tabla con valores de variables, cajas de texto y CheckBox del formulario
'  11) Prepara varias cadenas las cuales va a sacar en el listado y dependiendo del valor de la variable pImprimirTodo
'      y de varios controles del formulario lanza varios informes
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2003/03     HDT     Unificación de la Aplicación.
'
'DOCF FIN -------------------------------------------------------------

    Dim ss As String

    If Not FrmOpciones.ActivarImpresora Then
        Exit Sub
    End If

    Dim dbBFact As ClsTablaAccess
    Dim NomBase2 As String
    Dim Rs As New Recordset
    Dim Nombase As String
    Nombase = m_Unidad & "\Temp\Presupuestos" 'm_Unidad & "\Temp\Presupuestos.mdb"
    Nombase = SufijoNombase(Nombase) & ".mdb"
    Set dbBFact = wsAplicacion.CreateDatabase(Nombase)
    dbBFact.CloseA
    
    Dim Preeliminar As Integer
    If vPreliminar = True Then
        Preeliminar = 1
    Else
        Preeliminar = 0
    End If

    Screen.MousePointer = 11
    If pImprimirTodo Then
       ' dbPrincipal.ExecuteEx "SELECT Distinct Clientes.CIF,Clientes.Direccion,Clientes.Cliente,Obras.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Otro,Titulos.Codigo AS Titulos_Codigo,PresupuestosyTarifas.IDPresupuesto, Titulos.DescLarga AS Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo AS Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4,Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros" _
            & " FROM Clientes INNER JOIN Obras ON Clientes.IDCliente = Obras.IDCliente FULL OUTER JOIN Titulos INNER JOIN Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa ON Titulos.IDTitulo = Tarifas.IDTitulo INNER JOIN Presupuestos ON PresupuestosyTarifas.IDPresupuesto = Presupuestos.IDPresupuesto  ON Obras.IDObra = Presupuestos.IDObra  " _
            & " WHERE PresupuestosyTarifas.Aceptada = 1 And (((Presupuestos.IDObra)=" & m_IDObra & "))" _
            & " GROUP BY Clientes.CIF,Clientes.Direccion,Clientes.Cliente,Obras.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Otro,Titulos.Codigo ,PresupuestosyTarifas.IDPresupuesto, Titulos.DescLarga , Materiales.DescMaterial, Tarifas.Codigo ,  PresupuestosyTarifas.Concepto ,Tarifas.DescCorta , (PresupuestosyTarifas.NumeroUnidades) , PresupuestosyTarifas.PrecioUnitario, (PresupuestosyTarifas.PrecioTotal) , PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4,Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros " _
            & " ORDER BY Titulos.Codigo, Tarifas.Codigo ", "Presupuestos", NomBase
    Else
    ' 7 11 2001
    ' Modifico Cliente.Cliente por Presup.Peticionario as Cliente y
    ' Obras.NombreObra por Presupuestos.NombreObra
    '' copia seg. 30 / 11 / 2001
          '  dbPrincipal.ExecuteEx "SELECT Distinct Clientes.CIF,Clientes.Direccion, Presupuestos.Peticionario as Cliente, Presupuestos.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Otro,Titulos.Codigo As Titulos_Codigo,PresupuestosyTarifas.IDPresupuesto, " _
            & " Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo As Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4, Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros, Presupuestos.Don + ' ' + Presupuestos.Nombre + ' ' + Presupuestos.Apellidos As NombreCompleto,Presupuestos.CondicionesParticulares2, " & _
            "Presupuestos.CondicionesParticulares, Presupuestos.IdCondicionesPago, Presupuestos.IdFormaPago, CondicionesPago.CondicionesPago " _
            & " FROM Clientes INNER JOIN Obras ON Clientes.IDCliente = Obras.IDCliente FULL OUTER JOIN Titulos INNER JOIN Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa ON Titulos.IDTitulo = Tarifas.IDTitulo INNER JOIN Presupuestos ON PresupuestosyTarifas.IDPresupuesto = Presupuestos.IDPresupuesto  ON Obras.IDObra = Presupuestos.IDObra  " _
            & " WHERE PresupuestosyTarifas.Aceptada = 1 And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & "))" _
            & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Presupuestos", NomBase
    '' 2 12 2001
        'dbPrincipal.ExecuteEx "SELECT Distinct Clientes.CIF,Clientes.Direccion, Presupuestos.Peticionario as Cliente, Presupuestos.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Otro,Titulos.Codigo As Titulos_Codigo,PresupuestosyTarifas.IDPresupuesto, " _
            & " Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo As Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4, Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros, Presupuestos.Don + ' ' + Presupuestos.Nombre + ' ' + Presupuestos.Apellidos As NombreCompleto,Presupuestos.CondicionesParticulares2, " & _
            "Presupuestos.CondicionesParticulares, Presupuestos.IdCondicionesPago, Presupuestos.IdFormaPago, CondicionesPago.CondicionesPago, CondicionesPago.CondicionesPago2, FormasPago.FormaPago " _
            & " FROM FormasPago INNER JOIN Clientes INNER JOIN Obras ON Clientes.IDCliente = Obras.IDCliente ON FormasPago.IDFormaPago = Clientes.IDFormaPago AND FormasPago.IDFormaPago = Obras.IDFormaPago FULL OUTER JOIN CondicionesPago RIGHT OUTER JOIN Titulos INNER JOIN Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa ON Titulos.IDTitulo = Tarifas.IDTitulo INNER JOIN Presupuestos ON PresupuestosyTarifas.IdPresupuesto = Presupuestos.IdPresupuesto ON CondicionesPago.IdCondicionesPago = Presupuestos.IdCondicionesPago ON Obras.IDObra = Presupuestos.IDObra " _
            & " WHERE PresupuestosyTarifas.Aceptada = 1 And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & "))" _
            & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Presupuestos", NomBase
             
        'Jose y Pedro. 25 5 2006. El campo Tarifas_DescLarga antes no concatenaba los cuatro campos de concepto de la tabla presupuestosyTarifas, por lo que cuando se utilizaba mas de uno de estos campos
        'el informe fallaba. (Antes 'case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga')
        dbPrincipal.ExecuteEx "SELECT Distinct Clientes.CIF,Clientes.Direccion, Presupuestos.Peticionario as Cliente, Presupuestos.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Nota, Presupuestos.Otro,Titulos.Codigo As Titulos_Codigo,PresupuestosyTarifas.IDPresupuesto, " _
            & " Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo As Tarifas_Codigo,case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto + PresupuestosyTarifas.Concepto2 + PresupuestosyTarifas.Concepto3 + PresupuestosyTarifas.Concepto4  else Tarifas.DescCorta end As Tarifas_DescLarga , PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4, Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros, Presupuestos.Don + ' ' + Presupuestos.Nombre + ' ' + Presupuestos.Apellidos As NombreCompleto,Presupuestos.CondicionesParticulares2, " & _
            "Presupuestos.CondicionesParticulares, Presupuestos.IdCondicionesPago, Presupuestos.IdFormaPago, CondicionesPago.CondicionesPago, CondicionesPago.CondicionesPago2, FormasPago.FormaPago, Presupuestos.FechaEmision," _
            & " Presupuestos.ControlInstalaciones, Presupuestos.ControlInstalaciones2, Presupuestos.ControlInstalaciones3, Presupuestos.ValorInstalaciones, Presupuestos.ValorInstalaciones2, Presupuestos.ValorInstalaciones3," _
            & " CSSFP, CSSFE, EstudiosBasSegSal, OtrDesSegSal, ValorCSSFP, SegSalEuros, ValorEstudiosBasSegSal, ValorOtrDesSegSal, Presupuestos.Meses" _
            & " FROM FormasPago FULL OUTER JOIN CondicionesPago RIGHT OUTER JOIN Titulos INNER JOIN Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa ON Titulos.IDTitulo = Tarifas.IDTitulo INNER JOIN Presupuestos ON PresupuestosyTarifas.IdPresupuesto = Presupuestos.IdPresupuesto ON CondicionesPago.IdCondicionesPago = Presupuestos.IdCondicionesPago ON FormasPago.IDFormaPago = Presupuestos.IdFormaPago FULL OUTER Join Clientes INNER JOIN Obras ON Clientes.IDCliente = Obras.IDCliente ON Presupuestos.IdObra = Obras.IdObra " _
            & " WHERE PresupuestosyTarifas.Aceptada = 1 And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & "))" _
            & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Presupuestos", Nombase
    End If
    
    ''''''''''''''''''''''' 30 4 2002
    Dim tbDetalle As ADOX.Table
    Dim Campo As ADOX.Column
    Set dbBFact = wsAplicacion.OpenDatabase(Nombase, True)
    
    Set tbDetalle = dbBFact.TableDefs("Presupuestos")
    
    Set Campo = dbBFact.CreateField("FechaEmisionFormatoLargo", adChar, 50)
    Campo.Attributes = adColNullable
    tbDetalle.Columns.Append Campo
    
    Set Campo = Nothing
    Set tbDetalle = Nothing
    
    Dim RsPresup As New Recordset
    Call dbBFact.PueblaRecordset(RsPresup, "Presupuestos")
    Dim Cadena As String
    If Not RsPresup.EOF Then
        Cadena = CmbSucursal & Format(RsPresup!FechaEmision, ", dd") & " de " & Format(RsPresup!FechaEmision, "mmmm") & " de " & Format(RsPresup!FechaEmision, "yyyy")
        dbBFact.Execute "Update Presupuestos Set FechaEmisionFormatoLargo = '" & Cadena & "'"
    End If
    
    'Jose. 20 10 2005. Esta parte de codigo es para coger el CIF de la hoja de datos si
    'el cliente todavía no tiene ningún cliente asignado.
    'También coge la direccion pero del presupuesto porque no existe en la Hoja de datos, o sea, hay un
    'campo que se llama Direccion pero parece que no es el adecuado.
    Dim IdCliente As Integer
    Dim IDHojaDatos As Long
    Dim CIF As String
    Dim direccion As String
    'If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_I" Then
    If m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
        IdCliente = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "IDCliente")
        If IdCliente < 1 Then
            If DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "IDHojaDatos") <> vbNull Then
                IDHojaDatos = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "IDHojaDatos")
                If IDHojaDatos > 0 Then
                    CIF = DameExpresion("IDHojaDatos", IDHojaDatos, "HojaDatos", "CIF") & ""
                    direccion = DameExpresion("IDHojaDatos", IDHojaDatos, "Presupuestos", "Direccion") & ""
                    dbBFact.Execute "UPDATE Presupuestos SET CIF = '" & CIF & "' "
                    dbBFact.Execute "UPDATE Presupuestos SET Direccion = '" & direccion & "' "
                End If
            End If
        End If
    End If
    '---------------------------------------------------------------------------------
    
    RsPresup.Close
    Set RsPresup = Nothing
    dbBFact.CloseA
    
    '''''''''''''''''''''''''''''
    
    If dbPrincipal.RecordsAffected = 0 Then
        Screen.MousePointer = 0
        Alerta ("El presupuesto o plantilla no tiene detalle de tarifas.")
        Exit Sub
    End If
    
    Call TitulosCorreoPorIDFirma(CmbFirma.ItemData(CmbFirma.ListIndex))
 
    pPresupuesto = "P" & DameExpresion("IdSucursal", CmbSucursal.ItemData(CmbSucursal.ListIndex), "Sucursales", "Codigo") & " / " & pPresupuesto
'    If UCase(pConcepto) = "ASISTENCIA TÉCNICA" Or UCase(pConcepto) = "DIAGNOSIS DE PATOLOGIA" Then
'                   Call LanzarInforme("PresupuestosEuros2.rpt", NomBase, Preeliminar, _
                   Me.Caption, 1, False, "Referencia", "'" & pPresupuesto & "'", "Concepto", "'" & pConcepto & "'", "Titulo1", "'" & m_DirectorTit & "'", "Titulo2", "'" & m_JefeTit & ". " & m_Cargo & "'", "Logotipo", "'" & ChkLogotipo.Value & "'", "Firma2", "'" & m_Jefe & "'")
'    Else

    If CmbTipo.Text = "SEGURIDAD Y SALUD" Then
        If DestinoImpresion = 0 Then
            Call LanzarInforme("PresupuestosEuros1SS.rpt", Nombase, Preeliminar, _
            Me.Caption, 1, False, "Referencia", "'" & pPresupuesto & "'", "Concepto", "'" & pConcepto & "'", "Titulo1", "'" & m_DirectorTit & "'", "Titulo2", "'" & m_JefeTit & ". " & m_Cargo & "'", "Logotipo", "'" & ChkLogotipo.Value & "'", "Firma2", "'" & m_Jefe & "'")
        Else
            Call LanzarInformePDF("PresupuestosEuros1SS.rpt", Nombase, Preeliminar, _
            Me.Caption, 1, False, "Referencia", "'" & pPresupuesto & "'", "Concepto", "'" & pConcepto & "'", "Titulo1", "'" & m_DirectorTit & "'", "Titulo2", "'" & m_JefeTit & ". " & m_Cargo & "'", "Logotipo", "'" & ChkLogotipoAmpl.Value & "'", "Firma2", "'" & m_Jefe & "'")
        End If
    Else
        If DestinoImpresion = 0 Then
            Call LanzarInforme("PresupuestosEuros1.rpt", Nombase, Preeliminar, _
            Me.Caption, 1, False, "Referencia", "'" & pPresupuesto & "'", "Concepto", "'" & pConcepto & "'", "Titulo1", "'" & m_DirectorTit & "'", "Titulo2", "'" & m_JefeTit & ". " & m_Cargo & "'", "Logotipo", "'" & ChkLogotipo.Value & "'", "Firma2", "'" & m_Jefe & "'")
        Else
            Call LanzarInformePDF("PresupuestosEuros1.rpt", Nombase, Preeliminar, _
            Me.Caption, 1, False, "Referencia", "'" & pPresupuesto & "'", "Concepto", "'" & pConcepto & "'", "Titulo1", "'" & m_DirectorTit & "'", "Titulo2", "'" & m_JefeTit & ". " & m_Cargo & "'", "Logotipo", "'" & ChkLogotipoAmpl.Value & "'", "Firma2", "'" & m_Jefe & "'")
        End If
    End If


'    End If
    Me.Enabled = True
    'Me.SetFocus
    Screen.MousePointer = 0
End Sub

Sub ArrImpresionPresupAmplIntec(frmOrigen As Form, vPreliminar As Boolean, pPresupuesto As String, pPeticionario As String, pNombreObra As String, pDon As String, pPersona As String, pFecha As String, pConcepto As String, pDescuento As Double, pMostrar As Boolean, Optional pImprimirTodo As Boolean = False, Optional Logotipo As Boolean = False)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un base de datos de Access con una tabla para lanzar un informe de CrystalReport para imprimir una ampliación de un presupuesto
'
'PARAMETROS :
'   frmOrigen      --> Formulario de Origen
'   vPreliminar    --> Indica si se a mostrar una presentacion preliminar del listado
'   pPresupuesto   --> Cadena an la que se guardara un texto de la obra a imprimir
'   pPeticionario  --> No se utiliza
'   pNombreObra    --> No se utiliza
'   pDon           --> No se utiliza
'   pPersona       --> No se utiliza
'   pFecha         --> Valor que se utiliza para asignarselo a un campo Fecha de la tabla de Access creada
'   pConcepto      --> No se utiliza
'   pDescuento     --> Valor que se utiliza para asignarselo a un campo Descuento de la tabla de Access creada
'   pIVA           --> No se utiliza
'   pMostrar       --> No se utiliza
'
'RETORNO :
'
'PROCESO :
'   1) Crea un base de datos de Access llamada "Presupuestos.mdb"
'   2) Dependiendo del Tab en el que estemos guarda valores
'      -Si el Tab es el de "Ampliaciones" guarda valores del recordset RsMant(2)
'      -Si es otro distinto lee de variables globales y cajas de texto
'   3) Si la variable pImprimirTodo es .T.
'      -Crea un tabla en Access llamada "Presupuestos" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de las obras que tengan el valor de la
'       variable global m_IdObra
'      -Sino, Crea un tabla en Access llamada "Presupuestos" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de los presupuestos que en su Id tengas
'       el valor de la variable IdPresu asignado anteriormente
'   4) Crea un recordset de "Presupuestos", "PresupuestosyTarifas", "Materiales", "Tarifas", "Titulos" de los
'      presupuestos no aceptados y de los presupuestos que en su Id tengas el valor de la variable global
'      m_IdPresupuestos
'   5) Recorre le recordset con un While y actualiza el campo Presupuestos!Titulos_DescLarga con el valor del campo al que
'      correspondencia en el recordset y lo hace en los registros que cumplan Titulos_Codigo = RsTitulos!Titulos_Codigo
'   6) Añade a la tabla de Access "Presupuestos" varios campos necesarios para la impresion
'   7) Crea un recordset de "Presupuestos" y selecciona los registros cuyo codigo de tarifa este entre 8000 y 9000
'   8) Actualiza el campo CondicionesGenerales de la tabla de Access con un 1 en todos los registros del recordset
'   9) Crea un recordset de "Detalle" con todos los registros actualiza los registros recorriendolos con un While
'      y modificando el campo Presupuestos!Orden
'  10) Actualiza varios campos mas de la tabla con valores de variables, cajas de texto y CheckBox del formulario
'  11) Prepara varias cadenas las cuales va a sacar en el listado y dependiendo del valor de la variable pImprimirTodo
'      y de varios controles del formulario lanza varios informes
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2005/08     Jose. Nueva opción del programa
'
'DOCF FIN -------------------------------------------------------------

    Dim ss As String

    If Not FrmOpciones.ActivarImpresora Then
        Exit Sub
    End If

    Dim dbBFact As ClsTablaAccess
    Dim NomBase2 As String
    Dim Rs As New Recordset
    Dim Nombase As String
    
    Dim RsAmpliacion As New Recordset 'Jose. 16 8 2005. Nuevo rs para la ampliación.
    Dim RsAmpliacionFecha As New Recordset 'Jose. 24 8 2005. Para obtener la fecha de emision de la ampliacion
    
    Nombase = m_Unidad & "\Temp\Presupuestos"
    Nombase = SufijoNombase(Nombase) & ".mdb"
    Set dbBFact = wsAplicacion.CreateDatabase(Nombase)
    dbBFact.CloseA
    
    Dim Preeliminar As Integer
    If vPreliminar = True Then
        Preeliminar = 1
    Else
        Preeliminar = 0
    End If

    Screen.MousePointer = 11
    
    'Jose. 16 8 2005.
    Call mClsPresupuestos.PueblaRecordset(RsAmpliacion, "SELECT sum(PrecioTotal) as total FROM PresupuestosYTarifas  WHERE IDPresupuesto = " & RsMant(2)!IdPresupuesto & " GROUP BY IDPresupuesto")
    'Jose. 24 8 2005
    Call mClsPresupuestos.PueblaRecordset(RsAmpliacionFecha, "SELECT FechaEmision FROM Presupuestos WHERE IDPresupuesto = " & RsMant(2)!IdPresupuesto)
    
    
    dbPrincipal.ExecuteEx "SELECT Distinct Clientes.CIF,Clientes.Direccion, Presupuestos.Peticionario as Cliente, Presupuestos.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Nota, Presupuestos.Otro,Titulos.Codigo As Titulos_Codigo,PresupuestosyTarifas.IDPresupuesto, " _
        & " Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo As Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4, Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros, Presupuestos.Don + ' ' + Presupuestos.Nombre + ' ' + Presupuestos.Apellidos As NombreCompleto,Presupuestos.CondicionesParticulares2, " & _
        "Presupuestos.CondicionesParticulares, Presupuestos.IdCondicionesPago, Presupuestos.IdFormaPago, CondicionesPago.CondicionesPago, CondicionesPago.CondicionesPago2, FormasPago.FormaPago, Presupuestos.FechaEmision " _
        & " FROM FormasPago FULL OUTER JOIN CondicionesPago RIGHT OUTER JOIN Titulos INNER JOIN Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa ON Titulos.IDTitulo = Tarifas.IDTitulo INNER JOIN Presupuestos ON PresupuestosyTarifas.IdPresupuesto = Presupuestos.IdPresupuesto ON CondicionesPago.IdCondicionesPago = Presupuestos.IdCondicionesPago ON FormasPago.IDFormaPago = Presupuestos.IdFormaPago FULL OUTER Join Clientes INNER JOIN Obras ON Clientes.IDCliente = Obras.IDCliente ON Presupuestos.IdObra = Obras.IdObra " _
        & " WHERE PresupuestosyTarifas.Aceptada = 1 And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & "))" _
        & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Presupuestos", Nombase
    
    'Jose. 2 9 2005.
    If RsMant(2)!EstanquidadFachada Then
        Call dbBFact.Execute("UPDATE Presupuestos SET EstanquidadFachadas = " & SustituirPor(Round(RsAmpliacion!Total, 2), ",", "."))
    ElseIf RsMant(2)!EstanquidadCubierta Then
        Call dbBFact.Execute("UPDATE Presupuestos SET EstanquidadCubiertas = " & SustituirPor(Round(RsAmpliacion!Total, 2), ",", "."))
    ElseIf RsMant(2)!ControlAcabado Then
        Call dbBFact.Execute("UPDATE Presupuestos SET ControlAcabados = " & SustituirPor(Round(RsAmpliacion!Total, 2), ",", "."))
    ElseIf RsMant(2)!Otro Then
        Call dbBFact.Execute("UPDATE Presupuestos SET Otros = " & SustituirPor(Round(RsAmpliacion!Total, 2), ",", "."))
    End If
    RsAmpliacion.Close
    Set RsAmpliacion = Nothing
    
    ''''''''''''''''''''''' 30 4 2002
    Dim tbDetalle As ADOX.Table
    Dim Campo As ADOX.Column
    Set dbBFact = wsAplicacion.OpenDatabase(Nombase, True)
    
    Set tbDetalle = dbBFact.TableDefs("Presupuestos")
    
    Set Campo = dbBFact.CreateField("FechaEmisionFormatoLargo", adChar, 50)
    Campo.Attributes = adColNullable
    tbDetalle.Columns.Append Campo
    
    Set Campo = Nothing
    Set tbDetalle = Nothing
    
    Dim RsPresup As New Recordset
    Call dbBFact.PueblaRecordset(RsPresup, "Presupuestos")
    Dim Cadena As String
    'Jose. 24 8 2005. Antes cogia la fecha del presupuesto inicial ahora de la ampliacion.
    If Not RsAmpliacionFecha.EOF Then
        Cadena = CmbSucursal & Format(RsAmpliacionFecha!FechaEmision, ", dd") & " de " & Format(RsAmpliacionFecha!FechaEmision, "mmmm") & " de " & Format(RsAmpliacionFecha!FechaEmision, "yyyy")
        dbBFact.Execute "Update Presupuestos Set FechaEmisionFormatoLargo = '" & Cadena & "'"
    End If
    RsPresup.Close
    Set RsPresup = Nothing
    RsAmpliacionFecha.Close 'Jose. 24 8 2005
    Set RsAmpliacionFecha = Nothing 'Jose. 24 8 2005
    '-------------------------------------------------------------------------
    dbBFact.CloseA
    
    '''''''''''''''''''''''''''''
    
    If dbPrincipal.RecordsAffected = 0 Then
        Screen.MousePointer = 0
        Alerta ("El presupuesto o plantilla no tiene detalle de tarifas.")
        Exit Sub
    End If
    
    Call TitulosCorreoPorIDFirma(CmbFirma.ItemData(CmbFirma.ListIndex))
 
    pPresupuesto = "P" & DameExpresion("IdSucursal", CmbSucursal.ItemData(CmbSucursal.ListIndex), "Sucursales", "Codigo") & " / " & pPresupuesto
    
    Call LanzarInforme("PresupuestosAmpliacion.rpt", Nombase, Preeliminar, _
        Me.Caption, 1, False, "Referencia", "'" & pPresupuesto & "'", "Concepto", "'" & pConcepto & "'", "Titulo1", "'" & m_DirectorTit & "'", "Titulo2", "'" & m_JefeTit & ". " & m_Cargo & "'", "Logotipo", "'" & ChkLogotipo.Value & "'", "Firma2", "'" & m_Jefe & "'")

    Me.Enabled = True
    'Me.SetFocus
    Screen.MousePointer = 0
End Sub


Sub ActualizarDbGrid(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Dependiendo del indice que trae como parametro, crea un recordset y lo referencia a su Grid correspondiente
'
'PARAMETROS :
'   Index  --> Indice del array de Grid
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If Index = 1 Then
        Call PrepararTodo(RsMant(0), DbGridMant(0), _
            "SELECT PresupuestosyTarifas.IDPyT,PresupuestosyTarifas.IDTarifa, Tarifas.Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As DescCorta, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario ,PresupuestosyTarifas.PrecioTotal , PresupuestosyTarifas.Aceptada FROM Tarifas RIGHT JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa WHERE IDPresupuesto = " & m_IDPresupuesto & " ORDER BY Tarifas.codigo", False)
        If RsMant(0).RecordCount > 0 Then
            RsMant(0).Find "IDPyT = " & m_IDPyT
            If RsMant(0).EOF Then
                RsMant(0).MoveFirst
            End If
        End If
    End If
    If Index = 2 Then
'2004/03    Jose. 22 3 2004. Ordenar también por números de ampliación ----------------------------------------------------------
        If OptOrden(0).Value = True Then
            'Por defecto (orden inicial)
            Call PrepararTodo(RsMant(2), DbGridMant(2), _
            "SELECT Presupuestos.* FROM Presupuestos INNER JOIN PresupuestosAmpliacion ON Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo " & _
            " WHERE (PresupuestosAmpliacion.IdPresupuestoPadre = " & m_IDPresupuesto & ") ORDER BY IdPresupuesto", False)
        Else
            Call PrepararTodo(RsMant(2), DbGridMant(2), _
            "SELECT Presupuestos.* FROM Presupuestos INNER JOIN PresupuestosAmpliacion ON Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo " & _
            " WHERE (PresupuestosAmpliacion.IdPresupuestoPadre = " & m_IDPresupuesto & ") ORDER BY AmpliarUnidades DESC, AmpliacionTarifa DESC, AmpliacionMixta DESC, NombreObra", False)
        End If
'2004/03    ----------------------------------------------------------------------------------------------------------------------
        'Jose. 2 9 2005. Actualiza el combo CmbTipoAmpliacion para Intec
        'If Left(UCase(m_NombreDominio), 9) = "DOMINIO_I" Then
        If m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
            If RsMant(2)!EstanquidadFachada And RsMant(2)!EstanquidadFachada <> Null Then
                CmbTipoAmpliacion.ListIndex = 0
            ElseIf RsMant(2)!EstanquidadCubierta And RsMant(2)!EstanquidadCubierta <> Null Then
                CmbTipoAmpliacion.ListIndex = 1
            ElseIf RsMant(2)!ControlAcabado And RsMant(2)!ControlAcabado <> Null Then
                CmbTipoAmpliacion.ListIndex = 2
            ElseIf RsMant(2)!Otro And RsMant(2)!Otro <> Null Then
                CmbTipoAmpliacion.ListIndex = 3
            End If
        End If
        '---------------------------------------------------------------
    End If
    If Index = 3 Then
        Call PrepararTodo(RsPropiedades, DbGridPropiedades, _
            "SELECT PropPresup.* FROM PropPresup WHERE IDPresupuesto = " & m_IDPresupuesto & " ORDER BY Nombre", False)
    
        If RsPropiedades.RecordCount > 0 Then
            RsPropiedades.Find "IDPropPresup = " & m_IDPropPresup
            If RsPropiedades.EOF Then
                RsPropiedades.MoveFirst
            End If
        End If
    End If
    If Index = 4 Then
        Call PrepararTodo(RsMant(3), DbGridMant(3), _
        "SELECT * FROM EnvioPresupuesto WHERE IdPresupuesto = " & m_IDPresupuesto & " ORDER BY FechaEnvio, HoraEnvio", False)
    End If
    
End Sub

Public Function NumeroPlantillas(IdPresupuesto As Long) As Byte
            Dim Numero As Byte
            Numero = 0
            Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT * FROM Documentos WHERE IdPresupuesto = " & m_IDPresupuesto)
            Do While Not RsPresupuesto.EOF
              Numero = Numero + 1
              RsPresupuesto.MoveNext
            Loop
            NumeroPlantillas = Numero
End Function

Sub ActualizarFormulario()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Carga todas las cajas de texto y combos del formulario con los datos que recoge del
'   recordset "RsPresupuesto" de la tabla de "Presupuestos", selecciona los registros con
'   la variable global m_IDPresupuesto que tiene la Id del presupuesto actual
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si hay algun registro en edicion
'   2) Si no esta en edicion crea un recordset de la tabla "Presupuestos" con el registro del presupuesto que hay
'      en la variable m_IDPresupuesto
'   3) Si encuentra el registro carga en los controles del formulario los datos del recordset
'   4) Si ChkDesgloseDetallada(0).Value = 1 entonces crea un recordset de "Presupuestos", "PresupuestosyTarifas" y
'      guarda el valor de uno de los campos del recordset en una caja de texto del formulario
'   5) Si ChkDesgloseDetallada(1).Value = 1 deja varias cajas de texto del formulario en blanco
'   6) Crea un recordset de "PresupuestosyTarifas", "Presupuestos" con mas tarifas del presupuesto actual y carga
'      datos en cajas de texto
'   7) Si ChkDesgloseDetallada(1).Value = 1 recorre un for de 1 a 4 y por cada valor crea un recordset con unas tarifas
'      comprendidas entre dos variables (TarifaIni y TarifaFin) y guarda datos en cajas de texto
'   8) Carga mas infomacion en los controles con los valores del recordset actual y de otros que crea
'      Carga combos con datos
'   9) Actualiza los Grid del formulario
'  10) Dependiendo de si hay una obra asignada al presupuesto o no crea un recordset y lo referencia a un Grid
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2003/03     HDT     Unificación de la Aplicación.
'   2003/11     HDT     Añadir opcion de Clase de Presupuesto.
'
'DOCF FIN -------------------------------------------------------------
    
    Dim RsMarca As New Recordset 'Jose. 20 11 2006.
    Dim RsAmplis As New Recordset
    Dim IdAmpli As Long 'Jose. 28 2 2007. Antes Integer, daba error de desbordamiento. Codigo hecho por HDT.
    Dim I As Integer
    'Comprobamos si estamos editando algún registro
    If Not EnEdicion Then
        Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT * FROM Presupuestos WHERE Presupuestos.IdPresupuesto = " & m_IDPresupuesto)
                        
        If RsPresupuesto.RecordCount > 0 Then
            
            'Jose. 20 11 2006. Nueva consulta para mostrar una nueva opción del programa: Marcas ó topes
            'establecidos (en euros) usadas para que avise cuando en la entrada de trabajos se sobrepasa.
            Call mClsPresupuestos.PueblaRecordset(RsMarca, "SELECT TOP 1 * FROM PresupuestosMarcas WHERE IdPresupuesto = " & m_IDPresupuesto & " ORDER BY IDPresupuestoMarca DESC")
            If RsAbierto(RsMarca) Then
                LblMarca.Caption = RsMarca!preciomarca & " €  (" & Format(RsMarca!FechaMarca, "dd/mm/yyyy") & " - " & DameExpresion("Codigo", RsMarca!IdUsuario, "Usuarios", "Login") & ") "
                RsMarca.Close
            Else
                LblMarca.Caption = "<No hay ninguna marca establecida>"
            End If
            Set RsMarca = Nothing
            '--------------------------------------------------------------------------------------------
            
            If RsPresupuesto!IdClasePresup = 2 Then 'Oferta%
               MTab.TabVisible(6) = True
               'Jose. 10 2 2005. Añadido para que no se puedan imprimir
               'En Intec parece que todos los presup. son de tipo Oferta y los imprimen.
               If m_FormatoFactura <> "I" Then
                    CmdImprimir(1).Enabled = False
                    CmdImprimir(2).Enabled = False
                    CmdImprimir(3).Enabled = False
                    CmdExportarWord.Enabled = False
                    CmdExportarWord2.Enabled = False
                    Command1.Enabled = False
                    CmdMail.Enabled = False
                    CmdFax.Enabled = False
                Else
                    CmdImprimir(1).Enabled = True
                    CmdImprimir(2).Enabled = True
                    CmdImprimir(3).Enabled = True
                    CmdExportarWord.Enabled = True
                    CmdExportarWord2.Enabled = True
                    Command1.Enabled = True
                    CmdMail.Enabled = True
                    CmdFax.Enabled = True
                End If
               '--------------------------------------------------------
            Else
               MTab.TabVisible(6) = False
               'Jose. 10 2 2005. Añadido para que no se puedan imprimir
               CmdImprimir(1).Enabled = True
               CmdImprimir(2).Enabled = True
               CmdImprimir(3).Enabled = True
               CmdExportarWord.Enabled = True
               CmdExportarWord2.Enabled = True
               Command1.Enabled = True
               If m_ImpresoraPDF = 1 Then CmdMail.Enabled = True
               If m_ImpresoraFax = 1 Then CmdFax.Enabled = True
               '-------------------------------------------------------
            End If

            'Antonio 4 ago 03 -------------------------------------------------------------------
            If RsPresupuesto!IDFirma <> -1 Then
                CmbFirma.ListIndex = BuscaItemData(CmbFirma, NoNumNulo(RsPresupuesto!IDFirma.Value))
            Else
                CmbFirma.ListIndex = 0
            End If
            '------------------------------------------------------------------------------------
            'Actualizamos los datos de las cajas de texto
            'Ej: TxtNombre.Text = "" & RsPresupuesto("name").Value
            IDClientePresupuesto = RsPresupuesto!IdCliente
            Dim RsHojadatos As New Recordset
            Call mClsPresupuestos.PueblaRecordset(RsHojadatos, "SELECT IdHojaDatos FROM HojaDatos WHERE IdPresupuesto=" & RsPresupuesto!IdPresupuesto, False)
            If RsHojadatos.RecordCount > 0 Then
                If VarType(RsHojadatos!IDHojaDatos) = vbNull Then
                   m_IdHojaDatos = 0
                Else
                   m_IdHojaDatos = RsHojadatos!IDHojaDatos
                End If
            Else
                m_IdHojaDatos = 0
            End If
            RsHojadatos.Close
            Set RsHojadatos = Nothing
            If IDClientePresupuesto < 1 Then
                IDClientePresupuesto = -1
            End If
            TxtPeticionario.Text = "" & RsPresupuesto!Peticionario.Value
            TxtNombreObra.Text = "" & RsPresupuesto!NombreObra.Value
            CmbOCT.Text = "" & RsPresupuesto!NombreOCT
            ChkOCT.Value = NoNumNulo(RsPresupuesto!Oct)
            If RsPresupuesto!Liquidado = True Then
              Liquidado = 1
            Else
              Liquidado = 0
            End If
            PorcColaborador = RsPresupuesto!PorcColaborador
            g_ProvisionFondos = RsPresupuesto!ProvisionFondos
'   2003/05     Jose.   Unificación de la aplicación. Añadido. ----------------------------------------------
            LblEstado.Caption = DameExpresion("IDEstados", RsPresupuesto!IdEstados, "Estados", "DescripLarga")
'   2003/05     ---------------------------------------------------------------------------------------------
'   2004/06     Jose. Nueva opción de Acuerdo marco con el cliente ----------------------------------------------
            If RsPresupuesto!AcuerdoMarco = 0 Then
                LblAcuerdo.Visible = False
            Else
                LblAcuerdo.Visible = True
            End If
'   2004/06     ---------------------------------------------------------------------------------------------
            
            'Jose. Nueva opción para indicar como ha sido aceptado el presupuesto.
            'Si no es 1 ó 2 tendrá 0 que es el valor por defecto
            If RsPresupuesto!AceptadoPorEscrito = 1 Then
                OptAceptadoPor(1).Value = True
                TxtAceptadoPor.Text = ""
            ElseIf RsPresupuesto!AceptadoPorEscrito = 2 Then
                OptAceptadoPor(2).Value = True
                TxtAceptadoPor.Text = RsPresupuesto!AceptadoPor & ""
            Else '0. No Aceptado.
                OptAceptadoPor(0).Value = True
                TxtAceptadoPor.Text = ""
            End If
            '---------------------------------------------------------------------
            
            'If RsPresupuesto!SubTipo.Value & "" = "" Then
            '    CmbSubtipo.ListIndex = 0
            'Else
               
                CmbSubtipo.Text = "" & RsPresupuesto!Subtipo.Value
            'End If
            '''''
            '''Calcular Partida Alzada 28 8 2001
        
            Dim RsAux As New Recordset
            Dim TarifaIni As Integer
            Dim TarifaFin As Integer
           ' Dim i As Integer
            ' activar el desglose
            ChkDesgloseDetallada(0).Value = IIf(NoNumNulo(RsPresupuesto!DesglosePartidaAlzada) = 2, 1, 0)
            ChkDesgloseDetallada(1).Value = IIf(NoNumNulo(RsPresupuesto!DesglosePartidaAlzada) = 1, 1, 0)
            If ChkDesgloseDetallada(0).Value = 1 Then
                TarifaIni = 1
                TarifaFin = 98
                Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT SUM(PresupuestosyTarifas.PrecioTotal) AS Total,PresupuestosyTarifas.Euros FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON  Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa WHERE Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) >=" & TarifaIni & " and Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) <=" & TarifaFin & "  and PresupuestosyTarifas.Aceptada=1 GROUP BY Presupuestos.IDPresupuesto,PresupuestosyTarifas.Euros HAVING Presupuestos.IdPresupuesto = " & m_IDPresupuesto)
                If Not RsAux.EOF Then
                   If RsAux!Euros <> 0 Then
                    TxtPartidaAlzada(1).Text = RsAux!Total
                   Else
                    TxtPartidaAlzada(1).Text = Round(RsAux!Total / 166.386, 2)
                   End If
                End If
                RsAux.Close
                Set RsAux = Nothing
            ElseIf ChkDesgloseDetallada(1).Value = 1 Then
                TxtPartidaAlzada(0).Text = ""
                TxtPartidaAlzada(1).Text = ""
            End If
            'Otros ensayos
            TarifaIni = 99
            TarifaFin = 999
            Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT SUM(PresupuestosyTarifas.PrecioTotal) AS Total,PresupuestosyTarifas.Euros FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON  Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa WHERE Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) >=" & TarifaIni & " and Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) <=" & TarifaFin & "  and PresupuestosyTarifas.Aceptada=1 GROUP BY Presupuestos.IDPresupuesto,PresupuestosyTarifas.Euros HAVING Presupuestos.IdPresupuesto = " & m_IDPresupuesto)
            If Not RsAux.EOF Then
                If RsAux!Euros <> 0 Then
                    TxtPresupuesto(5).Text = RsAux!Total
                Else
                    TxtPresupuesto(5).Text = Round(RsAux!Total / 166.386, 2)
                End If
            End If
            RsAux.Close
            Set RsAux = Nothing
            ''Fin otros ensayos
            
            If ChkDesgloseDetallada(1).Value = 1 Then
                For I = 0 To 5
                    Select Case I
                        Case 0
                            TarifaIni = 1
                            TarifaFin = 49
                        Case 1
                            TarifaIni = 50
                            TarifaFin = 69
                        Case 2
                            TarifaIni = 70
                            TarifaFin = 84
                        Case 3
                            TarifaIni = 98
                            TarifaFin = 98
                        Case 5
                            TarifaIni = 99
                            TarifaFin = 999
                    End Select
'   06/2003     HDT     ' No cuadran los precios con los del detalle de presupuesto
                    Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT Sum(case when PresupuestosyTarifas.euros <> 0 then round(PresupuestosyTarifas.PrecioTotal,2) else round(PresupuestosyTarifas.PrecioTotal / 166.386 , 2) end) AS Total FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON  Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa WHERE Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) >=" & TarifaIni & " and Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) <=" & TarifaFin & "  and PresupuestosyTarifas.Aceptada=1 GROUP BY Presupuestos.IDPresupuesto,PresupuestosyTarifas.Euros HAVING Presupuestos.IdPresupuesto = " & m_IDPresupuesto)
'                    Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT SUM(PresupuestosyTarifas.PrecioTotal) AS Total,Presupuestos.Euros FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON  Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa WHERE Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) >=" & TarifaIni & " and Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) <=" & TarifaFin & "  and PresupuestosyTarifas.Aceptada=1 GROUP BY Presupuestos.IDPresupuesto,Presupuestos.Euros HAVING Presupuestos.IdPresupuesto = " & m_IDPresupuesto)
                    If Not RsAux.EOF Then
'                        If RsAux!Euros <> 0 Then
                            TxtPresupuesto(I) = Format(Round(RsAux!Total, 2), "0.00")
'                        Else
'                            TxtPresupuesto(i) = Format(Round(RsAux!Total / 166.386, 2), "0.00")
'                        End If
                    End If
                    RsAux.Close
                    Set RsAux = Nothing
'   05/2003     HDT     Actualización de los precios incluyendo las ampliaciones ----------------------------------
                    Call mClsPresupuestos.PueblaRecordset(RsAmplis, "SELECT IdPresupuestoHijo FROM PresupuestosAmpliacion WHERE PresupuestosAmpliacion.IdPresupuestoPadre = " & m_IDPresupuesto)
                    If Not RsAmplis.EOF Then
                        Do While RsAmplis.EOF = False
                            IdAmpli = RsAmplis!IdPresupuestoHijo
                            Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT Sum(case when PresupuestosyTarifas.euros <> 0 then round(PresupuestosyTarifas.PrecioTotal,2) else round(PresupuestosyTarifas.PrecioTotal / 166.386 , 2) end) AS Total FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON  Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa WHERE Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) >=" & TarifaIni & " and Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) <=" & TarifaFin & "  and PresupuestosyTarifas.Aceptada=1 and presupuestos.Aceptado = 1 GROUP BY Presupuestos.IDPresupuesto,PresupuestosyTarifas.Euros HAVING Presupuestos.IdPresupuesto = " & IdAmpli)
'                            Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT SUM(PresupuestosyTarifas.PrecioTotal) AS Total,Presupuestos.Euros FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON  Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa WHERE Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) >=" & TarifaIni & " and Left(Tarifas.Codigo,len(Tarifas.Codigo)-3) <=" & TarifaFin & "  and PresupuestosyTarifas.Aceptada=1 GROUP BY Presupuestos.IDPresupuesto,Presupuestos.Euros HAVING Presupuestos.IdPresupuesto = " & IdAmpli)
                            If Not RsAux.EOF Then
'                                If RsAux!Euros <> 0 Then
                                    TxtPresupuesto(I) = Format(Round(Val(TxtPresupuesto(I)) + RsAux!Total, 2), "0.00")
'                                Else
'                                    TxtPresupuesto(i) = Format(Round(Val(TxtPresupuesto(i)) + (RsAux!Total / 166.386), 2), "0.00")
'                                End If
                            End If
                        RsAux.Close
                        Set RsAux = Nothing
                        RsAmplis.MoveNext
                        Loop
                    End If
                    RsAmplis.Close
                    Set RsAmplis = Nothing
' -----------------------------------------------------------------------------------------------------------------------
                Next
            Else
                For I = 0 To 4
                    TxtPA(I).Text = ""
                    TxtPresupuesto(I).Text = ""
                Next
            End If
            ''Comprobar que no se pase de lo presupuestado
            On Error Resume Next
            If ChkDesgloseDetallada(0) Then
                If CadenaADouble(TxtPartidaAlzada(1)) > CadenaADouble(TxtPartidaAlzada(0)) Then
                    Call Alerta("¡Cuidado! Se ha sobrepasado el límite presupuestado")
                End If
            Else
                If CadenaADouble(TxtPA(4)) > CadenaADouble(TxtPresupuesto(4)) Then
                Else
                    If CadenaADouble(TxtPA(4)) > 0 Then Call Alerta("¡Cuidado! Se ha sobrepasado el límite presupuestado")
                End If
            End If
    If RsPresupuesto!Pem <> "" Then
        txtPEM.Text = RsPresupuesto!Pem & ""
    Else
        txtPEM.Text = "0"
    End If
    TxtPoliza.Text = NoNulo(RsPresupuesto!Poliza)

    If RsPresupuesto!IdObra > 0 Then
        ' BONIFICACIÓN (o Descuento)
        TxtDescuento.Text = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "Descuento")
        ' IVA
        TxtIVA.Text = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "IVA")
        ChkGastosYBfo.Value = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "GastosYBfo")
        ' Gastos Generales
        TxtGastosGenerales.Text = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "porcentajegastosgenerales")
        ' Beneficio Industrial
        TxtBfoIndustrial.Text = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "PorcentajeBfoIndustrial")
    Else
        TxtDescuento.Text = NoNumNulo(RsPresupuesto!Descuento)
        TxtIVA.Text = NoNumNulo(RsPresupuesto!IVA)
        ChkGastosYBfo.Value = NoNumNulo(RsPresupuesto!gastosybfo)
        If ChkGastosYBfo.Value = 1 Then
            TxtGastosGenerales.Text = NoNumNulo(RsPresupuesto!porcentajegastosgenerales)  'CStr(RsFactura!totalgastosgenerales)
            TxtBfoIndustrial.Text = NoNumNulo(RsPresupuesto!porcentajebfoindustrial)    'CStr(RsFactura!totalbfoindustrial)
        Else
            TxtGastosGenerales.Text = ""
            TxtBfoIndustrial.Text = ""
        End If
    End If
    CmbSucursal.ListIndex = BuscaItemData(CmbSucursal, Val(RsPresupuesto!IdSucursal.Value))
    CmbSeguros.ListIndex = BuscaItemData(CmbSeguros, NoNumNulo(RsPresupuesto!IdSeguro.Value))
    CmbCorredor.ListIndex = BuscaItemData(CmbCorredor, NoNumNulo(RsPresupuesto!IdCorredorSeguro.Value))
    CmbColaborador.ListIndex = BuscaItemData(CmbColaborador, NoNumNulo(RsPresupuesto!IDColaborador.Value))
    CmbColaborador2.ListIndex = BuscaItemData(CmbColaborador2, NoNumNulo(RsPresupuesto!IDColaborador2.Value))
    
    'Jose. 8 3 2006. Comentado. Este no es el sitio ni la manera de hacer esto.
'    '----------Antonio 17-08-2005. Los clientes nuevos en los presup geotecnicos sale como forma de pago "CONTADO A ENTREGA DE INFORME"
'    If RsPresupuesto!IdCliente > 2414 And RsPresupuesto!IdTipoPresupuesto = 76 And (UCase(m_NombreDominio) = "DOMINIO_L" Or UCase(m_NombreDominio) = "DOMINIO_LPRUEBAS") Then
'        CmbFormaPago.Locked = False
'        CmbFormaPago.ListIndex = 7
'        CmbFormaPago.Locked = True
'    Else
        CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, RsPresupuesto!IDFormaPago.Value)
'    End If
'    '------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    CmbCondicionesPago.ListIndex = BuscaItemData(CmbCondicionesPago, IIf(NoNumNulo(RsPresupuesto!IdCondicionesPago.Value) = 0, 3, NoNumNulo(RsPresupuesto!IdCondicionesPago.Value)))
    CmbUsuario(1) = RsPresupuesto!UsuarioAsignado & ""
    TxtDescuento.Text = TxtDescuento.Text & "%"
    TxtIVA.Text = TxtIVA.Text & "%"
    If ChkGastosYBfo.Value = 1 Then
        TxtGastosGenerales.Text = TxtGastosGenerales.Text & "%"
        TxtBfoIndustrial.Text = TxtBfoIndustrial.Text & "%"
    End If
            '''''
        Dim CadenaWhere As String
        CadenaWhere = " (PresupuestosyTarifas.Aceptada = 1) "
        If EsPresupuestoGeotecnico(m_IDPresupuesto) Then
            Dim DesgloseSondeos As Boolean, DesgloseCalicatas As Boolean
            Dim Precio As Long, NumUnid As Long
            Dim RegPyT As New Recordset
            DesgloseSondeos = False
            DesgloseCalicatas = False

            DesgloseSondeos = TarifaAceptadaEnPresupuesto(m_IDPresupuesto, 2300)
            If DesgloseSondeos Then
                Call mClsPresupuestosyTarifas.PueblaRecordset(RegPyT, "SELECT NumeroUnidades, PrecioUnitario FROM PresupuestosYTarifas WHERE (IdPresupuesto  = " & m_IDPresupuesto & ") And (IdTarifa = 2300)")
                If Not RegPyT.EOF Then
                    DesgloseSondeos = RegPyT!PrecioUnitario <> 0
                End If
                RegPyT.Close
                Set RegPyT = Nothing
            End If
            DesgloseCalicatas = TarifaAceptadaEnPresupuesto(m_IDPresupuesto, 3702)
            If DesgloseCalicatas Then
                Call mClsPresupuestosyTarifas.PueblaRecordset(RegPyT, "SELECT NumeroUnidades, PrecioUnitario FROM PresupuestosYTarifas WHERE (IdPresupuesto  = " & m_IDPresupuesto & ") And (IdTarifa = 3702)")
                If Not RegPyT.EOF Then
                    DesgloseCalicatas = RegPyT!PrecioUnitario <> 0
                End If
                RegPyT.Close
                Set RegPyT = Nothing
            End If
            If DesgloseSondeos Then
                CadenaWhere = CadenaWhere & " AND NOT((IDTarifa = 318 OR iDTarifa = 319 OR IDTarifa = 320 OR IDTarifa = 323 OR IDTarifa = 327 OR IDTarifa = 344 OR  IDTarifa = 351 OR IDTarifa = 354 OR IDTarifa = 367 OR  IDTarifa = 335 OR IDTarifa = 346 OR IDTarifa = 361 OR IDTarifa = 3075) AND (Aceptada = 1)) "
            End If
            If DesgloseCalicatas Then
                CadenaWhere = CadenaWhere & " AND NOT(IDTarifa = 3703 OR iDTarifa = 3704 OR IDTarifa = 3705 OR IDTarifa = 3706 OR IDTarifa = 3707 OR IDTarifa = 3708 OR  IDTarifa = 3904 or (idtarifa>=3733 and idtarifa<=3737) or idtarifa=4100 or (idtarifa>=4198 and idtarifa<=4204) or idtarifa=4283) AND (Aceptada = 1) "
            End If
        End If
            
            
            TxtTotal(0).Text = SumarPrecio("PresupuestosyTarifas", "IDPresupuesto", _
                                RsPresupuesto!IdPresupuesto.Value, "PrecioTotal", CadenaWhere, (100 - CadenaADouble(SustituirPor(TxtDescuento, "%", ""))) / 100)
            TxtTotal(3) = TxtTotal(0)
            Dim RsPrecioAmpliacion As New Recordset
            Call mClsPresupuestos.PueblaRecordset(RsPrecioAmpliacion, "SELECT SUM(PresupuestosyTarifas.PrecioTotal) AS Suma FROM PresupuestosAmpliacion INNER JOIN  Presupuestos Presupuestos1 ON  PresupuestosAmpliacion.IdPresupuestoHijo = Presupuestos1.IDPresupuesto  INNER JOIN  PresupuestosyTarifas ON Presupuestos1.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto WHERE (PresupuestosyTarifas.Aceptada = 1) AND (Presupuestos1.Aceptado = 1) and IdPresupuestoPadre=" & RsPresupuesto!IdPresupuesto & "")
            TxtTotal(4) = Round(RsPrecioAmpliacion!suma, 2)
            RsPrecioAmpliacion.Close
            Set RsPrecioAmpliacion = Nothing
            Dim RsUsuarioAmpliacion As New Recordset
            TxtTotal(5) = CadenaADouble(TxtTotal(3)) + CadenaADouble(TxtTotal(4))
            'TxtTotal(0).Text = SumarPrecio("PresupuestosyTarifas", "IDPresupuesto", _
                                RsPresupuesto!IDPresupuesto.Value, "PrecioTotal", "PresupuestosyTarifas.Aceptada = 1", (100 - CadenaADouble(SustituirPor(TxtDescuento, "%", ""))) / 100)
            TxtTotal(1).Text = TxtTotal(0).Text
            PresupuestoAceptado = (RsPresupuesto!IdObra > 0)
            LabelAceptado.Visible = PresupuestoAceptado
            CmdIrObra.Visible = PresupuestoAceptado
            MTab.TabVisible(7) = PresupuestoAceptado
            
            'Jose. 1 9 2005.
            'If PresupuestoAceptado And Left(UCase(m_NombreDominio), 9) = "DOMINIO_I" Then
            If PresupuestoAceptado And m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
                Label39.Visible = True
                CmbTipoAmpliacion.Visible = True
            Else
                Label39.Visible = False
                CmbTipoAmpliacion.Visible = False
            End If
            '----------------
            
            If PresupuestoAceptado Then
                LabelAceptado.ToolTipText = IIf(IsNull(RsPresupuesto!UsuarioAceptacion), "Presupuesto sin usuario asignado.", "Presupuesto aceptado por " & RsPresupuesto!UsuarioAceptacion)
            End If
            If IsNull(RsPresupuesto!UsuarioCreacion) Then
                LbCrear(0).Visible = False
                LbCrear(1).Visible = False
                LblUsuarioAmpliacion.Visible = False
            Else
                LbCrear(0).Visible = True
                LbCrear(1).Visible = True
                LblUsuarioAmpliacion.Visible = True
                LblUsuarioAmpliacion.Caption = RsPresupuesto!UsuarioCreacion
                LbCrear(1).Caption = RsPresupuesto!UsuarioCreacion
            End If
            If IsNull(RsPresupuesto!UsuarioAsignado) Then
                LbUsuarioAsignado.Visible = False
            Else
                LbUsuarioAsignado.Visible = True
                If RsPresupuesto!UsuarioAsignado = "Sin Asignar" Then
                    LbUsuarioAsignado.ForeColor = vbRed
                End If
                LbUsuarioAsignado.Caption = RsPresupuesto!UsuarioAsignado
            End If
            Dim Reg As New Recordset
            Call mClsPresupuestos.PueblaRecordset(Reg, "SELECT * FROM DetallePresupuesto WHERE IDpresupuesto = " & m_IDPresupuesto)
            If (Not Reg.EOF) Then  'And (RsPresupuesto!IdObra = 0) Then
                CmdConfigurar.Visible = True
            Else
                CmdConfigurar.Visible = False
            End If
            Reg.Close
            Set Reg = Nothing

            
            TxtNombre.Text = RsPresupuesto!Nombre & ""
            TxtObservaciones.Text = RsPresupuesto!Observaciones & ""
            If m_FormatoFactura = "L" Then
                TxtNota.Text = RsPresupuesto!Nota & ""
            Else
                TxtNota.Text = RsPresupuesto!CondicionesParticulares & ""
            End If
            
            TxtTelefono.Text = RsPresupuesto!Telefono & ""
            TxtFax.Text = RsPresupuesto!Fax & ""
            TxtMovil.Text = RsPresupuesto!movil & ""
            TxtEmail.Text = RsPresupuesto!Email & ""
            
            TxtApellidos.Text = RsPresupuesto!Apellidos & ""
            TxtAnyo.Text = RsPresupuesto!Anyo & ""
            TxtImporteAval.Text = Round(RsPresupuesto!ImporteAval, 2)
            If ChkDesgloseDetallada(0).Value = 1 Then
                If RsPresupuesto!Euros <> 0 Then
                    TxtPartidaAlzada(0).Text = NoNumNulo(RsPresupuesto!ControlMAterial)
                Else
                    TxtPartidaAlzada(0).Text = Round(NoNumNulo(RsPresupuesto!ControlMAterial) / 166.386, 2)
                End If
                'TxtPartidaAlzada(1).Text = NoNumNulo(RsPresupuesto!TarifaMaterial)
            End If
            
            If ChkDesgloseDetallada(1).Value = 1 Then
                '''eva 23 8 2001
                If RsPresupuesto!Euros <> 0 Then
                    TxtPA(0) = NoNumNulo(RsPresupuesto!ControlMAterial)
                    TxtPA(1) = NoNumNulo(RsPresupuesto!ControlMontaje)
                    TxtPA(2) = NoNumNulo(RsPresupuesto!PruebasFinales)
                    TxtPA(3) = NoNumNulo(RsPresupuesto!AsistenciaTecnica)
                    
                    TxtTarifa(0) = NoNumNulo(RsPresupuesto!TarifaMaterial)
                    TxtTarifa(1) = NoNumNulo(RsPresupuesto!TarifaMontaje)
                    TxtTarifa(2) = NoNumNulo(RsPresupuesto!TarifaPruebas)
                    TxtTarifa(3) = NoNumNulo(RsPresupuesto!TarifaAsistencia)
                Else
                    TxtPA(0) = Round(NoNumNulo(RsPresupuesto!ControlMAterial) / 166.386, 2)
                    TxtPA(1) = Round(NoNumNulo(RsPresupuesto!ControlMontaje) / 166.386, 2)
                    TxtPA(2) = Round(NoNumNulo(RsPresupuesto!PruebasFinales) / 166.386, 2)
                    TxtPA(3) = Round(NoNumNulo(RsPresupuesto!AsistenciaTecnica) / 166.386, 2)
                    
                    TxtTarifa(0) = Round(NoNumNulo(RsPresupuesto!TarifaMaterial) / 166.386, 2)
                    TxtTarifa(1) = Round(NoNumNulo(RsPresupuesto!TarifaMontaje) / 166.386, 2)
                    TxtTarifa(2) = Round(NoNumNulo(RsPresupuesto!TarifaPruebas) / 166.386, 2)
                    TxtTarifa(3) = Round(NoNumNulo(RsPresupuesto!TarifaAsistencia) / 166.386, 2)

                End If
            End If
            
            TxtValor(0) = NoNumNulo(RsPresupuesto!CoberturaBasica)
            TxtValor(1) = NoNumNulo(RsPresupuesto!EstanquidadFachadas)
            TxtValor(2) = NoNumNulo(RsPresupuesto!EstanquidadCubiertas)
            TxtValor(3) = NoNumNulo(RsPresupuesto!ControlAcabados)
            TxtValor(4) = NoNumNulo(RsPresupuesto!Otros)
            TxtValor(11) = NoNumNulo(RsPresupuesto!valorinstalaciones)
            TxtValor(10) = NoNumNulo(RsPresupuesto!valorinstalaciones2)
            TxtValor(14) = NoNumNulo(RsPresupuesto!valorinstalaciones3)
            TxtValor(16) = NoNumNulo(RsPresupuesto!ValorCSSFP)
            TxtValor(18) = NoNumNulo(RsPresupuesto!SegSalEuros)
            TxtValor(20) = NoNumNulo(RsPresupuesto!ValorEstudiosBasSegSal)
            TxtValor(22) = NoNumNulo(RsPresupuesto!ValorOtrDesSegSal)
            
            If Val(txtPEM) <> 0 Then
                TxtValor(5) = CLng((100 * Val(TxtValor(0))) / txtPEM)
                TxtValor(6) = CLng((100 * Val(TxtValor(1))) / txtPEM)
                TxtValor(7) = CLng((100 * Val(TxtValor(2))) / txtPEM)
                TxtValor(8) = CLng((100 * Val(TxtValor(3))) / txtPEM)
                TxtValor(9) = CLng((100 * Val(TxtValor(4))) / txtPEM)
                TxtValor(12) = CLng((100 * Val(TxtValor(11))) / txtPEM)
                TxtValor(13) = CLng((100 * Val(TxtValor(10))) / txtPEM)
                TxtValor(15) = CLng((100 * Val(TxtValor(14))) / txtPEM)
                TxtValor(17) = CLng((100 * Val(TxtValor(16))) / txtPEM)
                TxtValor(19) = CLng((100 * Val(TxtValor(18))) / txtPEM)
                TxtValor(21) = CLng((100 * Val(TxtValor(20))) / txtPEM)
                TxtValor(23) = CLng((100 * Val(TxtValor(22))) / txtPEM)
            Else
                TxtValor(5) = ""
                TxtValor(6) = ""
                TxtValor(7) = ""
                TxtValor(8) = ""
                TxtValor(9) = ""
                TxtValor(12) = ""
                TxtValor(13) = ""
                TxtValor(15) = ""
                TxtValor(17) = ""
                TxtValor(19) = ""
                TxtValor(21) = ""
                TxtValor(23) = ""
            End If

            ChkMisión(0).Value = IIf(NoBoolNulo(RsPresupuesto!EstanquidadFachada), 1, 0)
            ChkMisión(1).Value = IIf(NoBoolNulo(RsPresupuesto!EstanquidadCubierta), 1, 0)
            ChkMisión(2).Value = IIf(NoBoolNulo(RsPresupuesto!ControlAcabado), 1, 0)
            ChkMisión(3).Value = IIf(NoBoolNulo(RsPresupuesto!Otro), 1, 0)
            ChkMisión(7).Value = IIf(NoNumNulo(RsPresupuesto!ControlInstalaciones) = 1, 1, 0)
            ChkMisión(8).Value = IIf(NoNumNulo(RsPresupuesto!ControlInstalaciones2) = 1, 1, 0)
            ChkMisión(9).Value = IIf(NoNumNulo(RsPresupuesto!ControlInstalaciones3) = 1, 1, 0)

'--------------------------------------------------------------------------------

            Dim RsCli As New Recordset
            Call mClsPresupuestos.PueblaRecordset(RsCli, "SELECT TipoCliente FROM Presupuestos INNER JOIN  Clientes ON Presupuestos.IDCliente = Clientes.IDCliente WHERE IdPresupuesto='" & m_IDPresupuesto & "'")
            If Not RsCli.EOF Then
                CmbTipoCliente = RsCli!TipoCliente & ""
            Else
                CmbTipoCliente = ""
            End If
            RsCli.Close
            Set RsCli = Nothing
             CmbTipo.ListIndex = BuscaItemData(CmbTipo, RsPresupuesto!IdTipoPresupuesto.Value)

            If CmbTipo.ListIndex = 5 Then 'Presupuesto Geotécnico
                LblAvisoGeotecnico.Visible = False
                CmbAvisoGeotecnico.Visible = False
                CmbAvisoGeotecnico.ListIndex = NoNumNulo(RsPresupuesto!IdTipoaviso.Value)
            Else
                LblAvisoGeotecnico.Visible = False
                CmbAvisoGeotecnico.Visible = False
            End If
            'If CmbTipo.Text = "SEGURIDAD Y SALUD" And UCase$(Left$(m_NombreDominio, 9)) = "DOMINIO_I" Then 'Pedro. 28 6 2006 Presupuesto Seguridad y Salud
            If CmbTipo.Text = "SEGURIDAD Y SALUD" And m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
                Me.ChkMisión(14).Value = NoNumNulo(RsPresupuesto!CSSFP)
                Me.ChkMisión(18).Value = NoNumNulo(RsPresupuesto!CSSFE)
                Me.ChkMisión(16).Value = NoNumNulo(RsPresupuesto!EstudiosBasSegSal)
                Me.ChkMisión(15).Value = NoNumNulo(RsPresupuesto!OtrDesSegSal)
                Me.SSTab2.TabVisible(2) = True
                Me.SSTab2.TabVisible(1) = False
            Else
                Me.ChkMisión(14).Value = 0
                Me.ChkMisión(18).Value = 0
                Me.ChkMisión(16).Value = 0
                Me.ChkMisión(15).Value = 0
                Me.SSTab2.TabVisible(2) = False
                Me.SSTab2.TabVisible(1) = True
            End If
            

            TxtDon.Text = RsPresupuesto!Don & ""
            TxtMeses.Text = CStr(RsPresupuesto!Meses)
            OptMostrar(0).Value = RsPresupuesto!Mostrar
            OptMostrar(1).Value = Not RsPresupuesto!Mostrar
            
            TxtFechaEmision.Text = LeeFecha(RsPresupuesto!FechaEmision.Value)
            TxtFechaAceptacion.Text = LeeFecha(RsPresupuesto!FechaAceptacion.Value)
            TxtFechaTerminado.Text = LeeFecha(RsPresupuesto!FechaTerminado.Value)
            TxtFechaIniObra.Text = LeeFecha(RsPresupuesto!Fechainiobra.Value)
            TxtFechaFinObra.Text = LeeFecha(RsPresupuesto!Fechafinobra.Value)
            CmbFechaFactura.ListIndex = RsPresupuesto!FechaPrevista
            'CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, RsObra!IdFormaPago.Value)
'            CmbVerbal.ListIndex = 1 - RsPresupuesto!Verbal
            CmbTipoAceptacion.ListIndex = RsPresupuesto!IdTipoAceptacion
            
            
            TxtFechaAvalAceptacion.Text = LeeFecha(RsPresupuesto!FechaAvalAceptacion.Value)
            CmbAval.ListIndex = NoNumNulo(RsPresupuesto!IdEstadoAval)
            CmbEntidadBancaria.ListIndex = NoNumNulo(RsPresupuesto!IdEntidadAval)

            CmbPConcepto.Text = RsPresupuesto!pConcepto & ""
            If CmbPConcepto.Text = "" Then
                CmbPConcepto.Text = "CONTROL DE CALIDAD"
            End If
            WordDoc(0) = RsPresupuesto!WordDoc & ""
            WordDoc(1) = RsPresupuesto!worddoc1 & ""
            If RsPresupuesto!MatrizWord & "" = "" Then
                CmbMatrices.ListIndex = -1
            Else
                CmbMatrices.ListIndex = BuscaList(CmbMatrices, RsPresupuesto!MatrizWord & "", False)
            End If
        
            sTxtCodigo = CompletaCon(CStr(RsPresupuesto!Codigo), 4, "0", 0)
            
            If RsPresupuesto!IdObra > 0 Then
                m_IDObra = RsPresupuesto!IdObra
                Me.Caption = "Pres - " & CompletaCon(CStr(RsPresupuesto!Codigo), 4, "0", 0) & " Obra - " & DameExpresion("IDOBRA", m_IDObra, "OBRAS", "CODIGO & ' ' & NOMBREABREVIADO")
            
                TxtTotal(2).Text = SumarPrecio("Presupuestos INNER JOIN PresupuestosyTarifas ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto", "Presupuestos.IDOBRA", _
                                    RsPresupuesto!IdObra.Value, "PresupuestosyTarifas.PrecioTotal", "PresupuestosyTarifas.Aceptada = 1", (100 - Val(TxtDescuento)) / 100)
            Else
                Me.Caption = "Presupuesto - " & CompletaCon(CStr(RsPresupuesto!Codigo), 4, "0", 0) & " " & TxtNombreObra.Text
            
                TxtTotal(2).Text = "0"
            End If
           ' If RsPresupuesto!IdCliente > 0 Then
                m_IDCliente = RsPresupuesto!IdCliente
                TxtDireccion.Text = RsPresupuesto!direccion & ""
                TxtCP.Text = RsPresupuesto!CP & ""
                TxtPoblacion.Text = RsPresupuesto!Poblacion & ""
                TxtProvincia.Text = RsPresupuesto!Provincia & ""
                
'   2003/11     HDT     Añadir opcion de Clase de Presupuesto.
                If RsPresupuesto!IdClasePresup = 1 Then
                    Opt_Estandar.Value = True
                ElseIf RsPresupuesto!IdClasePresup = 2 Then
                    Opt_Oferta.Value = True
                ElseIf RsPresupuesto!IdClasePresup = 3 Then
                    Opt_PreciosUnitarios.Value = True
                    If (RsPresupuesto!PreciosUnitarios) = True Then
                        ChkPreciosUnitarios.Value = 1
                        If UCase(m_LoginUsuario) <> "JUANJO" And UCase(m_LoginUsuario) <> "ADMINISTRADOR" Then
                            MTab.TabEnabled(7) = False
                        End If
                    Else
                        ChkPreciosUnitarios.Value = 0
                        MTab.TabEnabled(7) = True
                    End If
                End If
                'If (RsPresupuesto!Seguimiento) = True Then
                '    ChkSeguimiento.Value = 1
                'Else
                '    ChkSeguimiento.Value = 0
                'End If
                
                'If (RsPresupuesto!PreciosUnitarios) = True Then
                '    ChkPreciosUnitarios.Value = 1
                '    If UCase(m_LoginUsuario) <> "JUANJO" And UCase(m_LoginUsuario) <> "ADMINISTRADOR" Then
                '        MTab.TabEnabled(7) = False
                '    End If
                'Else
                '    ChkPreciosUnitarios.Value = 0
                '    MTab.TabEnabled(7) = True
                'End If
'------------------------------------------------------------------
                
                If (RsPresupuesto!Ocultar) = True Then
                    ChkOcultar.Value = 1
                Else
                    ChkOcultar.Value = 0
                End If
           ' End If
        
            Call ActualizarDbGrid(1)
            Call ActualizarDbGrid(2)
            
            ' Paco activar el Label que dice si tiene Ampliaciones.
            If RsMant(2).RecordCount > 0 Then
                LabelAmpliaciones.Visible = True
                If RsMant(2).RecordCount = 1 Then
                    LabelAmpliaciones.Caption = "Con una Ampliación"
                Else
                    LabelAmpliaciones.Caption = "Con " & RsMant(2).RecordCount & " Ampliaciones"
                End If
            Else
                LabelAmpliaciones.Visible = False
            End If
            
            
            Call ActualizarDbGrid(3)
            'Establecemos la base de datos y el Select del Control Data
        
            If RsPresupuesto!IdObra > 0 Then
                '8 3 2001 Descripción correcta en las tarifas.
                Call PrepararTodo(RsMant(1), DbGridMant(1), _
                    "SELECT PresupuestosyTarifas.IDTarifa, Tarifas.Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As DescCorta, PresupuestosyTarifas.PrecioUnitario, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal" _
                    & " FROM Presupuestos INNER JOIN (Tarifas INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto" _
                    & " WHERE (((Presupuestos.IdObra) = " & RsPresupuesto!IdObra & ") and Presupuestos.Aceptado=1)" _
                    & " GROUP BY PresupuestosyTarifas.IDTarifa, Tarifas.Codigo, Tarifas.DescCorta, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.Concepto" _
                    & " ORDER BY Tarifas.Codigo")
            Else
                Call PrepararTodo(RsMant(1), DbGridMant(1), _
                    "SELECT PresupuestosyTarifas.IDTarifa, Tarifas.Codigo, Tarifas.DescCorta, PresupuestosyTarifas.PrecioUnitario, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal" _
                    & " FROM Presupuestos INNER JOIN (Tarifas INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto" _
                    & " WHERE (((Presupuestos.IdObra) = -1))" _
                    & " GROUP BY Presupue7stosyTarifas.IDTarifa, Tarifas.Codigo, Tarifas.DescCorta, PresupuestosyTarifas.PrecioUnitario" _
                    & " ORDER BY Tarifas.Codigo")
            End If
            Dim Numero As Byte
            Numero = NumeroPlantillas(m_IDPresupuesto)
            CmdDocumentos.Caption = "Adjuntar Plantillas de Documentos            Numero Plantillas: " & Numero
        Else
            'Cerramos el recordset.
            RsPresupuesto.Close
            'Eliminamos los bloqueos que se hayan podido crear
            'DBEngine.Idle dbFreeLocks
            Alerta ("El Presupuesto no existe en la base de datos, posiblemente haya sido eliminado por otro usuario.")
            m_IDPresupuesto = 0 'Jose. 3 2 2005. Para evitar el bucle infinito en que entra a veces.
            Unload Me
            
            Exit Sub
        End If
'2003/10    Jose. 16 10 2003. Presupuestos OCT. --------------------------------------------------------
        OptForma(RsPresupuesto!FormaEntrada).Value = True
''2003/10    --------------------------------------------------------------------------------------------
        'Cerramos el recordset.
        On Error Resume Next
        RsPresupuesto.Close
        On Error GoTo 0
        
        'Eliminamos los bloqueos que se hayan podido crear
        'DBEngine.Idle dbFreeLocks
    
        'Actualizamos el estado de los botones.
        Call MTab_Click(0)
    End If
    
End Sub

Sub ActivarControlesEdicion()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Habilita y deshabilita controles del formulario
'   Bloquea y desblaquea botones dependiendo del usuario
'   Habilita los controles de edicion
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    TxtIncidencias.Enabled = True
    CmdIrObra.Enabled = False
    
    CmbTipoAceptacion.Visible = True
'    CmbVerbal.Visible = True
    CmbFormaPago.Locked = False
    
    'Habilitamos los controles de edición

    TxtPeticionario.Locked = False
    TxtNombreObra.Locked = False
    CmbSubtipo.Enabled = True
    TxtNombre.Locked = False
    TxtObservaciones.Locked = False
    TxtNota.Locked = False
    ChkOCT.Enabled = True
    CmbOCT.Locked = False
    TxtTelefono.Locked = False
    TxtFax.Locked = False
    txtPEM.Locked = False
    TxtEmail.Locked = False

    
    TxtMovil.Locked = False
    
    CmbFirma.Locked = False

    TxtDireccion.Locked = False
    TxtCP.Locked = False
    ChkSeguimiento.Enabled = True
    
    'Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT * FROM Presupuestos WHERE IdPresupuesto = " & m_IDPresupuesto, False)
    'If RsPresupuesto!Aceptado = 1 Then
    '       ChkPreciosUnitarios.Enabled = False
    'Else
    '      ChkPreciosUnitarios.Enabled = True
    'End If
    'If UCase(m_LoginUsuario) = "JUANJO" Then
    '       ChkPreciosUnitarios.Enabled = True
    'End If
    'RsPresupuesto.Close
    If PresupuestoAceptado = True Then
        If mp_CambiarClasePresup = True Then
           Opt_Estandar.Enabled = True
           Opt_Oferta.Enabled = True
           Opt_PreciosUnitarios.Enabled = True
        Else
           Opt_Estandar.Enabled = False
           Opt_Oferta.Enabled = False
           Opt_PreciosUnitarios.Enabled = False
        End If
    Else
        Opt_Estandar.Enabled = True
        Opt_Oferta.Enabled = True
        Opt_PreciosUnitarios.Enabled = True
    End If
    
    ChkOcultar.Enabled = True
    TxtPoblacion.Locked = False
    TxtProvincia.Locked = False

    
    CmbSucursal.Enabled = mp_Sucursales
    TxtApellidos.Locked = False
    TxtAnyo.Locked = False
    CmbTipoCliente.Locked = False
    TxtImporteAval.Locked = False
    TxtDon.Locked = False
    TxtMeses.Locked = False
    TxtDescuento.Locked = False
    TxtIVA.Locked = False
    CmbAvisoGeotecnico.Locked = False
    ChkGastosYBfo.Enabled = True
    ChkDesgloseDetallada(0).Enabled = True
    
    If ChkDesgloseDetallada(0).Value = 1 Then
        TxtPartidaAlzada(0).Enabled = True
    End If
    
    ChkDesgloseDetallada(1).Enabled = True
    If ChkDesgloseDetallada(1).Value = 1 Then
        TxtPA(0).Enabled = True
        TxtPA(1).Enabled = True
        TxtPA(2).Enabled = True
        TxtPA(3).Enabled = True
    End If
    

    TxtValor(0).Enabled = True
    TxtValor(1).Enabled = True
    TxtValor(2).Enabled = True
    TxtValor(3).Enabled = True
    TxtValor(4).Enabled = True
    TxtValor(11).Enabled = True
    TxtValor(10).Enabled = True
    TxtValor(14).Enabled = True
   
    TxtValor(5).Enabled = True
    TxtValor(6).Enabled = True
    TxtValor(7).Enabled = True
    TxtValor(8).Enabled = True
    TxtValor(9).Enabled = True
    TxtValor(12).Enabled = True
    TxtValor(13).Enabled = True
    TxtValor(15).Enabled = True
    TxtValor(16).Enabled = True
    TxtValor(17).Enabled = True
    TxtValor(18).Enabled = True
    TxtValor(19).Enabled = True
    TxtValor(20).Enabled = True
    TxtValor(21).Enabled = True
    TxtValor(22).Enabled = True
    TxtValor(23).Enabled = True
    
    Call ChkgastosYBfo_Click
    
    OptMostrar(0).Enabled = True
    OptMostrar(1).Enabled = True
    
    TxtFechaEmision.Locked = True
    TxtFechaAceptacion.Locked = True
    TxtFechaTerminado.Locked = False
    TxtFechaIniObra.Locked = False
    TxtFechaFinObra.Locked = False
    CmdIrCompañiaSeguros(1).Enabled = False
    CmdIrColaborador(0).Enabled = True
    CmdHojaDatos.Enabled = False
    CmbFechaFactura.Locked = False
    CmdSelFecha(0).Enabled = True
    CmdSelFecha(1).Enabled = True
    CmdSelFecha(2).Enabled = True
'    CmbVerbal.Enabled = True
    CmbTipoAceptacion.Enabled = True
    
    CmbTipo.Enabled = True
    
    'Habilitamos los botones de aceptar y cancelar
    CmdSelCliente.Enabled = Not PresupuestoAceptado
    If NuevoRegistro Then
        CmdPresAceptado(0).Enabled = False
    Else
        CmdPresAceptado(0).Enabled = True
    End If
    CmdIrCliente.Enabled = False
    
    CmbPConcepto.Locked = False
    
    CmdImprimir(1).Enabled = False
    CmdImprimir(2).Enabled = False
    CmdImprimir(3).Enabled = False
    'Jose. 10 2 2005.--------------
    CmdExportarWord.Enabled = False
    CmdExportarWord2.Enabled = False
    Command1.Enabled = False
    CmdMail.Enabled = False
    CmdFax.Enabled = False
    '------------------------------
    ChkPresPreliminar(0).Enabled = False
    ChkPresPreliminar(1).Enabled = False
    CmdAceptar.Enabled = True
    CmdCancelar.Enabled = True
    'Deshabilitamos el resto de botones
    CmdNuevo(0).Enabled = False
    CmdModificar.Enabled = False
    CmdDetalle.Enabled = False
    CmdEliminar.Enabled = False
'    CmdBuscar.Enabled = False
    CmdCerrar.Enabled = False
    CmbSeguros.Enabled = True
    CmbCorredor.Enabled = True
    CmbColaborador.Enabled = True
    CmbColaborador2.Enabled = True
    CmbCondicionesPago.Locked = False
    CmdPColab.Enabled = True
    
    ChkMisión(0).Enabled = True
    ChkMisión(1).Enabled = True
    ChkMisión(2).Enabled = True
    ChkMisión(3).Enabled = True
    ChkMisión(4).Enabled = True
    ChkMisión(7).Enabled = True
    ChkMisión(8).Enabled = True
    ChkMisión(9).Enabled = True
    ChkMisión(14).Enabled = True
    ChkMisión(18).Enabled = True
    ChkMisión(16).Enabled = True
    ChkMisión(15).Enabled = True
    
    'Pedro. 28 8 2006
    'If CmbTipo.Text = "SEGURIDAD Y SALUD" And UCase$(Left$(m_NombreDominio, 9)) = "DOMINIO_I" Then 'Pedro. 28 6 2006 Presupuesto Seguridad y Salud
    If CmbTipo.Text = "SEGURIDAD Y SALUD" And m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
        Me.SSTab2.TabVisible(2) = True
        Me.SSTab2.TabVisible(1) = False
    Else
        Me.SSTab2.TabVisible(2) = False
        Me.SSTab2.TabVisible(1) = True
    End If
    
    'Desactivamos los Tabs que no son de edición.
    If NuevoRegistro Then
        MTab.Tab = 0
        CmbMatrices.Locked = True
        CmdDNuevo.Enabled = False
        CmdDEliminar.Enabled = False
        MTab.TabEnabled(2) = False
        DbGridPropiedades.AllowUpdate = False
    Else
        CmbMatrices.Locked = False
        CmdDNuevo.Enabled = True
        CmdDEliminar.Enabled = True
        MTab.TabEnabled(2) = True
        DbGridPropiedades.AllowUpdate = True
    End If
    FrameAval.Enabled = True
'    CmbAval.Locked = False
'    CmbEntidadBancaria.Locked = False
'    TxtFechaAvalAceptacion.Enabled = False
    
    MTab.TabEnabled(3) = False
    MTab.TabEnabled(4) = False
    MTab.TabEnabled(5) = True
    
    'Movemos el cursor al primer campo.
    'Ej: TxtNombre.SetFocus
    If MTab.Tab = 0 Then
        CmbTipo.SetFocus
    Else
        If MTab.Tab = 1 Then
            TxtObservaciones.SetFocus
        Else
            CmbMatrices.SetFocus
        End If
    End If
    
'2004/06    Jose. Nueva opción de presupuestos con acuerdos marcos con un cliente. -----------------
    CmdAcuerdoMarco.Enabled = True
'2004/06    ----------------------------------------------------------------------------------------
    
    'Jose. 1 9 2005. Nuevo control para ampliaciones.
    CmbTipoAmpliacion.Enabled = True
    
    'Jose. 7 11 2005. Permitir modificar el usuario de seguimiento asignado
    CmbUsuario(1).Locked = False
    
    'Jose. 26 5 2006. Nuevas opciones para indicar como se ha aceptado el presupuesto.
    FrmAceptadoPor.Enabled = True
    
    'Jose. 16 11 2006. Precio marca ó 'tope' metido a mano. Se pueden meter varios, hay un formulario para ello.
    FrmMarca.Enabled = False
    
    'Jose. 17 11 2006. Aprovechando COMO SIEMPRE, este marco estaba siempre activo.
    FrmFormaEntrada.Enabled = True
    
End Sub

Sub DesactivarControlesEdicion()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Habilita y deshabilita controles del formulario
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    TxtIncidencias.Enabled = False
    CmdIrObra.Enabled = True
    
    'Siempre los Txt de los combos están desactivados, y otros.
    TxtTotal(0).Locked = True
    TxtTotal(1).Locked = True
    TxtTotal(2).Locked = True
    
    CmbSucursal.Enabled = False
    CmbFormaPago.Locked = True
    CmbUsuario(1).Locked = True
    'Hacemos visibles e invisibles los distintos controles
    'Ej: TxtNombre.Visible = True
    'Ej: CmbNombre.Visible = False
    
    'CmbVerbal.Visible = False
    
    'Primero deshabilitamos los objetos que van a estar visibles
    'Ej: TxtNombre.Enabled = False
    TxtPeticionario.Locked = True
    TxtNombreObra.Locked = True
    CmbSubtipo.Enabled = False
    TxtNombre.Locked = True
    TxtObservaciones.Locked = True
    TxtNota.Locked = True
    ChkOCT.Enabled = False
    CmbOCT.Locked = True
    TxtTelefono.Locked = True
    TxtFax.Locked = True
    TxtEmail.Locked = True
    txtPEM.Locked = True
    TxtPoliza.Locked = True

    CmbFirma.Locked = True

    TxtValor(0).Enabled = False
    TxtValor(1).Enabled = False
    TxtValor(2).Enabled = False
    TxtValor(3).Enabled = False
    TxtValor(4).Enabled = False
    TxtValor(11).Enabled = False
    TxtValor(10).Enabled = False
    TxtValor(14).Enabled = False
    
    TxtValor(5).Enabled = False
    TxtValor(6).Enabled = False
    TxtValor(7).Enabled = False
    TxtValor(8).Enabled = False
    TxtValor(9).Enabled = False
    TxtValor(12).Enabled = False
    TxtValor(13).Enabled = False
    TxtValor(15).Enabled = False
    TxtValor(16).Enabled = False
    TxtValor(17).Enabled = False
    TxtValor(18).Enabled = False
    TxtValor(19).Enabled = False
    TxtValor(20).Enabled = False
    TxtValor(21).Enabled = False
    TxtValor(22).Enabled = False
    TxtValor(23).Enabled = False
    
    TxtMovil.Locked = True
    TxtDireccion.Locked = True
    TxtCP.Locked = True
    ChkSeguimiento.Enabled = False
    ChkPreciosUnitarios.Enabled = False
    ChkOcultar.Enabled = False
    TxtPoblacion.Locked = True
    TxtProvincia.Locked = True
    
    TxtApellidos.Locked = True
    TxtAnyo.Locked = True
    CmbTipoCliente.Locked = True
    TxtImporteAval.Locked = True
    TxtDon.Locked = True
    TxtMeses.Locked = True
    TxtDescuento.Locked = True
    TxtIVA.Locked = True
    CmbAvisoGeotecnico.Locked = True
    ChkGastosYBfo.Enabled = False
    TxtGastosGenerales.Locked = True
    TxtBfoIndustrial.Locked = True
        
    OptMostrar(0).Enabled = False
    OptMostrar(1).Enabled = False
    
    TxtFechaEmision.Locked = True
    TxtFechaAceptacion.Locked = True
    TxtFechaTerminado.Locked = True
    TxtFechaIniObra.Locked = True
    TxtFechaFinObra.Locked = True

    CmbFechaFactura.Locked = True
    CmdSelFecha(0).Enabled = False
    CmdSelFecha(1).Enabled = False
    CmdSelFecha(2).Enabled = False
'    CmbVerbal.Enabled = False
    CmbTipoAceptacion.Enabled = False
    CmbTipo.Enabled = False
    TxtPA(0).Enabled = False
    TxtPA(1).Enabled = False
    TxtPA(2).Enabled = False
    TxtPA(3).Enabled = False
    TxtPartidaAlzada(0).Enabled = False
    TxtPartidaAlzada(1).Enabled = False
    CmbSeguros.Enabled = False
    CmbCorredor.Enabled = False
    CmbColaborador.Enabled = False
    CmbColaborador2.Enabled = False
    CmbCondicionesPago.Locked = True
    
    'Deshabilitamos los botones de aceptar y cancelar
    CmdSelCliente.Enabled = False
    CmdPresAceptado(0).Enabled = False
    CmdIrCliente.Enabled = True
    CmdAceptar.Enabled = False
    CmdCancelar.Enabled = False
    CmdIrCompañiaSeguros(1).Enabled = True
    CmdIrColaborador(0).Enabled = False
    CmdHojaDatos.Enabled = True
    
    CmbPConcepto.Locked = True
    
    ChkPresPreliminar(0).Enabled = True
    ChkPresPreliminar(1).Enabled = True
    ChkDesgloseDetallada(0).Enabled = False
    ChkDesgloseDetallada(1).Enabled = False

    CmdDetalle.Enabled = True
    CmdPColab.Enabled = False
    
    'Habilitamos el resto de botones
'    CmdNuevo.Enabled = True
'    CmdModificar.Enabled = True
'    CmdEliminar.Enabled = True
'    CmdBuscar.Enabled = True
    CmdCerrar.Enabled = True
    FrameAval.Enabled = False
    
    ChkMisión(0).Enabled = False
    ChkMisión(1).Enabled = False
    ChkMisión(2).Enabled = False
    ChkMisión(3).Enabled = False
    ChkMisión(4).Enabled = False
    ChkMisión(7).Enabled = False
    ChkMisión(8).Enabled = False
    ChkMisión(9).Enabled = False
    Me.ChkMisión(14).Enabled = False
    Me.ChkMisión(18).Enabled = False
    Me.ChkMisión(16).Enabled = False
    Me.ChkMisión(15).Enabled = False
    
    'Pedro. 28 8 2006
    'If CmbTipo.Text = "SEGURIDAD Y SALUD" And UCase$(Left$(m_NombreDominio, 9)) = "DOMINIO_I" Then 'Pedro. 28 6 2006 Presupuesto Seguridad y Salud
    If m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
        Me.SSTab2.TabVisible(2) = True
        Me.SSTab2.TabVisible(1) = False
    Else
        Me.SSTab2.TabVisible(2) = False
        Me.SSTab2.TabVisible(1) = True
    End If
    
    'Habilitamos los Tabs que no son de edición.
    CmbMatrices.Locked = True
    CmdDNuevo.Enabled = False
    CmdDEliminar.Enabled = False
    MTab.TabEnabled(2) = True
    DbGridPropiedades.AllowUpdate = False
    MTab.TabEnabled(3) = True
    MTab.TabEnabled(4) = True
    MTab.TabEnabled(5) = True
    
    'Actualizamos el estado de los botones.
    Call MTab_Click(0)
    
'2004/06    Jose. Nueva opción de presupuestos con acuerdos marcos con un cliente. -----------------
    CmdAcuerdoMarco.Enabled = False
'2004/06    ----------------------------------------------------------------------------------------
        
    'Jose. 1 9 2005. Nuevo control para ampliaciones.
    CmbTipoAmpliacion.Enabled = False
    
    'Jose. 26 5 2006. Nuevas opciones para indicar como se ha aceptado el presupuesto.
    FrmAceptadoPor.Enabled = False
    
    'Jose. 16 11 2006. Precio marca ó 'tope' metido a mano. Se pueden meter varios, hay un formulario para ello.
    FrmMarca.Enabled = True
    
    'Jose. 17 11 2006. Aprovechando COMO SIEMPRE, este marco estaba siempre activo.
    FrmFormaEntrada.Enabled = False
    
    Opt_Estandar.Enabled = False
    Opt_Oferta.Enabled = False
    Opt_PreciosUnitarios.Enabled = False
    
End Sub

Function ComprobarDatos() As Boolean
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que todos los datos que han sido introducidos en los controles son  validos
'
'PARAMETROS :
'
'RETORNO :
'   .T.  Si los datos son validos
'   .F.  Si los datos no son validos
'
'PROCESO :
'   1) Comprueba que las cajas de texto tienen valores
'   2) Comprueba los comboBox con sus valores
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    ComprobarDatos = True
'    If CmbFormaPago.ListIndex = -1 Then
'        Alerta ("Debe seleccionar una Forma de pago.")
'        ComprobarDatos = False
'        Exit Function
'    End If
    'Comprobamos los combos si es necesario
    'Ej:    If CmbNombre.ListIndex = -1 Then
    '           Alerta ("Mensaje de error")
    '           ComprobarDatos = False
    '           Exit Function
    '       End If
    'If Cmb.ListIndex = -1 Then
    '    Alerta ("Mensaje de error")
    '    ComprobarDatos = False
    '    Exit Function
    'End If
    
    'Comprobamos los controles de texto necesarios
    'Ej:    If Not CompruebaQueEsteRelleno(TxtNombre, "Nombre") Then
    '           ComprobarDatos = False
    '           Exit Function
    '       End If
    'If Not CompruebaQueEsteRelleno(Txt, "") Then
    '    ComprobarDatos = False
    '    Exit Function
    'End If

    'Comprobamos los controles de fecha necesarios
    'Ej:    If Not CompruebaFecha(TxtNombre, "Nombre") Then
    '           ComprobarDatos = False
    '           Exit Function
    '       End If ' La comprobacion es sobre la fecha válida,
    '                si esta vacía no da error. Habrá que usar
    '                CompruebaQueEsteRelleno despues.
    'If Not CompruebaFecha(Txt, "") Then
    '    ComprobarDatos = False
    '    Exit Function
    'End If
    
    If Not CompruebaQueEsteRelleno(TxtNombreObra, "Nombre de la obra") Then
        ComprobarDatos = False
        Exit Function
    End If
    If Not CompruebaQueEsteRelleno(TxtAnyo, "Año") Then
        ComprobarDatos = False
        Exit Function
    End If
    'If (RsPresupuesto!IdEstadoaval.Value <> 0 And CmbAval.ListIndex = 0) Or (RsPresupuesto!IdEstadoaval.Value <> 0 And CmbEntidadBancaria.ListIndex = 0)
    If CmbAval.ListIndex <> 0 And CmbEntidadBancaria.ListIndex = 0 Then
        Call Informacion("Debe introducir una entidad bancaria.")
        ComprobarDatos = False
        CmbEntidadBancaria.SetFocus
        Exit Function
    End If
    If CmbAval.ListIndex = 0 And CmbEntidadBancaria.ListIndex <> 0 And CmbEntidadBancaria.ListIndex <> -1 Then
        Call Informacion("Debe introducir el estado del aval.")
        ComprobarDatos = False
        CmbAval.SetFocus
        Exit Function
    End If
    
    If Not ComprobarCombo("El Tipo de presupuesto", CmbTipo, "TiposPresupuesto", "IDTipoPresupuesto") Then
        ComprobarDatos = False
        Exit Function
    End If
' --------------------------------

    If Not ComprobarCombo("La sucursal", CmbSucursal, "Sucursal", "IdSucursal") Then
        ComprobarDatos = False
        MTab.Tab = 0
        CmbSucursal.SetFocus
        Exit Function
    End If
    
' ----------------------------------
    CmbPConcepto.Text = Trim(CmbPConcepto.Text)
    If CmbPConcepto.Text = "" And FrmMPresupuestos.CmbPresAmpliacion.ListIndex <> 2 Then
        Alerta ("Debe especificar el tipo de Programa-Presupuesto")
    
        ComprobarDatos = False
        MTab.Tab = 1
        CmbPConcepto.SetFocus
        Exit Function
    End If
'    If ChkGastosYBfo = 1 Then
'        If Not CompruebaQueEsteRelleno(TxtGastosGenerales, "Gastos generales") Then
'            ComprobarDatos = False
'            Exit Function
'        End If
'        If Not CompruebaQueEsteRelleno(TxtBfoIndustrial, "Beneficio industrial") Then
'            ComprobarDatos = False
'            Exit Function
'        End If
'    End If

    If NuevoRegistro Then
        If Not CompruebaQueEsteRelleno(TxtAnyo, "Año") Then
            ComprobarDatos = False
            Exit Function
        End If
    End If
    
End Function

Function GrabarAgenda() As Boolean
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un registro en la tabla "Presupuestos con los datos de los controles del formulario
'
'PARAMETROS :
'
'RETORNO :
'   .T. Si ha creado el registro sin problemas
'   .F. Si no a podido crear el registro
'
'PROCESO :
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2003/03     HDT     Unificación de la Aplicación.
'
'DOCF FIN -------------------------------------------------------------

    Dim ClasePresupAnt As Byte
    Dim RsAgenda As New Recordset
    
    GrabarAgenda = True

    dbPrincipal.BeginTrans
    Call mClsAgendaComercial.PueblaRecordset(RsAgenda, "SELECT * FROM AgendaComercial WHERE IdPresupuesto = " & m_IDPresupuesto, False)
    If RsAgenda.EOF Then
'        Call mClsAgendaComercial.PueblaRecordset(RsAgenda, "SELECT Top 1 * FROM AgendaComercial", False)
        RsAgenda.AddNew
        RsAgenda!IdPresupuesto = m_IDPresupuesto
        
        'Paco. 7-8-2007. Corregido.
        'RsAgenda!IdSucursal.Value = ObtenerIDSucursal(m_CodigoEmpresa)
        RsAgenda!IdSucursal.Value = NoNumNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "IdSucursal"))
    End If
    If m_IDPresupuesto < 1 Then
        RsAgenda!Codigo = 0
    Else
        RsAgenda!Codigo = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "Codigo")
    End If
    RsAgenda!IDFirma = CmbFirma.ItemData(CmbFirma.ListIndex)
    RsAgenda!ESPLANTILLA = 0
    RsAgenda!IdCliente.Value = IDClientePresupuesto
    RsAgenda!NombreObra.Value = TxtNombreObra.Text
    If CmbFormaPago.ListIndex = -1 Then
        RsAgenda!IDFormaPago.Value = 69
    Else
        RsAgenda!IDFormaPago.Value = CmbFormaPago.ItemData(CmbFormaPago.ListIndex)
    End If
    RsAgenda!UsuarioAsignado = CmbUsuario(1)
    RsAgenda!Subtipo.Value = CmbSubtipo.Text & ""
    RsAgenda!Peticionario.Value = TxtPeticionario.Text
    RsAgenda!Aceptado.Value = IIf((RsAgenda!IdObra > 0), 1, 0)
    RsAgenda!Oct = ChkOCT.Value
    RsAgenda!NombreOCT = CmbOCT.Text
    RsAgenda!Nombre = TxtNombre.Text
    RsAgenda!Observaciones = TxtObservaciones.Text
    If m_FormatoFactura = "L" Then
        RsAgenda!Nota = TxtNota.Text
    Else
        RsAgenda!CondicionesParticulares = TxtNota.Text
    End If
    
    RsAgenda!Telefono = TxtTelefono.Text
    RsAgenda!Fax = TxtFax.Text
    RsAgenda!movil = TxtMovil.Text
    RsAgenda!Email = TxtEmail.Text
    RsAgenda!direccion.Value = TxtDireccion.Text
    RsAgenda!CP.Value = TxtCP.Text
    RsAgenda!Seguimiento = ChkSeguimiento.Value
    
'    ClasePresupAnt = RsAgenda!IdClasePresup
    If Opt_Estandar.Value = True Then RsAgenda!IdClasePresup = 1
    If Opt_Oferta.Value = True Then RsAgenda!IdClasePresup = 2
    If Opt_PreciosUnitarios.Value = True Then
      RsAgenda!IdClasePresup = 3
      RsAgenda!PreciosUnitarios = 1
    Else
      RsAgenda!PreciosUnitarios = 0
    End If
    
    RsAgenda!Ocultar = ChkOcultar.Value
    RsAgenda!Poblacion.Value = TxtPoblacion.Text
    RsAgenda!Provincia.Value = TxtProvincia.Text

    RsAgenda!Apellidos.Value = TxtApellidos.Text
    RsAgenda!Anyo.Value = TxtAnyo.Text
    If TxtImporteAval = "" Then
        RsAgenda!ImporteAval.Value = 0
    Else
        RsAgenda!ImporteAval.Value = Round(CDbl(TxtImporteAval.Text), 2)
    End If
    If CmbTipo.ListIndex = -1 Then
        RsAgenda!IdTipoPresupuesto.Value = 1
    Else
        RsAgenda!IdTipoPresupuesto.Value = CmbTipo.ItemData(CmbTipo.ListIndex)
    End If
    
    RsAgenda!Don.Value = TxtDon.Text
    RsAgenda!Meses = Val(TxtMeses.Text)
    RsAgenda!DesglosePartidaAlzada = Null
    RsAgenda!Liquidado = Liquidado
    RsAgenda!PorcColaborador = PorcColaborador
    
    If ChkDesgloseDetallada(0).Value = 1 Then
         
        RsAgenda!ControlMAterial = NoNumNulo(TxtPartidaAlzada(0))
        RsAgenda!TarifaMaterial = NoNumNulo(TxtPartidaAlzada(1).Text)
        
        RsAgenda!ControlMontaje = 0
        RsAgenda!PruebasFinales = 0
        RsAgenda!AsistenciaTecnica = 0
        
        RsAgenda!TarifaMontaje = 0
        RsAgenda!TarifaPruebas = 0
        RsAgenda!TarifaAsistencia = 0
        RsAgenda!DesglosePartidaAlzada = 2
    End If
    
    If CmbSeguros.ListIndex > -1 Then
        RsAgenda!IdSeguro.Value = CmbSeguros.ItemData(CmbSeguros.ListIndex)
    Else
        RsAgenda!IdSeguro.Value = Null
    End If
    
    If CmbCorredor.ListIndex > -1 Then
        RsAgenda!IdCorredorSeguro.Value = CmbCorredor.ItemData(CmbCorredor.ListIndex)
    Else
        RsAgenda!IdCorredorSeguro.Value = Null
    End If
    
    
    If CmbColaborador.ListIndex > -1 Then
        RsAgenda!IDColaborador.Value = CmbColaborador.ItemData(CmbColaborador.ListIndex)
    Else
        RsAgenda!IDColaborador.Value = Null
    End If
    If CmbColaborador2.ListIndex > -1 Then
        RsAgenda!IDColaborador2.Value = CmbColaborador2.ItemData(CmbColaborador2.ListIndex)
    Else
        RsAgenda!IDColaborador2.Value = Null
    End If
    If CmbCondicionesPago.ListIndex > -1 Then
        RsAgenda!IdCondicionesPago.Value = CmbCondicionesPago.ItemData((CmbCondicionesPago.ListIndex))
    Else
        RsAgenda!IdCondicionesPago.Value = 3
    End If

    RsAgenda!Poliza = Val(TxtPoliza.Text)
    RsAgenda!Pem.Value = txtPEM.Text
    RsAgenda!CoberturaBasica = NoNumNulo(TxtValor(0))
    RsAgenda!EstanquidadFachadas = NoNumNulo(TxtValor(1))
    RsAgenda!EstanquidadCubiertas = NoNumNulo(TxtValor(2))
    RsAgenda!ControlAcabados = NoNumNulo(TxtValor(3))
    RsAgenda!Otros = NoNumNulo(TxtValor(4))
    
    RsAgenda!valorinstalaciones = NoNumNulo(TxtValor(11))
    RsAgenda!valorinstalaciones2 = NoNumNulo(TxtValor(10))
    RsAgenda!valorinstalaciones3 = NoNumNulo(TxtValor(14))
    
    
    RsAgenda!EstanquidadFachada = (ChkMisión(0).Value)
    RsAgenda!EstanquidadCubierta = (ChkMisión(1).Value)
    RsAgenda!ControlAcabado = (ChkMisión(2).Value)
    RsAgenda!Otro = (ChkMisión(3).Value)
    
    RsAgenda!ControlInstalaciones = ChkMisión(7).Value
    RsAgenda!ControlInstalaciones2 = ChkMisión(8).Value
    RsAgenda!ControlInstalaciones3 = ChkMisión(9).Value
    
    RsAgenda!CSSFP = ChkMisión(14).Value
    RsAgenda!CSSFE = ChkMisión(18).Value
    
    RsAgenda!EstudiosBasSegSal = ChkMisión(16).Value
    RsAgenda!OtrDesSegSal = ChkMisión(15).Value
    
    
    RsAgenda!Fechainiobra.Value = GrabaFecha(TxtFechaIniObra.Text)
    RsAgenda!Fechafinobra.Value = GrabaFecha(TxtFechaFinObra.Text)
    
    If ChkDesgloseDetallada(1).Value = 1 Then
        If RsAgenda!Euros <> 0 Then
            RsAgenda!ControlMAterial = NoNumNulo(TxtPA(0))
            RsAgenda!ControlMontaje = NoNumNulo(TxtPA(1))
            RsAgenda!PruebasFinales = NoNumNulo(TxtPA(2))
            RsAgenda!AsistenciaTecnica = NoNumNulo(TxtPA(3))
            
            RsAgenda!TarifaMaterial = NoNumNulo(TxtTarifa(0))
            RsAgenda!TarifaMontaje = NoNumNulo(TxtTarifa(1))
            RsAgenda!TarifaPruebas = NoNumNulo(TxtTarifa(2))
            RsAgenda!TarifaAsistencia = NoNumNulo(TxtTarifa(3))
            RsAgenda!DesglosePartidaAlzada = 1
        Else
            RsAgenda!ControlMAterial = Round(NoNumNulo(TxtPA(0)) * 166.386, 0)
            RsAgenda!ControlMontaje = Round(NoNumNulo(TxtPA(1)) * 166.386, 0)
            RsAgenda!PruebasFinales = Round(NoNumNulo(TxtPA(2)) * 166.386, 0)
            RsAgenda!AsistenciaTecnica = Round(NoNumNulo(TxtPA(3)) * 166.386, 0)
            
            RsAgenda!TarifaMaterial = Round(NoNumNulo(TxtTarifa(0)) * 166.386, 0)
            RsAgenda!TarifaMontaje = Round(NoNumNulo(TxtTarifa(1)) * 166.386, 0)
            RsAgenda!TarifaPruebas = Round(NoNumNulo(TxtTarifa(2)) * 166.386, 0)
            RsAgenda!TarifaAsistencia = Round(NoNumNulo(TxtTarifa(3)) * 166.386, 0)
            RsAgenda!DesglosePartidaAlzada = 1

        End If
    End If
    
    If RsAgenda!IdObra > 0 Then
        RsAgenda!Descuento = DameExpresionN("IDOBRA", m_IDObra, "OBRAS", "Descuento")
        RsAgenda!IVA = DameExpresionN("IDOBRA", m_IDObra, "OBRAS", "IVA")
        RsAgenda!porcentajegastosgenerales = DameExpresionN("IDOBRA", m_IDObra, "OBRAS", "PorcentajeGastosGenerales")
        RsAgenda!porcentajebfoindustrial = DameExpresionN("IDOBRA", m_IDObra, "OBRAS", "PorcentajeBfoIndustrial")
    Else
        RsAgenda!Descuento = CadenaADouble(TxtDescuento.Text) ' Bonificación
        If TxtIVA & "" <> "" Then RsAgenda!IVA = SustituirPor(TxtIVA, "%", "") ' IVA
        RsAgenda!gastosybfo = ChkGastosYBfo.Value
        If ChkGastosYBfo.Value = 1 Then
            RsAgenda!porcentajegastosgenerales = SustituirPor(TxtGastosGenerales, "%", "")
            RsAgenda!porcentajebfoindustrial = SustituirPor(TxtBfoIndustrial.Text, "%", "")
        Else
            RsAgenda!porcentajegastosgenerales = Null
            RsAgenda!porcentajebfoindustrial = Null
        End If
    End If
    
    RsAgenda!IdTipoaviso = CmbAvisoGeotecnico.ListIndex
    
    RsAgenda!Mostrar = OptMostrar(0).Value
    
    RsAgenda!MatrizWord = CmbMatrices.Text
    
    RsAgenda!FechaEmision.Value = GrabaFecha(TxtFechaEmision.Text)
    
    If (RsAgenda!IdEstadoAval.Value <> 0 And CmbAval.ListIndex = 0) Or (RsAgenda!IdEstadoAval.Value <> 0 And CmbEntidadBancaria.ListIndex = 0) Then
    
        'PERMISO PARA QUITAR UN AVAL.
        
        If UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or m_IDUsuario = 16 Then
            RsAgenda!IdEstadoAval.Value = CmbAval.ListIndex
            RsAgenda!IdEntidadAval.Value = CmbEntidadBancaria.ListIndex
            RsAgenda!FechaAvalAceptacion.Value = GrabaFecha(TxtFechaAvalAceptacion.Text)

        Else
            Call Informacion("No tiene permiso para modificar el estado del aval.")
        End If
    Else
        RsAgenda!IdEstadoAval.Value = CmbAval.ListIndex
        RsAgenda!IdEntidadAval.Value = CmbEntidadBancaria.ListIndex
        RsAgenda!FechaAvalAceptacion.Value = GrabaFecha(TxtFechaAvalAceptacion.Text)
    End If

    If IsNull(GrabaFecha(TxtFechaAceptacion.Text)) Then
        If RsAgenda!Aceptado.Value = 0 Then
            RsAgenda!FechaAceptacion.Value = Null
        End If
    Else
        RsAgenda!FechaAceptacion.Value = GrabaFecha(TxtFechaAceptacion.Text)
    End If
    RsAgenda!FechaTerminado.Value = GrabaFecha(TxtFechaTerminado.Text)
    RsAgenda!FechaPrevista.Value = CmbFechaFactura.ListIndex
'    RsAgenda!Verbal = 1 - CmbVerbal.ListIndex
    RsAgenda!IdTipoAceptacion = CmbTipoAceptacion.ListIndex
    
    RsAgenda!WordDoc = Trim(WordDoc(0))
    RsAgenda!worddoc1 = Trim(WordDoc(1))
    RsAgenda!pConcepto = Trim(CmbPConcepto.Text)

    RsAgenda!RegistroBloqueado = False
    RegistroBloqueado = False
    
    m_IDAgendaComercial = RsAgenda!IdAgenda

    RsAgenda.Update
    RsAgenda.Close
    
    dbPrincipal.CommitTrans

   
    Set RsAgenda = Nothing 'Jose. 15 10 2003. Antes no se liberaba.
    
    Dim Rg As New Recordset
    Call mClsGestion.PueblaRecordset(Rg, "SELECT * FROM PresupuestosSeguimientos WHERE IdAgenda= " & m_IDAgendaComercial, False)
    If Rg.EOF = False Then
        Rg.MoveFirst
        Do While Rg.EOF = False
            Rg!IdPresupuesto = m_IDPresupuesto
            Rg.Update
            Rg.MoveNext
        Loop
    End If

    Rg.Close
    Set Rg = Nothing
    Exit Function

ErrorAlActualizar:
    
    Dim MensajeError As String
    MensajeError = "Error al actualizar en la Base de Datos." & vbCrLf & Err.Description
    
    On Error Resume Next
    Set RsPresupuesto = Nothing
    dbPrincipal.RollbackTrans
    On Error GoTo 0
    Err.Clear
    
    Alerta (MensajeError)
    
    GrabarAgenda = False
    
    Exit Function

End Function
Function GrabarRegistro() As Boolean
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un registro en la tabla "Presupuestos con los datos de los controles del formulario
'
'PARAMETROS :
'
'RETORNO :
'   .T. Si ha creado el registro sin problemas
'   .F. Si no a podido crear el registro
'
'PROCESO :
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2003/03     HDT     Unificación de la Aplicación.
'
'DOCF FIN -------------------------------------------------------------

    Dim Marcador As Long
    Dim RsFirmas As New Recordset
'    Dim RsPresOCT As New Recordset
    Dim ClasePresupAnt As Byte
    Dim CodigoAgenda As Long
    GrabarRegistro = True

    If Not ComprobarDatos Then
        GrabarRegistro = False
        
        Set RsFirmas = Nothing 'Jose. 29 5 2006.
        Exit Function
    End If

    'ON Error GoTo ErrorAlActualizar
    
    dbPrincipal.BeginTrans
    'Call mClsFirmas.PueblaRecordset(RsFirmas, "SELECT * FROM Firmas WHERE IDFirma ='" & CmbFirma & "'")
    If NuevoRegistro Then
        Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT Top 1 * FROM Presupuestos", False)
        RsPresupuesto.AddNew
        
        'Paco. 7-8-2007. Corregido.
        'Solo en registros nuevos. Se pondrá la sucursal nueva.
        RsPresupuesto!IdSucursal.Value = CmbSucursal.ItemData(CmbSucursal.ListIndex)
        
' Modificacion para la unificación -------------------------
        Dim RsPresup1 As New Recordset
        Call mClsClientes.PueblaRecordset(RsPresup1, "SELECT UltimoPresupuesto FROM Sucursales" _
            & " WHERE (IdSucursal = '" & CmbSucursal.ItemData(CmbSucursal.ListIndex) & "')", False)  ' And (ANYO = " & Year(Date) & ") And Codigo < 7000 ")
        If Not RsPresup1.EOF Then
            RsPresupuesto!Codigo = NoNumNulo(RsPresup1!ultimoPresupuesto) + 1
            CodigoAgenda = RsPresupuesto!Codigo
        End If
        RsPresup1!ultimoPresupuesto = RsPresup1!ultimoPresupuesto + 1
        RsPresup1.Update
        
        RsPresup1.Close
        Set RsPresup1 = Nothing
        'RsPresupuesto!Codigo = DameCodigoUltimoPresupREMOTO("UltimoPresupuesto", 1, "Presupuestos", "Codigo", " And (ANYO = " & TxtAnyo.Text & ") AND (IdSucursal = '" & CmbSucursal.ItemData(CmbSucursal.ListIndex) & "')", CmbSucursal.ItemData(CmbSucursal.ListIndex))
' ---------------------------------------------------------

    Else
        Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT * FROM Presupuestos WHERE IdPresupuesto = " & m_IDPresupuesto, False)
    End If
            
    'Jose. 19 12 2006. Modificar el nombre de la obra también en la obra propiamente dicha, si existe, o sea, si el presupuesto esta aceptado.
    Dim RsObra As New Recordset
    If NoNumNulo(RsPresupuesto!IdObra) > 0 Then 'El presupuesto estará aceptado y tiene una obra relacionada con él.
        Call mClsObras.PueblaRecordset(RsObra, "SELECT NombreObra FROM Obras WHERE IDObra = " & RsPresupuesto!IdObra, False)
        If RsAbierto(RsObra) Then
            RsObra!NombreObra = TxtNombreObra.Text
            RsObra.Update
            RsObra.Close
        End If
    End If
    Set RsObra = Nothing
    '-----------------------------------------------------------------------------------------------------------------------------------------
    
    'Antonio 27 04 04-------------------------------------------------------------------------
    If RsMant(2).RecordCount > 0 Then
        Dim RsIncidencia As New Recordset
        Call mClsPresupuestos.PueblaRecordset(RsIncidencia, "SELECT Presupuestos.Incidencias FROM Presupuestos INNER JOIN  PresupuestosAmpliacion ON   Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo WHERE (Presupuestos.Ampliacion = 1) and (IdPresupuestoHijo=" & RsMant(2)!IdPresupuesto & ") and (IdPresupuestoPadre=" & m_IDPresupuesto & ") ", False)
        If RsIncidencia.RecordCount <> 0 Then
            RsIncidencia!Incidencias = TxtIncidencias.Text
            RsIncidencia.Update
        End If
        RsIncidencia.Close
        Set RsIncidencia = Nothing
    End If
    '------------------------------------------------------------------------------------------
        
    'Antonio 04 ago 03------------------------------------------------------------------------
    RsPresupuesto!IDFirma = CmbFirma.ItemData(CmbFirma.ListIndex)
    '-----------------------------------------------------------------------------------------
    RsPresupuesto!ESPLANTILLA = 0
    
    RsPresupuesto!IdCliente.Value = IDClientePresupuesto
    RsPresupuesto!NombreObra.Value = TxtNombreObra.Text
    If CmbFormaPago.ListIndex = -1 Then
        RsPresupuesto!IDFormaPago.Value = 69 'Jose. 8 3 2006. Que raro, no existe esa forma de pago
    Else
        RsPresupuesto!IDFormaPago.Value = CmbFormaPago.ItemData(CmbFormaPago.ListIndex)
    End If
    RsPresupuesto!UsuarioAsignado = CmbUsuario(1)
    RsPresupuesto!Subtipo.Value = CmbSubtipo.Text & ""
    RsPresupuesto!Peticionario.Value = TxtPeticionario.Text
    RsPresupuesto!Aceptado.Value = IIf((RsPresupuesto!IdObra > 0), 1, 0)
    RsPresupuesto!Oct = ChkOCT.Value
    RsPresupuesto!NombreOCT = CmbOCT.Text
    RsPresupuesto!Nombre = TxtNombre.Text
    RsPresupuesto!Observaciones = TxtObservaciones.Text
    If m_FormatoFactura = "L" Then 'Jose. 24 3 2006. Esta distinción no entiendo a que viene. Sera de la unificacion.
        RsPresupuesto!Nota = TxtNota.Text
    Else
        RsPresupuesto!CondicionesParticulares = TxtNota.Text
    End If
    
    RsPresupuesto!Telefono = TxtTelefono.Text
    RsPresupuesto!Fax = TxtFax.Text
    RsPresupuesto!movil = TxtMovil.Text
    RsPresupuesto!Email = TxtEmail.Text
    
    RsPresupuesto!direccion.Value = TxtDireccion.Text
    RsPresupuesto!CP.Value = TxtCP.Text
    RsPresupuesto!Seguimiento = ChkSeguimiento.Value
    If Not NuevoRegistro Then
        If RsPresupuesto!IdClasePresup = vbNull Then
            ClasePresupAnt = 1 'Jose. 3 3 2004. Igual a "" no podía ser. ¿Debe ser 1 o 0??
        Else
            ClasePresupAnt = RsPresupuesto!IdClasePresup
        End If
    End If
    If Opt_Estandar.Value = True Then RsPresupuesto!IdClasePresup = 1
    If Opt_Oferta.Value = True Then RsPresupuesto!IdClasePresup = 2
    If Opt_PreciosUnitarios.Value = True Then
      RsPresupuesto!IdClasePresup = 3
      RsPresupuesto!PreciosUnitarios = 1
    Else
      RsPresupuesto!PreciosUnitarios = 0
    End If
    If (ClasePresupAnt <> RsPresupuesto!IdClasePresup) And RsPresupuesto!Aceptado = 1 Then
        Dim Rs As New Recordset
        Call mClsFacturas.PueblaRecordset(Rs, "SELECT top 1 * FROM LogPresupuestos", False)
        Rs.AddNew
        Rs!Responsable = m_LoginUsuario
        Rs!Fecha = Format(Now)
        Rs!descripción = "Cambio de la Clase: " & TextoClasePresup(ClasePresupAnt) & " a la Clase Nueva: " & TextoClasePresup(RsPresupuesto!IdClasePresup) & ""
        'Rs!Tarifa = TxtTarifa
        Rs!CodPresupuesto = m_IDPresupuesto
        Rs!Obra = DameExpresion("IdObra", RsPresupuesto!IdObra, "Obras", "Codigo")
        Rs.Update
        Rs.Close
        Set Rs = Nothing
    End If
    
    RsPresupuesto!Ocultar = ChkOcultar.Value
    RsPresupuesto!Poblacion.Value = TxtPoblacion.Text
    RsPresupuesto!Provincia.Value = TxtProvincia.Text

    RsPresupuesto!Apellidos.Value = TxtApellidos.Text
    RsPresupuesto!Anyo.Value = TxtAnyo.Text
    If TxtImporteAval = "" Then
        RsPresupuesto!ImporteAval.Value = 0
    Else
        RsPresupuesto!ImporteAval.Value = Round(CDbl(TxtImporteAval.Text), 2)
    End If
    If CmbTipo.ListIndex = -1 Then
        RsPresupuesto!IdTipoPresupuesto.Value = 1
    Else
        RsPresupuesto!IdTipoPresupuesto.Value = CmbTipo.ItemData(CmbTipo.ListIndex)
    End If
    
    RsPresupuesto!Don.Value = TxtDon.Text
    RsPresupuesto!Meses = Val(TxtMeses.Text)
    RsPresupuesto!DesglosePartidaAlzada = Null
    
    'RsPresupuesto!Don.Value = TxtDon.Text
    RsPresupuesto!Liquidado = Liquidado
    RsPresupuesto!PorcColaborador = PorcColaborador
    
    If ChkDesgloseDetallada(0).Value = 1 Then
         
        RsPresupuesto!ControlMAterial = NoNumNulo(TxtPartidaAlzada(0))
        RsPresupuesto!TarifaMaterial = NoNumNulo(TxtPartidaAlzada(1).Text)
        
        RsPresupuesto!ControlMontaje = 0
        RsPresupuesto!PruebasFinales = 0
        RsPresupuesto!AsistenciaTecnica = 0
        
        RsPresupuesto!TarifaMontaje = 0
        RsPresupuesto!TarifaPruebas = 0
        RsPresupuesto!TarifaAsistencia = 0
        RsPresupuesto!DesglosePartidaAlzada = 2
    End If
    
'2003/03     HDT     Unificación de la Aplicación.
    If CmbSeguros.ListIndex > -1 Then
        RsPresupuesto!IdSeguro.Value = CmbSeguros.ItemData(CmbSeguros.ListIndex)
    Else
        RsPresupuesto!IdSeguro.Value = Null
    End If
    
    If CmbCorredor.ListIndex > -1 Then
        RsPresupuesto!IdCorredorSeguro.Value = CmbCorredor.ItemData(CmbCorredor.ListIndex)
    Else
        RsPresupuesto!IdCorredorSeguro.Value = Null
    End If
    
    
    If CmbColaborador.ListIndex > -1 Then
        RsPresupuesto!IDColaborador.Value = CmbColaborador.ItemData(CmbColaborador.ListIndex)
    Else
        RsPresupuesto!IDColaborador.Value = Null
    End If
    If CmbColaborador2.ListIndex > -1 Then
        RsPresupuesto!IDColaborador2.Value = CmbColaborador2.ItemData(CmbColaborador2.ListIndex)
    Else
        RsPresupuesto!IDColaborador2.Value = Null
    End If
    If CmbCondicionesPago.ListIndex > -1 Then
        RsPresupuesto!IdCondicionesPago.Value = CmbCondicionesPago.ItemData((CmbCondicionesPago.ListIndex))
    Else
        RsPresupuesto!IdCondicionesPago.Value = 3
    End If

    RsPresupuesto!Poliza = Val(TxtPoliza.Text)
    
    If txtPEM.Text <> "0" Then
        RsPresupuesto!Pem.Value = txtPEM.Text
    Else
        RsPresupuesto!Pem.Value = "0"
    End If
    
    RsPresupuesto!CoberturaBasica = NoNumNulo(TxtValor(0))
    RsPresupuesto!EstanquidadFachadas = NoNumNulo(TxtValor(1))
    RsPresupuesto!EstanquidadCubiertas = NoNumNulo(TxtValor(2))
    RsPresupuesto!ControlAcabados = NoNumNulo(TxtValor(3))
    RsPresupuesto!Otros = NoNumNulo(TxtValor(4))
    
    RsPresupuesto!valorinstalaciones = NoNumNulo(TxtValor(11))
    RsPresupuesto!valorinstalaciones2 = NoNumNulo(TxtValor(10))
    RsPresupuesto!valorinstalaciones3 = NoNumNulo(TxtValor(14))
    
    RsPresupuesto!ValorCSSFP = NoNumNulo(TxtValor(16))
    RsPresupuesto!SegSalEuros = NoNumNulo(TxtValor(18))
    RsPresupuesto!ValorEstudiosBasSegSal = NoNumNulo(TxtValor(20))
    RsPresupuesto!ValorOtrDesSegSal = NoNumNulo(TxtValor(22))
    
    RsPresupuesto!EstanquidadFachada = (ChkMisión(0).Value)
    RsPresupuesto!EstanquidadCubierta = (ChkMisión(1).Value)
    RsPresupuesto!ControlAcabado = (ChkMisión(2).Value)
    RsPresupuesto!Otro = (ChkMisión(3).Value)
    
    RsPresupuesto!ControlInstalaciones = ChkMisión(7).Value
    RsPresupuesto!ControlInstalaciones2 = ChkMisión(8).Value
    RsPresupuesto!ControlInstalaciones3 = ChkMisión(9).Value
    
    
    'Jose. 22 11 2007. Antes, no sé por qué, se comparaba .ListIndex = 7 que es SERVICIOS GENERALES. Pero es mejor compararlo directamente con el texto.
    If Trim(CmbTipo.Text) = "SEGURIDAD Y SALUD" And m_FormatoFactura = "I" Then
        RsPresupuesto!CSSFP = ChkMisión(14).Value
        RsPresupuesto!CSSFE = ChkMisión(18).Value
        
        RsPresupuesto!EstudiosBasSegSal = ChkMisión(16).Value
        RsPresupuesto!OtrDesSegSal = ChkMisión(15).Value
    End If
    
    If NuevoRegistro Then RsPresupuesto!UsuarioCreacion = m_LoginUsuario 'Jose. 1 4 2005. Solo si es nuevo.
    RsPresupuesto!Fechainiobra.Value = GrabaFecha(TxtFechaIniObra.Text)
    RsPresupuesto!Fechafinobra.Value = GrabaFecha(TxtFechaFinObra.Text)
    
    If OptForma.Item(0).Value = True Then
        RsPresupuesto!FormaEntrada = 0
    ElseIf OptForma.Item(1).Value = True Then
        RsPresupuesto!FormaEntrada = 1
    ElseIf OptForma.Item(2).Value = True Then
        RsPresupuesto!FormaEntrada = 2
    Else
        RsPresupuesto!FormaEntrada = 3
    End If
'--------------------------------------------------------------------------
    
    If ChkDesgloseDetallada(1).Value = 1 Then
        If RsPresupuesto!Euros <> 0 Then
            RsPresupuesto!ControlMAterial = NoNumNulo(TxtPA(0))
            RsPresupuesto!ControlMontaje = NoNumNulo(TxtPA(1))
            RsPresupuesto!PruebasFinales = NoNumNulo(TxtPA(2))
            RsPresupuesto!AsistenciaTecnica = NoNumNulo(TxtPA(3))
            
            RsPresupuesto!TarifaMaterial = NoNumNulo(TxtTarifa(0))
            RsPresupuesto!TarifaMontaje = NoNumNulo(TxtTarifa(1))
            RsPresupuesto!TarifaPruebas = NoNumNulo(TxtTarifa(2))
            RsPresupuesto!TarifaAsistencia = NoNumNulo(TxtTarifa(3))
            RsPresupuesto!DesglosePartidaAlzada = 1
        Else
            RsPresupuesto!ControlMAterial = Round(NoNumNulo(TxtPA(0)) * 166.386, 0)
            RsPresupuesto!ControlMontaje = Round(NoNumNulo(TxtPA(1)) * 166.386, 0)
            RsPresupuesto!PruebasFinales = Round(NoNumNulo(TxtPA(2)) * 166.386, 0)
            RsPresupuesto!AsistenciaTecnica = Round(NoNumNulo(TxtPA(3)) * 166.386, 0)
            
            RsPresupuesto!TarifaMaterial = Round(NoNumNulo(TxtTarifa(0)) * 166.386, 0)
            RsPresupuesto!TarifaMontaje = Round(NoNumNulo(TxtTarifa(1)) * 166.386, 0)
            RsPresupuesto!TarifaPruebas = Round(NoNumNulo(TxtTarifa(2)) * 166.386, 0)
            RsPresupuesto!TarifaAsistencia = Round(NoNumNulo(TxtTarifa(3)) * 166.386, 0)
            RsPresupuesto!DesglosePartidaAlzada = 1

        End If
    End If
    Dim RsCliente As New Recordset
    Call mClsPresupuestos.PueblaRecordset(RsCliente, "SELECT TipoCliente FROM Presupuestos INNER JOIN  Clientes ON Presupuestos.IDCliente = Clientes.IDCliente WHERE IdPresupuesto='" & m_IDPresupuesto & "'", False)
    If Not RsCliente.EOF Then
        RsCliente!TipoCliente = CmbTipoCliente
        RsCliente.Update
    End If
    RsCliente.Close
    Set RsCliente = Nothing
    
    If RsPresupuesto!IdObra > 0 Then
        ' BONIFICACIÓN (o Descuento)
        RsPresupuesto!Descuento = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "Descuento")
        ' IVA
        RsPresupuesto!IVA = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "IVA")
        ' Gastos Generales
        RsPresupuesto!porcentajegastosgenerales = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "PorcentajeGastosGenerales")
        ' Beneficio Industrial
        RsPresupuesto!porcentajebfoindustrial = DameExpresionN("IDOBRA", RsPresupuesto!IdObra, "OBRAS", "PorcentajeBfoIndustrial")
    Else
        RsPresupuesto!Descuento = CadenaADouble(TxtDescuento.Text) ' Bonificación
        If TxtIVA & "" <> "" Then RsPresupuesto!IVA = SustituirPor(TxtIVA, "%", "") ' IVA
        RsPresupuesto!gastosybfo = ChkGastosYBfo.Value
        If ChkGastosYBfo.Value = 1 Then
            RsPresupuesto!porcentajegastosgenerales = SustituirPor(TxtGastosGenerales, "%", "")
            RsPresupuesto!porcentajebfoindustrial = SustituirPor(TxtBfoIndustrial.Text, "%", "")
        Else
            RsPresupuesto!porcentajegastosgenerales = Null
            RsPresupuesto!porcentajebfoindustrial = Null
        End If
    End If
    
    RsPresupuesto!IdTipoaviso = CmbAvisoGeotecnico.ListIndex
    
    RsPresupuesto!Mostrar = OptMostrar(0).Value
    
    RsPresupuesto!MatrizWord = CmbMatrices.Text
    
    RsPresupuesto!FechaEmision.Value = GrabaFecha(TxtFechaEmision.Text)
    
    If (RsPresupuesto!IdEstadoAval.Value <> 0 And CmbAval.ListIndex = 0) Or (RsPresupuesto!IdEstadoAval.Value <> 0 And CmbEntidadBancaria.ListIndex = 0) Then
    
        'PERMISO PARA QUITAR UN AVAL.
        
        If UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or m_IDUsuario = 16 Then
            RsPresupuesto!IdEstadoAval.Value = CmbAval.ListIndex
            RsPresupuesto!IdEntidadAval.Value = CmbEntidadBancaria.ListIndex
            RsPresupuesto!FechaAvalAceptacion.Value = GrabaFecha(TxtFechaAvalAceptacion.Text)

        Else
            Call Informacion("No tiene permiso para modificar el estado del aval.")
        End If
    Else
        RsPresupuesto!IdEstadoAval.Value = CmbAval.ListIndex
        RsPresupuesto!IdEntidadAval.Value = CmbEntidadBancaria.ListIndex
        RsPresupuesto!FechaAvalAceptacion.Value = GrabaFecha(TxtFechaAvalAceptacion.Text)
    End If

    If IsNull(GrabaFecha(TxtFechaAceptacion.Text)) Then
        If RsPresupuesto!Aceptado.Value = 0 Then
            RsPresupuesto!FechaAceptacion.Value = Null
        End If
    Else
        RsPresupuesto!FechaAceptacion.Value = GrabaFecha(TxtFechaAceptacion.Text)
    End If
    RsPresupuesto!FechaTerminado.Value = GrabaFecha(TxtFechaTerminado.Text)
    RsPresupuesto!FechaPrevista.Value = CmbFechaFactura.ListIndex
'    RsPresupuesto!Verbal = 1 - CmbVerbal.ListIndex
    RsPresupuesto!IdTipoAceptacion = CmbTipoAceptacion.ListIndex
    
    RsPresupuesto!WordDoc = Trim(WordDoc(0))
    RsPresupuesto!worddoc1 = Trim(WordDoc(1))
    RsPresupuesto!pConcepto = Trim(CmbPConcepto.Text)
    
    'Jose. 29 5 2006. Nueva opción para indicar como se ha aceptado el presupuesto.
    'OptAceptadoPor(0) -> No Aceptado. OptAceptadoPor(1) -> Por Escrito. OptAceptadoPor(2) -> Con Descripción
    If OptAceptadoPor(1).Value Or OptAceptadoPor(2) Then 'Uno de los dos elegido. Si no cogerá el valor por defecto de la BD que es 0
        RsPresupuesto!AceptadoPorEscrito = IIf(OptAceptadoPor(1).Value, 1, 2)
        If TxtAceptadoPor.Text <> "" And OptAceptadoPor(2).Value Then RsPresupuesto!AceptadoPor = TxtAceptadoPor.Text
    End If
    '------------------------------------------------------------------------------
    

    RsPresupuesto!RegistroBloqueado = False
    RegistroBloqueado = False
    
    RsPresupuesto.Update
    Marcador = RsPresupuesto!IdPresupuesto
    
    RsPresupuesto.Close

    dbPrincipal.CommitTrans
    
    'Jose. 2 9 2005. Tipo de ampliacion para Intec.
    'If Left(UCase(m_NombreDominio), 9) = "DOMINIO_I" Then
    If m_FormatoFactura = "I" Then 'Jose. 23 11 2006
        If RsMant(2).RecordCount > 0 And CmbTipoAmpliacion.ListIndex > -1 Then
            If CmbTipoAmpliacion.ListIndex = 0 Then
                RsMant(2)!EstanquidadFachada = 1
                RsMant(2)!EstanquidadCubierta = 0
                RsMant(2)!ControlAcabado = 0
                RsMant(2)!Otro = 0
            ElseIf CmbTipoAmpliacion.ListIndex = 1 Then
                RsMant(2)!EstanquidadFachada = 0
                RsMant(2)!EstanquidadCubierta = 1
                RsMant(2)!ControlAcabado = 0
                RsMant(2)!Otro = 0
            ElseIf CmbTipoAmpliacion.ListIndex = 2 Then
                RsMant(2)!EstanquidadFachada = 0
                RsMant(2)!EstanquidadCubierta = 0
                RsMant(2)!ControlAcabado = 1
                RsMant(2)!Otro = 0
            ElseIf CmbTipoAmpliacion.ListIndex = 3 Then
                RsMant(2)!EstanquidadFachada = 0
                RsMant(2)!EstanquidadCubierta = 0
                RsMant(2)!ControlAcabado = 0
                RsMant(2)!Otro = 1
            End If
            RsMant(2).Update
        End If
    End If
    '----------------------------------------------
    
    'm_IDPresupuesto = Marcador
    
    If Not m_FormatoFactura = "L" Then Call GrabarAgenda
    
    Set RsPresupuesto = Nothing 'Jose. 15 10 2003. Antes no se liberaba.
'    Set RsPresOCT = Nothing 'Jose. 15 10 2003
    
    Exit Function

ErrorAlActualizar:
    
    Dim MensajeError As String
    MensajeError = "Error al actualizar en la Base de Datos." & vbCrLf & Err.Description
    
    On Error Resume Next
    Set RsPresupuesto = Nothing
    dbPrincipal.RollbackTrans
    On Error GoTo 0
    Err.Clear
    
    Alerta (MensajeError)
    
    GrabarRegistro = False
    
    Exit Function

End Function

Private Sub ActualizarTarifas()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Actualiza la tabla de "PresupuestosyTarifas" con diferente valores calculados y sacados de la tabla
'   "DetallePresupuesto"
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Crea un recordset de "PresupuestosyTarifas" y otro de "DetallePresupuesto" seleccionando los registros que
'      tengan el valor de la variable global m_IDPresupuesto que nos indica el presupuesto actual
'   2) Recorre con un while el recordset de "PresupuestosyTarifas"
'      -Crea un case del campo PresupuestosyTarifas!IDTarifa y dependiendo su valor, guarda en la variable TarifaAceptada
'       un .T. o .F. dependiendo del valor de PresupuestosyTarifas!Sondeon o de PresupuestosyTarifas!CalicataN
'      -Asigna diferentes valores al recordset y los da de alta
'   3) Cierra los recordset
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    On Error GoTo ErrorPresupuesto
    Dim AntesViales As Boolean
    Dim RsDestinoDatos As New Recordset, RsLineasDestino As New Recordset, TarifaAceptada As Boolean, NumUnidades As Integer
    Dim RegTarifa As New Recordset
        dbPrincipal.BeginTrans
     '   Call mClsPresupuestos.PueblaRecordset(RsLineasDestino, "SELECT Top 1 * FROM PresupuestosyTarifas", False)
        Call mClsPresupuestos.PueblaRecordset(RsLineasDestino, "SELECT * FROM PresupuestosyTarifas WHERE IDpresupuesto = " & m_IDPresupuesto, False)
        
        Call mClsPresupuestos.PueblaRecordset(RsDestinoDatos, "SELECT * FROM DetallePresupuesto WHERE IDpresupuesto = " & m_IDPresupuesto)
        Do While Not RsLineasDestino.EOF
            Select Case RsLineasDestino!IDTarifa.Value
                '8000 (Trabajos de Campo)
                    Case 3634: NumUnidades = 1                       ' Tarifa 8020
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3635: NumUnidades = RsDestinoDatos!SondeoN  ' Tarifa 8030
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3636: NumUnidades = RsDestinoDatos!SondeoN * RsDestinoDatos!SondeoH ' Tarifa 8040
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3640: NumUnidades = 0 'IIf(RsDestinoDatos!CalicataN Mod 2 = 0, RsDestinoDatos!CalicataN \ 2, (RsDestinoDatos!CalicataN \ 2) + 1) ' Tarifa 8080
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3641: NumUnidades = RsDestinoDatos!SondeoMI ' Tarifa 8150
                       TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3643: NumUnidades = RsDestinoDatos!SondeoSPT ' Tarifa 8170
                       TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3644: NumUnidades = IIf(RsDestinoDatos!SondeoN Mod 2 = 0, (RsDestinoDatos!SondeoH * (RsDestinoDatos!SondeoN \ 2)), (RsDestinoDatos!SondeoH * (1 + (RsDestinoDatos!SondeoN \ 2)))) ' Tarifa 8180
                       TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3646: NumUnidades = IIf((RsDestinoDatos!SondeoH Mod 3 = 0), (RsDestinoDatos!SondeoH \ 3) * RsDestinoDatos!SondeoN, (1 + (RsDestinoDatos!SondeoH \ 3)) * RsDestinoDatos!SondeoN) ' Tarifa 8190
                       TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3647: NumUnidades = 1                       ' Tarifa 8300
                       TarifaAceptada = IIf(RsDestinoDatos!PenetroN > 0, True, False)
                    Case 3648: NumUnidades = RsDestinoDatos!PenetroN ' Tarifa 8310
                       TarifaAceptada = IIf(RsDestinoDatos!PenetroN > 0, True, False)
                    Case 3650: NumUnidades = RsDestinoDatos!PenetroN ' Tarifa 8330
                       TarifaAceptada = IIf(RsDestinoDatos!PenetroN > 0, True, False)
                    Case 3651: NumUnidades = 0                       ' Tarifa 8340
                       TarifaAceptada = IIf(RsDestinoDatos!PenetroN > 0, True, False)
                    Case 3654: NumUnidades = RsDestinoDatos!CalicataN ' Tarifa 8360
                       TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    Case 3655: NumUnidades = RsDestinoDatos!CalicataN ' Tarifa 8390
                       TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    '9000 (Sondeos)
                    Case 2300: ' Tarifa 9001
                        If (RsDestinoDatos!DesgloseSondeos) Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                       'TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 318: NumUnidades = RsDestinoDatos!SondeoMI  ' Tarifa 9003
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 319: NumUnidades = RsDestinoDatos!SondeoMI  ' Tarifa 9004
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 320: NumUnidades = RsDestinoDatos!SondeoMI  ' Tarifa 9005
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 323: NumUnidades = RsDestinoDatos!SondeoMI  ' Tarifa 9006
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 327: NumUnidades = RsDestinoDatos!SondeoMI  ' Tarifa 9010
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 344: NumUnidades = RsDestinoDatos!SondeoN   ' Tarifa 9027
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 351: NumUnidades = 0                        ' Tarifa 9034
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 354: NumUnidades = RsDestinoDatos!SondeoN \ 2 ' Tarifa 9037
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 367: NumUnidades = RsDestinoDatos!SondeoN   ' Tarifa 9053
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 335: NumUnidades = 1                        ' Tarifa 9018
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 346: NumUnidades = 0                        ' Tarifa 9029
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    Case 3075: NumUnidades = 1                       ' Tarifa 9170
                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
                    '9000 (Calicatas)
                    Case 3702:
                        If RsDestinoDatos!DesgloseCalicatas Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                        'NumUnidades = IIf(RsDestinoDatos!DesgloseCalicatas , 1, 0)                     ' Tarifa 9200
                        'TarifaAceptada = IIf((RsDestinoDatos!CalicataN > 0) And (RsDestinoDatos!DesgloseCalicatas), True, False)
                    Case 3703: NumUnidades = RsDestinoDatos!CalicataN   ' Tarifa 9210
                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    Case 3704: NumUnidades = RsDestinoDatos!CalicataN   ' Tarifa 9220
                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    Case 3705: NumUnidades = RsDestinoDatos!CalicataN   ' Tarifa 9221
                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    Case 3707: NumUnidades = IIf((Val(RsDestinoDatos!CalicataN) Mod 2) = 0, (Val(RsDestinoDatos!CalicataN) \ 2), (Val(RsDestinoDatos!CalicataN) \ 2) + 1)  ' Tarifa 9235
                        TarifaAceptada = IIf(RsDestinoDatos!DimenViales, True, False)  ' IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    Case 3708: NumUnidades = IIf((Val(RsDestinoDatos!CalicataN) Mod 2) = 0, (Val(RsDestinoDatos!CalicataN) \ 2), (Val(RsDestinoDatos!CalicataN) \ 2) + 1)  ' Tarifa 9240
                        TarifaAceptada = IIf(RsDestinoDatos!DimenViales, True, False)
                    Case 3706: NumUnidades = RsDestinoDatos!CalicataN   ' Tarifa 9226
                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    Case 3904: NumUnidades = IIf(RsDestinoDatos!CalicataN Mod 2 = 0, RsDestinoDatos!CalicataN \ 2, (RsDestinoDatos!CalicataN \ 2) + 1) ' Tarifa 9300
                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)

                        
'                    Case 3702: NumUnidades = 1                        ' Tarifa 9200
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 3703: NumUnidades = RsDestinoDatos!SondeoN   ' Tarifa 9210
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 3704: NumUnidades = RsDestinoDatos!SondeoN   ' Tarifa 9220
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 3705: NumUnidades = RsDestinoDatos!SondeoN   ' Tarifa 9221
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 3707: NumUnidades = IIf((Val(RsDestinoDatos!CalicataN) Mod 2) = 0, (Val(RsDestinoDatos!CalicataN) \ 2), (Val(RsDestinoDatos!CalicataN) \ 2) + 1)  ' Tarifa 9235
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 3708: NumUnidades = IIf((Val(RsDestinoDatos!CalicataN) Mod 2) = 0, (Val(RsDestinoDatos!CalicataN) \ 2), (Val(RsDestinoDatos!CalicataN) \ 2) + 1)  ' Tarifa 9240
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 3706: NumUnidades = RsDestinoDatos!SondeoN   ' Tarifa 9226
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
                    '13000 (Informes)
                    Case 552:  ' Tarifa 13006
                        If (RsDestinoDatos!CalicataN > 0) And (RsDestinoDatos!PenetroN > 0) And (RsDestinoDatos!SondeoN = 0) Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                    Case 553: ' Tarifa 13007
                        If (RsDestinoDatos!CalicataN = 0) And (RsDestinoDatos!PenetroN > 0) And (RsDestinoDatos!SondeoN = 0) Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                    Case 554: ' Tarifa 13008
                        If (RsDestinoDatos!PenetroN > 0) And (RsDestinoDatos!SondeoN > 0) Then ' (RsDestinoDatos!CalicataN = 0) And
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                    Case 555: ' Tarifa 13009
                        If (RsDestinoDatos!PenetroN = 0) And (RsDestinoDatos!SondeoN > 0) Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                    Case 556: ' Tarifa 13010
                        If (RsDestinoDatos!CalicataN > 0) And (RsDestinoDatos!PenetroN = 0) And (RsDestinoDatos!SondeoN = 0) Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                    Case 3905: ' Tarifa 13018
                        If (RsDestinoDatos!ObraCivilCarretera) Then
                           NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
                    Case 560: ' Tarifa 13020
                        If (RsDestinoDatos!DimenViales) Then
                            NumUnidades = 1: TarifaAceptada = True
                        Else
                            NumUnidades = 0: TarifaAceptada = False
                        End If
'                    Case 552: NumUnidades = 0                        ' Tarifa 13006
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0 Or RsDestinoDatos!PenetroN > 0, True, False)
'                    Case 553: NumUnidades = 0                        ' Tarifa 13007
'                        TarifaAceptada = IIf(RsDestinoDatos!PenetroN > 0, True, False)
'                    Case 554: NumUnidades = 1                        ' Tarifa 13008
'                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0 Or RsDestinoDatos!PenetroN > 0, True, False)
'                    Case 555: NumUnidades = 0                        ' Tarifa 13009
'                        TarifaAceptada = IIf(RsDestinoDatos!SondeoN > 0, True, False)
'                    Case 556: NumUnidades = 0                        ' Tarifa 13010
'                        TarifaAceptada = IIf(RsDestinoDatos!CalicataN > 0, True, False)
'                    Case 560: NumUnidades = 1                        ' Tarifa 13020
'                        TarifaAceptada = True 'IIf(RsDestinoDatos!SondeoN > 0, True, False)
                Case Else
                    TarifaAceptada = True
                    NumUnidades = RsLineasDestino!NumeroUnidades.Value
                End Select
                'RsLineasDestino!Aceptada.Value = RsLineasOrigen!Aceptada.Value
                If Not (RsLineasDestino!Aceptada.Value) And (TarifaAceptada) Then
                        'If Pregunta("¿Desea aceptar la tarifa " & DameExpresion("IDTARIFA", RsLineasDestino!IDTarifa, "TARIFAS", "Codigo") & "? " & vbCrLf & "En caso afirmativo deberá comprobar posteriormente el precio de dicha tarifa.") Then
                            RsLineasDestino!Aceptada.Value = TarifaAceptada
                        'End If
                Else
                    RsLineasDestino!Aceptada.Value = RsLineasDestino!Aceptada.Value ' TarifaAceptada
                End If
                If (RsLineasDestino!NumeroUnidades <> NumUnidades) And (RsLineasDestino!Aceptada = True) Then
                        'If Pregunta("¿Quiere pasar en la tarifa " & DameExpresion("IDTARIFA", RsLineasDestino!IDTarifa, "TARIFAS", "Codigo") & " de " & NoNumNulo(RsLineasDestino!NumeroUnidades) & " unidades a " & NoNumNulo(NumUnidades) & " unidades?") Then
                            RsLineasDestino!NumeroUnidades.Value = NumUnidades
                        'End If
                End If
                
            
            '''''' Quitado el 9 5 2001
            
'            If (RsLineasDestino!IDTarifa.Value = 3654) Then
'                RsLineasDestino!PrecioUnitario.Value = 0
'            End If
'''''''''
            If (RsLineasDestino!IDTarifa.Value = 3654 And RsDestinoDatos!ejecucioncalicatas) Then
                RsLineasDestino!PrecioUnitario.Value = 0
            End If
'''''''''                If (RsLineasDestino!IDTarifa.Value = 3654) Then
'''''''''                ' Deberíamos tomar el precio de la platilla.???
'''''''''                    RsLineasDestino!PrecioUnitario.Value = NoNumNulo(RsLineasDestino!PrecioUnitario.Value)
'''''''''                End If
'''''''''            End If
            
            ' ojo con el precio total
            RsLineasDestino!preciototal.Value = RsLineasDestino!NumeroUnidades.Value * RsLineasDestino!PrecioUnitario.Value
            'no ->   RsLineasDestino!PrecioTotal.Value = RsLineasOrigen!PrecioTotal.Value
            'RsLineasDestino!IDTarifa.Value = RsLineasOrigen!IDTarifa.Value
            '''''' Quitado el 9 5 2001
            If RsLineasDestino!IDTarifa.Value = 3654 And RsDestinoDatos!ejecucioncalicatas Then
                Call mClsTarifas.PueblaRecordset(RegTarifa, "SELECT * FROM Tarifas WHERE IdTarifa = 3654")
                If Not RegTarifa.EOF Then RsLineasDestino!Concepto.Value = RegTarifa!DescCorta & " (por cuenta del peticionario)."
                RegTarifa.Close
                Set RegTarifa = Nothing
                RsLineasDestino!Concepto2.Value = ""
                RsLineasDestino!Concepto3.Value = ""
                RsLineasDestino!Concepto4.Value = ""
            End If
'''''                'RsLineasDestino!Concepto.Value = RsLineasOrigen!Concepto.Value & ""
'''''                'RsLineasDestino!Concepto2.Value = RsLineasOrigen!Concepto2.Value & ""
'''''                'RsLineasDestino!Concepto3.Value = RsLineasOrigen!Concepto3.Value & ""
'''''                'RsLineasDestino!Concepto4.Value = RsLineasOrigen!Concepto4.Value & ""
'''''            End If
            'RsLineasDestino!IDPresupuesto.Value = m_IDPresupuesto

            'Marcamos el registro como no bloqueado.
            RsLineasDestino!RegistroBloqueado = False

            ''''''''fin                '
            RsLineasDestino.Update

            RsLineasDestino.MoveNext
        Loop
        If RsDestinoDatos!DimenViales Then
            Call Informacion("Presupuesto modificado satisfactoriamente. " & vbCrLf & vbCrLf & "Se deben comprobar los PRECIOS de las TARIFAS correspondientes " & vbCrLf & "al dimensionamiento de VIALES: 9235, 9240 y 13020." & vbCrLf & "(Los precios actuales son los existentes en la plantilla)")
        End If
        
        RsLineasDestino.Close
        Set RsLineasDestino = Nothing
        RsDestinoDatos.Close
        Set RsDestinoDatos = Nothing
    
    
    'Terminamos la transacción.
    dbPrincipal.CommitTrans
    Exit Sub

ErrorPresupuesto:
    
    Dim MensajeError As String
    MensajeError = "Error al actualizar las tarifas. " & vbCrLf & Err.Description
    
    'Deshacemos la transacción. Si el error es posterior a CommitTrans no pasa nada.
    On Error Resume Next
    RsLineasDestino.Close
    Set RsLineasDestino = Nothing
    On Error Resume Next
    RsDestinoDatos.Close
    Set RsDestinoDatos = Nothing
    dbPrincipal.RollbackTrans
    On Error GoTo 0
    Err.Clear
    
    Alerta (MensajeError)

End Sub

Public Function TextoClasePresup(Codigo As Byte) As String
    Dim Rs As New Recordset
    
    Call mClsPresupuestos.PueblaRecordset(Rs, "SELECT * FROM ClasePresupuesto WHERE IdClasePresup = " & Codigo, True)
    TextoClasePresup = Rs!Descripcion
    Rs.Close
    Set Rs = Nothing
End Function

Private Sub ChkDesgloseDetallada_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba los valores de varias cajas de texto del formulario y le asigna a ChkDesgloseDetallada(1).Value = False o
'   ChkDesgloseDetallada(0).Value = False
'
'PARAMETROS :
'   Index  --> Indice del Array de CheckBox
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si la variable Cambio = .T.
'   2) Pone la variable Cambio a .F.
'   3) Comprueba el valor de Index
'      -Si es 0 comprueba varias cajas de texto y si habilita las que tengan informacion, tambien pone
'       ChkDesgloseDetallada(1).Value = False
'      -Si es 1 comprueba varias cajas de texto y si habilita las que tengan informacion, tambien pone
'       ChkDesgloseDetallada(1).Value = False
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If Cambio Then
        Cambio = False
        Select Case Index
        Case Is = 0
            If NoNumNulo(TxtPartidaAlzada(0)) = 0 Or UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO" Then TxtPartidaAlzada(0).Enabled = True
            If NoNumNulo(TxtPartidaAlzada(1)) = 0 Or UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO" Then TxtPartidaAlzada(1).Enabled = True
            ChkDesgloseDetallada(1).Value = False
        Case Is = 1
            If NoNumNulo(TxtPA(0)) = 0 Or UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO" Then TxtPA(0).Enabled = True
            If NoNumNulo(TxtPA(1)) = 0 Or UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO" Then TxtPA(1).Enabled = True
            If NoNumNulo(TxtPA(2)) = 0 Or UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO" Then TxtPA(2).Enabled = True
            If NoNumNulo(TxtPA(3)) = 0 Or UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO" Then TxtPA(3).Enabled = True
            ChkDesgloseDetallada(0).Value = False
        End Select
    End If
    Cambio = True
End Sub

Private Sub ChkMisión_Click(Index As Integer)
    If ChkMisión(Index).Value = 0 Then
        Select Case Index
            Case 4
                TxtValor(0).Text = ""
                TxtValor(5).Text = ""
            Case 0
                TxtValor(1).Text = ""
                TxtValor(6).Text = ""
            Case 1
                TxtValor(2).Text = ""
                TxtValor(7).Text = ""
            Case 2
                TxtValor(3).Text = ""
                TxtValor(8).Text = ""
            Case 3
                TxtValor(4).Text = ""
                TxtValor(9).Text = ""
            Case 7
                TxtValor(11).Text = ""
                TxtValor(12).Text = ""
            Case 8
                TxtValor(10).Text = ""
                TxtValor(13).Text = ""
            Case 9
                TxtValor(14).Text = ""
                TxtValor(15).Text = ""
            Case 14
                TxtValor(16).Text = ""
                TxtValor(17).Text = ""
            Case 18
                TxtValor(18).Text = ""
                TxtValor(19).Text = ""
            Case 16
                TxtValor(20).Text = ""
                TxtValor(21).Text = ""
            Case 15
                TxtValor(22).Text = ""
                TxtValor(23).Text = ""
        End Select
    End If

End Sub

Private Sub CmbEnviarAmpliacionFax_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Envia un presupuesto por Fax al cliente utilizando el Dato de Numero de Fax proporcionado
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Pide informacion sobre los docuemntos que se van a adjuntar al Fax y el cuerpo del Fax, que
'      puede ser de tres tipos: Presupuesto, Plan de control o Libre (el texto sera escrito por el usuario)
'   2) Dependiendo del tipo de cuerpo genera una variable string con el texto a enviar
'   3) Además adjunta los ficheros que le indiquemos, que pueden ser el presupeusto o las plantillas que
'      tenga el presupuesto añadidas en su ficha
'   4) Enviado el Fax crea un registro en la solapa Envio con la informacion del Fax enviado (Hora, Dia, cliente,
'      documentos adjuntos)
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2004/02     HDT     Envio de Presupuestos por Fax.
'   2004/05     LCC     Envio de ampliaciones de presupuesto por fax
'DOCF FIN -------------------------------------------------------------

    Dim UnidadApp As String
    Dim iret As Variant
    Dim CuerpoMail As String
    Dim DocumentoPresupuesto As String
    Dim DocumentosPlantilla1 As String
    Dim DocumentosPlantilla2 As String
    Dim Resp As String
    Dim Resp1 As String
    Dim Resp2 As String
    Dim RsEnvio As New Recordset
    Dim RsPresup As New Recordset
    Dim RsObra As New Recordset
    Dim Obra As Integer

    If TxtFax.Text = "" Then
        MsgBox "El Fax no puede estar vacio"
        Exit Sub
    End If

    FrmEnvioP.Show 1

    If EnvioCancelado = 1 Then Exit Sub
    Call mClsPresupuestos.PueblaRecordset(RsEnvio, "SELECT * FROM EnvioPresupuesto", False)
    'Modificado por Antonio 24/08/04, copiado de las ampliaciones por Mail segun las especificaciones de Manolo-----------------
    'y pedido por Isabel para que las de por fax salgan igual y que en la caratula salgan que son ampliaciones------------------
    Call mClsPresupuestos.PueblaRecordset(RsPresup, "SELECT IdObra, NombreObra FROM presupuestos WHERE IdPresupuesto=" & m_IDPresupuesto)
    Obra = RsPresup!IdObra
    Call mClsPresupuestos.PueblaRecordset(RsObra, "SELECT codigo FROM Obras WHERE idobra=" & Obra)

    If UCase(m_NombreDominio) = "DOMINIO_L" Or UCase(m_NombreDominio) = "DOMINIO_LPRUEBAS" Then
        If UCase(m_LoginUsuario) = "MANOLO" Then
            If CPresupuesto = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Rogaria en caso de aceptacion, me enviara la ampliación firmada " & vbCrLf
                CuerpoMail = CuerpoMail & "por fax.                                                           " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                 " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                 " & vbCrLf
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo:               Manuel Aláez Fernández (Dpto. de Contratación)" & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a Manuel Aláez (manuel.contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 48  Fax: 91 208 90 01"
            ElseIf CPlan = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Según nuestro sistema de calidad AENOR, para poder dar " & vbCrLf
                CuerpoMail = CuerpoMail & "comienzo a los trabajos en el laboratorio es necesario que nos " & vbCrLf
                CuerpoMail = CuerpoMail & "envien por fax la hoja del presupuesto firmada o en su defecto " & vbCrLf
                CuerpoMail = CuerpoMail & "una solicitud de pedido por fax o correo eléctronico." & vbCrLf
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo:               Manuel Aláez Fernández (Dpto. de Contratación)" & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a Manuel Aláez (manuel.contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 48  Fax: 91 208 90 01"
            Else
                CuerpoMail = Cuerpo
                CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Un saludo:"
            End If

        Else 'otro usuario distinto a Manolo (ampliaciones)

            If CPresupuesto = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Rogaria en caso de aceptacion, me enviara la ampliacion firmada " & vbCrLf
                CuerpoMail = CuerpoMail & "por fax.                                                        " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                " & vbCrLf
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo." & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 00  Fax: 91 208 90 01"
            ElseIf CPlan = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Según nuestro sistema de calidad AENOR, para poder dar " & vbCrLf
                CuerpoMail = CuerpoMail & "comienzo a los trabajos en el laboratorio es necesario que nos " & vbCrLf
                CuerpoMail = CuerpoMail & "envien por fax la hoja del presupuesto firmada o en su defecto " & vbCrLf
                CuerpoMail = CuerpoMail & "una solicitud de pedido por fax o correo eléctronico." & vbCrLf
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo" & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase al departamento de contratación contratacion@lcc.es" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 00  Fax: 91 208 90 01"
            Else
                CuerpoMail = Cuerpo
                CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Un saludo:"
            End If
        End If

    Else

        If CPresupuesto = 1 Then
            CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
            CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
            CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono XXXXXXX o mediante fax XXXXXXX." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
            CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
        ElseIf CPlan = 1 Then
    
        Else
            CuerpoMail = Cuerpo
            CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Sin otro particular, reciban un cordial saludo."
        End If
    End If

    'Creacion del fichero .sub para el envio de correo
    '-------------------------------------------------
    RsObra.Close
    Set RsObra = Nothing
    RsPresup.Close
    Set RsPresup = Nothing

    'Fin modificacion 24/08/04----------------------------------------------------------------------------------------------------
    If DocumentoP = 1 Then
        Call CmdPDFAmpliacion_Click(1)

        DocumentoPresupuesto = m_Unidad & "\Temp\Presupuesto.pdf"
    End If

    If Documento1 = 1 Then

        DocumentosPlantilla1 = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)
    End If

    If Documento2 = 1 Then

        DocumentosPlantilla2 = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)
    End If
   
    If SendFax(m_LoginFax, TxtFax, TxtNombre & " " & TxtApellidos, "", "", CuerpoMail, DocumentoPresupuesto, DocumentosPlantilla1, DocumentosPlantilla2) = True Then
        MsgBox "Fax enviado"
        RsEnvio.AddNew
        RsEnvio!IdPresupuesto = m_IDPresupuesto
        RsEnvio!FechaEnvio = Date
        RsEnvio!HoraEnvio = Time

        If DocumentoP = 1 Then
            RsEnvio!DocumentoP = "Presupuesto"
        Else
            RsEnvio!DocumentoP = ""
        End If

        If Documento1 = 1 Then
            RsEnvio!Documento1 = WordDoc(0)
        Else
            RsEnvio!Documento1 = ""
        End If

        If Documento2 = 1 Then
            RsEnvio!Documento2 = WordDoc(1)
        Else
            RsEnvio!Documento2 = ""
        End If

        RsEnvio!Email = ""
        RsEnvio!Fax = TxtFax
        RsEnvio!TipoEnvio = "Fax"
        RsEnvio.Update

    Else
        MsgBox "Error"
    End If

    RsEnvio.Close
    Set RsEnvio = Nothing
End Sub


Private Sub CmbPConcepto_Change()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Compara la longitud del Item elegido en el Combo y lo compara con el valor introducido en la propiedad "Tag"
'   Si el valor del Item es mayor entonces lee el Item seleccionado y coge tantos caracteres por la izquierda como numero
'   tenga el "Tag"
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If Len(CmbPConcepto.Text) > CmbPConcepto.Tag Then
        CmbPConcepto.Text = Left(CmbPConcepto.Text, CmbPConcepto.Tag)
    End If
    
    Static YaEstoy As Boolean

    On Local Error Resume Next

    If EnEdicion Then
        If Not YaEstoy Then
            YaEstoy = True
            unCombo_Change CmbPConcepto.Text, CmbPConcepto
            YaEstoy = False
        End If
        Err = 0
    End If
    
End Sub

Private Sub CmbSubtipo_Change()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Hace una busqueda incremental en el Combo con lo que estamos escribiendo en el
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

Static YaEstoy As Boolean

    On Local Error Resume Next

    If EnEdicion Then
        If Not YaEstoy Then
            YaEstoy = True
            unCombo_Change CmbSubtipo.Text, CmbSubtipo
            YaEstoy = False
        End If
        Err = 0
    End If
End Sub
Private Sub CmbSubTipo_KeyDown(KeyCode As Integer, Shift As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba la tecla presionada y realiza una operacion.
'
'PARAMETROS :
'   KeyCode  --> Codigo Ascii del caracter marcado
'   Shift    --> Si esta presionada la mayuscula
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    unCombo_KeyDown KeyCode

End Sub
Private Sub CmbSubTipo_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba la tecla presionada y realiza una operacion
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii de la tecla presionada
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    unCombo_KeyPress KeyAscii

End Sub

Private Sub CmbTipo_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Pone el checkbox seguimiento marcado  si el tipo seleccionado es Otros.
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If CmbTipo.Text = "OTROS" Then ChkSeguimiento.Value = 1

    'If CmbTipo.Text = "SEGURIDAD Y SALUD" And UCase$(Left$(m_NombreDominio, 9)) = "DOMINIO_I" Then 'Pedro. 28 6 2006 Presupuesto Seguridad y Salud
    If CmbTipo.Text = "SEGURIDAD Y SALUD" And m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
        Me.SSTab2.TabVisible(2) = True
        Me.SSTab2.TabVisible(1) = False
    Else
        Me.SSTab2.TabVisible(2) = False
        Me.SSTab2.TabVisible(1) = True
    End If

'    'Jose. 14 10 2003
'    If CmbTipo.Text = "SEGURO DECENAL Pruebas" Then
'        MTab.TabVisible(8) = True
'    Else
'        MTab.TabVisible(8) = False
'    End If
    
End Sub

'Private Sub CmdAbrir1_Click()
'    ON Error GoTo Error
'    If TxtVinculoPlan.Text <> "" Then
'        Shell (m_Unidad & "\archivos de programa\microsoft office\office\excel.exe " & TxtVinculoPlan.Text)
'    End If
'    Exit Sub
'Error:
'    Alerta ("No se pudo abrir el documento.")
'
'End Sub

'Private Sub CmdAbrir2_Click()
'    ON Error GoTo Error
'    If TxtVinculoPres.Text <> "" Then
'        Shell (m_Unidad & "\archivos de programa\microsoft office\office\exce.exe " & TxtVinculoPres.Text)
'    End If
'    Exit Sub
'Error:
'    Alerta ("No se pudo abrir el documento.")
'End Sub

Private Sub CmdAceptar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Graba el registro, desactiva los controles del formulario y actualiza el mismo.
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If

    'Actualizamos la base de datos
    If GrabarRegistro() Then
    
        'Indicamos que se ha finalizado la adición de un registro
        EnEdicion = False
    
        'Desactivamos los controles de edición
        DesactivarControlesEdicion
        
        'Actualizamos el formulario
        ActualizarFormulario
    End If

End Sub

Private Sub CmdAcuerdoMarco_Click()

    If IDClientePresupuesto = -1 Then
        Alerta ("El presupuesto no tiene un cliente asociado y debe tenerlo para establecer un acuerdo marco.")
        
        Exit Sub
    End If
    If LblAcuerdo.Visible = True Then
        Alerta ("Este presupuesto ya tiene un acuerdo marco con el cliente.")
        Exit Sub
    End If
    
    Load FrmMAcuerdoMarco
    FrmMAcuerdoMarco.IdCliente = IDClientePresupuesto
    FrmMAcuerdoMarco.Show 1
    
    EnEdicion = False
    Call ActualizarFormulario
    EnEdicion = True
    
End Sub

Private Sub cmdagenda_Click()
    Dim campocopiado As Boolean
    Dim RsPresupuestos As New Recordset
    Dim RsAgenda As New Recordset
    Dim I As Integer
    Dim j As Integer
    Dim IdAgenda As Long
    
    On Error GoTo error
    
    If m_IDPresupuesto > 0 Then
        IdAgenda = DameExpresionN("IDPresupuesto", m_IDPresupuesto, "AgendaComercial", "IdAgenda")
        If IdAgenda = 0 Then
            'No existe una entrada para este presupuesto en la Agenda.
            If Pregunta("El presupuesto no tiene ninguna entrada en la agenda, ¿Deseas crearla ahora?") Then
            
                dbPrincipal.BeginTrans
                
                Call mClsPresupuestos.PueblaRecordset(RsPresupuestos, "SELECT TOP 1 * FROM Presupuestos WHERE IdPresupuesto = " & m_IDPresupuesto)
                Call mClsPresupuestos.PueblaRecordset(RsAgenda, "SELECT TOP 1 * FROM AgendaComercial", False)
                RsAgenda.AddNew
                For I = 0 To RsPresupuestos.Fields.Count - 1
                    campocopiado = False
                    j = 0
                    Do While Not campocopiado And j + 1 < RsAgenda.Fields.Count
                        'La comprobación del nombre es imprescindible, las otras dos (tipo y tamaño) no vienen mal.
                        If (RsAgenda.Fields(j + 1).name = RsPresupuestos.Fields(I).name) _
                            And (RsAgenda.Fields(j + 1).Type = RsPresupuestos.Fields(I).Type) _
                            And (RsAgenda.Fields(j + 1).DefinedSize = RsPresupuestos.Fields(I).DefinedSize) Then
                            campocopiado = True
                            RsAgenda.Fields(j + 1).Value = RsPresupuestos.Fields(I).Value
                        End If
                        j = j + 1
                    Loop
                Next
                RsAgenda.Update
                
                dbPrincipal.CommitTrans
                
            End If
        Else 'Ya existe una entrada para el presupuesto en la Agenda.
            m_IDAgendaComercial = IdAgenda
            FrmMGestion.Show
            FrmMGestion.SetFocus
        End If
    End If
    Exit Sub
error:
    dbPrincipal.RollbackTrans
    
    Alerta ("Error desconocido." & vbCrLf & Err.Description)
End Sub

Private Sub CmdAmpliar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Si la caja de texto "TxtPrecio" tiene alguna informacion insertada entonces actualiza de la tabla
'   "PresupuestosyTarifas" los campos
'   PresupuestosyTarifas!PrecioUnitario = PrecioUnitario+(PrecioUnitario * " & TxtPrecio & ") / 100
'   PresupuestosyTarifas!PrecioTotal = PrecioUnitario*NumeroUnidades
'   Actualiza los registros en los que el valor de PresupuestosyTarifas!IDPresupuesto sea igual al valor de la
'   variable global "m_IDPresupuesto" que nos indica cual es el presupuesto actualmente seleccionado
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

If NoNumNulo(TxtPrecio) > 0 Then
    Dim Rs As New Recordset
    Call dbPrincipal.Execute("UPDATE PresupuestosyTarifas Set PrecioUnitario =PrecioUnitario+(PrecioUnitario * " & TxtPrecio & ") / 100 WHERE IDPresupuesto = '" & m_IDPresupuesto & "'")
    Call dbPrincipal.Execute("UPDATE PresupuestosyTarifas Set PrecioTotal = PrecioUnitario*NumeroUnidades WHERE IDPresupuesto = '" & m_IDPresupuesto & "'")

    'Set PrecioUnitario = (PrecioUnitario * 25) / 100 WHERE (IDPresupuesto = 7389)
End If
End Sub

Private Sub CmdAyuda_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Carga la ayuda del formulario
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    'Llamamos a la ayuda.
    SendKeys "{F1}"

End Sub

Private Sub CmdCancelar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Desactiva la edicion del Grid y el permiso de edicion de las celdas
'   Cancela la edicion de un registro y lo desbloquea, si esta bloqueado
'   Desactiva los controles del Formulario y actualiza el mismo
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    'Indicamos que se ha finalizado la adición de un registro
    EnEdicion = False
    
    DbGridPropiedades.CurrentCellModified = False
    DbGridPropiedades.EditActive = False
    
    If m_IDPresupuesto = -1 Then
        Unload Me
        
        Exit Sub
    End If
    
    'Control de registros bloqueados
    If RegistroBloqueado Then
        Call DesBloquear("Presupuestos", "IDPresupuesto", m_IDPresupuesto)
        'Indicamos que no hay registro bloqueado
        RegistroBloqueado = False
    End If
    
    'Desactivamos los controles de edición
    DesactivarControlesEdicion
    
    'Actualizamos el formulario
    ActualizarFormulario

End Sub

Private Sub CmdCerrar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Descarga el formulario
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    'Descargamos el formulario de la memoria
    Unload Me

End Sub

Private Sub CmdConfigurar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Descarga el formulario
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If FrmMUnPresupuestoGeotecnico.ActivarFormulario Then
      Call ActualizarTarifas
    End If
End Sub

Private Sub CmdDEliminar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Elimina un registro del recordset (correspondiente a una linea de detalle del presupuesto) y tambien actualiza
'   el Grid correspondiente. Y actualiza el numero de registros que quedan en el Grid
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba que el recordset tenga registros a eliminar
'   2) Comprueba que tenemos una linea del Grid seleccionada
'   3) Nos pregunta si estamos seguros de borrar el registro
'   4) Guarda en la variable FILA el numero de lineas del Grid
'   5) Borra la linea del Grid y lo actualiza
'   6) Comprueba que el valor de FILA es mayor que el numero de registros del recordset y si es asi, guarda en FILA
'      el numero de registro del recordset - 1
'   7) Si FILA es mayor que 0 entonces guarda en la propiedad del Grid que indica el numero de filas el valor de FILA
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim FILA As Long
    Dim ID As Long

    If RsPropiedades.RecordCount = 0 Then
        Alerta ("No quedan más lineas que eliminar.")

        Exit Sub
    End If
    On Error Resume Next
    If Err <> 0 Then
        Err.Clear
        On Error GoTo 0
        Alerta ("Debe seleccionar un linea.")

        Exit Sub
    End If
    Err.Clear
    On Error GoTo 0
    If Pregunta("¿Esta seguro/a de querer eliminar la linea seleccionada?") Then
        FILA = DbGridPropiedades.Row

        'Eliminamos el registro actual
        RsPropiedades.Delete

        'Refrescamos el control DATA y el DBGrid
        Call ActualizarDbGrid(3)

        'Mantener la fila previamente seleccionada.
        If FILA >= RsPropiedades.RecordCount Then
            FILA = RsPropiedades.RecordCount - 1
        End If
        If FILA >= 0 Then
            DbGridPropiedades.Row = FILA
        End If
    End If

End Sub

Private Sub CmdDesaceptar_Click()
    Dim RsDesaceptar As New Recordset
    Dim RsClientes As New Recordset
    Dim Rs As New Recordset
    Dim RsAux As New Recordset
    Dim Codigo As Integer, Obra As Integer, cliente As Integer, annio As Integer
    Dim Sucursal As Integer, CUltimaobra As Integer
    Dim sResp As String, CodigoObra As String

    ''Grabar el motivo en el Log de Facturas
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If
    
    Call mClsConfiguracion.PueblaRecordset(RsDesaceptar, "SELECT * FROM Presupuestos WHERE IdPresupuesto = '" & m_IDPresupuesto & "'")

    If RsDesaceptar.RecordCount > 0 Then
        Codigo = RsDesaceptar!Codigo
        Obra = RsDesaceptar!IdObra
        cliente = RsDesaceptar!IdCliente
        annio = RsDesaceptar!Anyo
        CodigoObra = DameExpresion("IDObra", CInt(Obra), "Obras", "Codigo")

        If Pregunta("Va a proceder a desaceptar el presupuesto " & Codigo & " y ELIMINAR la Obra " & CodigoObra & ", ¿desea continuar?") Then
            'HAY QUE CONTROLAR QUE LA OBRA NO TENGA TRABAJOS Y SI LOS TIENE SALIRNOS
            Call mClsConfiguracion.PueblaRecordset(RsAux, "SELECT * FROM Trabajos WHERE IdObra = " & Obra & "", False)

            If RsAux.RecordCount <> 0 Then
                Alerta ("La Obra " & CodigoObra & " tiene trabajos metidos. No se puede desaceptar del presusupuesto a menos que elimines todos los trabajos.")
            Else
                On Error GoTo error
                sResp = InputBox("Especifique el motivo por el quiere que desaceptar el presupuesto y eliminar la obra.", "Motivo por el que desacepta un presupuesto", "", , , App.Comments, 300)
                sResp = Trim(sResp)

                If sResp & "" = "" Then
                    Unload Me
                    'Jose. 16 5 2007.
                    If RsAux.State = 1 Then RsAux.Close
                    If RsDesaceptar.State = 1 Then RsDesaceptar.Close
                    If RsClientes.State = 1 Then RsClientes.Close
                    Set RsAux = Nothing
                    Set RsDesaceptar = Nothing
                    Set RsClientes = Nothing
                    '-----------------
                    Exit Sub
                End If

                Unload FrmMUnaObra 'Jose. 12 4 2005. Evita que dicho formulario se quede bloqueado con un mensaje que se repite indefinidamente.
                
                dbPrincipal.BeginTrans 'Jose. 30 3 2005.
                
                Call mClsFacturas.PueblaRecordset(Rs, "SELECT top 1 * FROM LogDesaceptarPres", False)
                Rs.AddNew
                Rs!Responsable = m_LoginUsuario
                Rs!Fecha = Date
                Rs!Descripcion = "Desaceptar Presupuesto. MOTIVO: " & sResp
                Rs!CodPresupuesto = Codigo
                Rs!numObra = Obra
                Rs!cliente = cliente
                Rs.Update
                Rs.Close
                Set Rs = Nothing
                
                Call dbPrincipal.Execute("Delete FROM Correspondencia WHERE IdObra=" & Obra & "")
                'Call mClsConfiguracion.PueblaRecordset(RsObra, "SELECT * FROM Correspondencia WHERE IdObra = '" & obra & "'")
                Call dbPrincipal.Execute("Update Presupuestos set IdObra=0, IdCliente=-1, Aceptado=0, FechaAceptacion=NULL WHERE IdPresupuesto = " & m_IDPresupuesto & "")
                Call dbPrincipal.Execute("Delete FROM Obras WHERE IdObra=" & Obra & "")
                
                'Jose. 12 4 2005. Solo debería decrementar el contador si la obra era la última
                'Paco. 7-8-2007. Corregido.
                Sucursal = NoNumNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "IdSucursal"))
                Call mClsConfiguracion.PueblaRecordset(RsClientes, "SELECT UltimaObra FROM ClientesUltimaObra WHERE IdCliente = " & cliente & " and IdSucursal= " & Sucursal & "", False)

                If RsClientes.RecordCount > 0 Then
                    If RsClientes!ultimaObra = Val(Right(CodigoObra, 3)) Then
                        'If RsClientes!UltimaObra > 0 Then
                        RsClientes!ultimaObra = RsClientes!ultimaObra - 1
                        RsClientes.Update
                    Else
                        Alerta ("La obra eliminada no era la última del cliente, por tanto ha quedado un hueco.")
                    End If
                End If
                
                dbPrincipal.CommitTrans  'Jose. 30 3 2005.
                Call ActualizarFormulario 'Jose. 12 4 2005.
                
            End If
        End If
    End If

    If RsDesaceptar.State = 1 Then RsDesaceptar.Close 'Jose. 16 5 2007. Antes cerraba sin comprobar.
    Set RsDesaceptar = Nothing

    If RsClientes.State = adStateOpen Then RsClientes.Close
    Set RsClientes = Nothing
    
    If RsAux.State = 1 Then RsAux.Close 'Jose. 16 5 2007.
    Set RsAux = Nothing 'Jose. 16 5 2007.
    
    Exit Sub
error:

    dbPrincipal.RollbackTrans
    Alerta ("Error. No se desacepto correctamente.")

End Sub

Private Sub CmdDNuevo_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un registro del recordset (correspondiente a una linea de detalle del presupuesto) y tambien actualiza
'   el Grid correspondiente.
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    RsPropiedades.AddNew
    RsPropiedades!IdPresupuesto = m_IDPresupuesto
    RsPropiedades!Nombre = "Nombre"
    RsPropiedades!valor = "Valor"
    RsPropiedades.Update

    m_IDPropPresup = RsPropiedades!IDPropPresup

    Call ActualizarDbGrid(3)

End Sub

Private Sub CmdDocumentos_Click()

    WkAñoPresup = Trim(TxtAnyo.Text)

    If m_IDPresupuesto = 0 Then
        MsgBox "Error. No hay presupuesto Cargado" 'Jose. 8 8 2006. Pequeña correción cosmética.
        Exit Sub
    Else
        FrmMDocumentosAdjuntos.Show 1
        'Pedro. 25 5 2006.
        Me.ActualizarFormulario
    End If

End Sub

Private Sub CmdEliminar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Elimina un registro correspondiente a una linea del presupuesto
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba que tiene permisos para borrar registros
'   2) Si tiene permiso para borrar pide una clave
'   3) Si la clave es correcta comprueba
'   4) Comprueba que la solapa en la que estamos no es una de las tres primeras
'   5) Si el presupuesto esta aceptado y si es asi no nos deja borrarlo
'   6) Comprueba que la solapa es la de "Tarifas"
'   7) Comprueba que el registro no esta siendo utilizado por otro usuario
'   8) Si cumple todas las anetriores reglas nos borra la linea de Presupuesto de la tabla "DetallePresupuesto" y
'      "PresupuestosyTarifas"
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim Cual As Integer
    Dim RsBuscar As New Recordset
    
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If
    
    If Not mp_Eliminar Then
        Alerta ("No tiene permiso para eliminar registros.")
    
        Exit Sub
    Else
        Dim sResp As String
        Load FrmLogin
        sResp = "Especifique una clave para eliminar el presupuesto."
        FrmLogin.Label1.Caption = sResp
        FrmLogin.Show 1
        'FrmLogin.TxtLogin.SetFocus
        
        sResp = Trim(login)

        If sResp & "" = "" Then
            Exit Sub
        End If

        Dim Rs As New Recordset
        Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")
    
        If Rs.RecordCount > 0 Then
            
        Else
            Call Informacion("La Clave no es correcta.")
            Exit Sub
        End If

        Rs.Close
        Set Rs = Nothing
    End If
    
    'Comprobamos si es posible la eliminación
    'Ej:    If HayAlguien("IDPresupuesto", "HabitacionesDia", mclsMant("IDPresupuesto, True) Then
    '           Alerta ("No se puede eliminar un Presupuesto que esté relacionado con algún registro de Habitaciones / Dia.")
    
    '           Exit Sub
    '       End If
    
    If MTab.Tab < 3 Then
        'Esto nunca, pero por si acaso.
        Exit Sub
    End If
    
    Cual = MTab.Tab - 3

    If Cual = 0 Then
        If PresupuestoAceptado Then
            If HayAlguien2("TrabajosyTarifas.IDTARIFA", "Trabajos INNER JOIN TrabajosyTarifas ON Trabajos.IDTrabajo = TrabajosyTarifas.IDTrabajo", RsMant(Cual)!IDTarifa, "IdObra = " & m_IDObra, True) Then
                Alerta ("No se puede eliminar una linea de Presupuesto que está siendo utilizada en algún trabajo de la obra.")
    
                Exit Sub
            End If
        End If

        If Pregunta("¿Esta seguro/a de querer eliminar la linea de presupuesto seleccionada?") Then
            dbPrincipal.Execute "Delete FROM DetallePresupuesto WHERE IdPresupuesto = " & RsMant(Cual)!IDPYT
            'Eliminamos el registro actual
            dbPrincipal.Execute "Delete FROM PresupuestosyTarifas WHERE IDPYT=" & RsMant(Cual)!IDPYT
    
            'Actualizamos el formulario
            ActualizarFormulario
        End If
    End If

End Sub

Function NecesitaDetalleTotal(Destino As Object) As Boolean
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Recoge el valor que devuelve la funcion PresNecesitaDetalleTotal que lo que hace es imprimir un listado de un
'   presupuesto
'
'PARAMETROS :
'
'RETORNO :
'   .T. Si el listado se imprimio correctamente
'   .F. Si el listado no se imprimio correctamente
'
'PROCESO :
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    NecesitaDetalleTotal = PresNecesitaDetalleTotal(Destino)

End Function

Private Sub CmdEliminarAmpliacion_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Elimina un registro de la solapa de Ampliciones y borra el registro de las tablas a las que haga referencia
'
'PARAMETROS :
'   Index  --> No se utiliza
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba que tiene permisos para borrar registros
'   2) Comprueba que la solapa en la que estamos no es una de las tres primeras
'   3) Si la solapa es de "Ampliaciones"
'      -Pide una clave para borrar el registro y si es correcta nos borra el regisgtro de la tabla "DetallePresupuesto",
'       "PresupuestosAmpliacion", "PresupuestosyTarifas", "Presupuestos" y actualiza el formulario
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim Cual As Integer
    Dim RsBuscar As New Recordset
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If
    
    If Not mp_Eliminar Then
        Alerta ("No tiene permiso para eliminar registros.")
    
        Exit Sub
    End If
    
    'Comprobamos si es posible la eliminación
    'Ej:    If HayAlguien("IDPresupuesto", "HabitacionesDia", mclsMant("IDPresupuesto, True) Then
    '           Alerta ("No se puede eliminar un Presupuesto que esté relacionado con algún registro de Habitaciones / Dia.")
    
    '           Exit Sub
    '       End If
    
    If MTab.Tab < 3 Then
        'Esto nunca, pero por si acaso.
        Exit Sub
    End If
    
'    Cual = MTab.Tab - 3

    If MTab.Tab = 7 Then
'        If RsMant(2)!Aceptado = 1 Then
'            If HayAlguien2("TrabajosyTarifas.IDTARIFA", "Trabajos INNER JOIN TrabajosyTarifas ON Trabajos.IDTrabajo = TrabajosyTarifas.IDTrabajo", RsMant(Cual)!IDTarifa, "IdObra = " & m_IDObra, True) Then
'               Alerta ("No se puede eliminar una linea de Presupuesto que está siendo utilizada en algún trabajo de la obra.")
'
'               Exit Sub
'            End If
'        End If

        Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para eliminar el presupuesto."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
   'FrmLogin.TxtLogin.SetFocus
    
    sResp = Trim(login)
    If sResp & "" = "" Then
            Exit Sub
    End If
    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")
    If Rs.RecordCount > 0 Then
            If Pregunta("¿Esta seguro/a de querer eliminar el presupuesto seleccionado?") Then
                dbPrincipal.Execute "Delete FROM DetallePresupuesto WHERE IdPresupuesto = " & RsMant(2)!IdPresupuesto
                dbPrincipal.Execute "Delete FROM PresupuestosAmpliacion WHERE IdPresupuestoHijo = " & RsMant(2)!IdPresupuesto
                'Eliminamos el registro actual
                dbPrincipal.Execute "Delete FROM PresupuestosyTarifas WHERE IdPresupuesto=" & RsMant(2)!IdPresupuesto
                dbPrincipal.Execute "Delete FROM Presupuestos WHERE IdPresupuesto=" & RsMant(2)!IdPresupuesto
                'Actualizamos el formulario
                ActualizarFormulario
            End If
     Else
            Call Informacion("La Clave no es correcta.")
     End If
    Rs.Close
    Set Rs = Nothing
  End If
End Sub

Private Sub CmdEnviarAmpliacion_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Envia un presupuesto por correo electronico al cliente utilizando el Dato de Email proporcionado
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Pide informacion sobre los docuemntos que se van a adjuntar al Email y el cuerpo del mail, que
'      puede ser de tres tipos: Presupuesto, Plan de control o Libre (el texto sera escrito por el usuario)
'   2) Dependiendo del tipo de cuerpo genera una variable string con el texto a enviar
'   3) Segun si el Email lleva un unico documento adjunto o lleva varios utiliza diferentes funciones
'      para adjuntar los archivos
'      Un documento --> EnviarMAPIMail
'      Varios documentos --> EnviarMAPIMailVarios
'   4) Enviado el Mail crea un registro en la solapa Envio con la informacion del Mail enviado (Hora, Dia, cliente,
'      documentos adjuntos)
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2004/02     HDT     Envio de Presupuestos por Email.
'   2004/05     LCC     Antonio gutiérrez, envio de ampliaciones por email
'DOCF FIN -----------------------------------------------------------------------------

    Dim UnidadApp As String
    Dim iret As Variant
    Dim CuerpoMail As String
    Dim DocumentosAdjuntos As String
    Dim Resp As String
    Dim Resp1 As String
    Dim Resp2 As String
    Dim RsEnvio As New Recordset
    Dim RsPresup As New Recordset
    Dim RsObra As New Recordset

    If TxtEmail.Text = "" Then
        MsgBox "La Direccion de Email no puede estar vacia"
        Exit Sub
    End If

    Dim Obra As Integer
    FrmEnvioAmpliacion.Show 1

    If EnvioCancelado = 1 Then Exit Sub
 
    Call mClsPresupuestos.PueblaRecordset(RsEnvio, "SELECT * FROM EnvioPresupuesto", False)
    Call mClsPresupuestos.PueblaRecordset(RsPresup, "SELECT IdObra, NombreObra FROM presupuestos WHERE IdPresupuesto=" & m_IDPresupuesto)
    Obra = RsPresup!IdObra
    Call mClsPresupuestos.PueblaRecordset(RsObra, "SELECT codigo FROM Obras WHERE idobra=" & Obra)
    'Resp = InputBox("¿Que plantilla desea enviar? (1-2-3)", "Correo Electronico")
    'Resp1 = InputBox("¿Que Cuerpo de mensaje desea enviar? (1-Presupuesto, 2-Plan de Control)", "Correo Electronico")

    If UCase(m_NombreDominio) = "DOMINIO_L" Or UCase(m_NombreDominio) = "DOMINIO_LPRUEBAS" Then
        If UCase(m_LoginUsuario) = "MANOLO" Then
            If CPresupuesto = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Rogaria en caso de aceptacion, me enviara la ampliación firmada " & vbCrLf
                CuerpoMail = CuerpoMail & "por fax.                                                           " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                 " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                 " & vbCrLf
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo:               Manuel Aláez Fernández (Dpto. de Contratación)" & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a Manuel Aláez (manuel.contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 00  Fax: 91 208 90 01"
            ElseIf CPlan = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Según nuestro sistema de calidad AENOR, para poder dar " & vbCrLf
                CuerpoMail = CuerpoMail & "comienzo a los trabajos en el laboratorio es necesario que nos " & vbCrLf
                CuerpoMail = CuerpoMail & "envien por fax la hoja del presupuesto firmada o en su defecto " & vbCrLf
                CuerpoMail = CuerpoMail & "una solicitud de pedido por fax o correo eléctronico." & vbCrLf
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo:               Manuel Aláez Fernández (Dpto. de Contratación)" & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a Manuel Aláez (manuel.contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 00  Fax: 91 208 90 01"
            Else
                CuerpoMail = Cuerpo
                CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Un saludo:"
            End If

        Else

            If CPresupuesto = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Rogaria en caso de aceptacion, me enviara la ampliación firmada " & vbCrLf
                CuerpoMail = CuerpoMail & "por fax.                                                           " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                 " & vbCrLf
                CuerpoMail = CuerpoMail & "                                                                 " & vbCrLf
                
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo." & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 00  Fax: 91 208 90 01"
                
            ElseIf CPlan = 1 Then
                CuerpoMail = "                                     LABORATORIO DE CONTROL CEMOSA" & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, remito ampliación del presupuesto para el control de calidad de la obra: " & RsPresup!NombreObra & vbCrLf
                CuerpoMail = CuerpoMail & "Cod. Obra: " & RsObra!Codigo & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Según nuestro sistema de calidad AENOR, para poder dar " & vbCrLf
                CuerpoMail = CuerpoMail & "comienzo a los trabajos en el laboratorio es necesario que nos " & vbCrLf
                CuerpoMail = CuerpoMail & "envien por fax la hoja del presupuesto firmada o en su defecto " & vbCrLf
                CuerpoMail = CuerpoMail & "una solicitud de pedido por fax o correo eléctronico." & vbCrLf
                
                CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Atentamente, un saludo." & vbCrLf & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & " Para cualquier aclaración dirijase a contratacion@lcc.es)" & vbCrLf
                CuerpoMail = CuerpoMail & "                           Tlf: 91 208 90 00  Fax: 91 208 90 01"
                
            Else
                CuerpoMail = Cuerpo
                CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Un saludo:"
            End If
        End If

    Else

        If CPresupuesto = 1 Then
            If UCase(m_NombreDominio) = "DOMINIO_I" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 91 395 21 94 o mediante fax 91 451 42 97." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            ElseIf UCase(m_NombreDominio) = "DOMINIO_IM" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 952 10 54 48 o mediante fax 952 10 56 86." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            ElseIf UCase(m_NombreDominio) = "DOMINIO_IS" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 9 542 607 78 o mediante fax 9 545 136 31." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            ElseIf UCase(m_NombreDominio) = "DOMINIO_IV" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 9 635 248 49 o mediante fax 9 634 415 70." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            End If

        ElseIf CPlan = 1 Then
    
        Else
            CuerpoMail = Cuerpo
            CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Sin otro particular, reciban un cordial saludo."
        End If
    End If

    RsObra.Close
    Set RsObra = Nothing
    RsPresup.Close
    Set RsPresup = Nothing

    If DocumentoP = 1 Then
        Call CmdPDFAmpliacion_Click(1)

        DocumentosAdjuntos = m_Unidad & "\Temp\Presupuesto.pdf;"
    End If

    If Documento1 = 1 Then
        If DocumentosAdjuntos <> "" Then

            DocumentosAdjuntos = DocumentosAdjuntos & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)
        Else

            DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & ";"
        End If

        'Else
        '  DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & ";"
    End If

    If Documento2 = 1 Then
        If DocumentosAdjuntos <> "" Then

            DocumentosAdjuntos = DocumentosAdjuntos & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)
        Else

            DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1) & ";"
        End If

        'Else
        '  DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1) & ";"
    End If

    If EnviarMAPIMailVarios(TxtEmail, , , "Presupuesto", CuerpoMail, DocumentosAdjuntos) = True Then
        MsgBox "Correo enviado"
        RsEnvio.AddNew
        RsEnvio!IdPresupuesto = m_IDPresupuesto
        RsEnvio!FechaEnvio = Date
        RsEnvio!HoraEnvio = Time

        If DocumentoP = 1 Then
            RsEnvio!DocumentoP = "Presupuesto"
        Else
            RsEnvio!DocumentoP = ""
        End If

        If Documento1 = 1 Then
            RsEnvio!Documento1 = WordDoc(0)
        Else
            RsEnvio!Documento1 = ""
        End If

        If Documento2 = 1 Then
            RsEnvio!Documento2 = WordDoc(1)
        Else
            RsEnvio!Documento2 = ""
        End If

        RsEnvio!Email = TxtEmail
        RsEnvio!Fax = ""
        RsEnvio!TipoEnvio = "Email"
        RsEnvio.Update
    End If

    RsEnvio.Close
    Set RsEnvio = Nothing
End Sub

Private Sub CmdExportarWord_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un documento de Word con los datos de quien a creado el presupuesto y de su departamento
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Crea un documento de Word "\Matrices\Matriz2.doc" y MatrizI2.doc si nos encontramos en el dominio I
'       Las plantillas se guardan dentro de la carpeta de informes de cada dominio en \\..\Plantillas\matrices\*.doc
'   2) Asigna a la propiedad Tabla de la clase ClsDocumento una referencia al objeto mClsPresupuesto el cual hace
'      referencia a la tabla "Presupuestos"
'   3) Asigna al campo  mObjDoc.IDPresupuesto el valor de la variable global m_IdPresupuesto que tiene el valor del
'      presupuesto actual
'   4) Guarda en la variable "UsuarioCreacion" el valor de Presupuestos!UsuarioCreacion del registro que tenga en
'      Presupuesto!IdPresupuesto = m_IDPresupuesto
'   5) Comprueba cual es el valor de UsuarioCreacion y dependiendo de su valor guarda dos valores en las variables
'      Persona1     --> El nombre de la persona que crea el presupuesto
'      Descripcion  --> El nombre del departamento
'   6) Ejecuta el evento "IniciarProcesoWord" de la clase ClsDocumento
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2003/11     LCC     Antonio Gutiérrez González.
'
'DOCF FIN -------------------------------------------------------------

    Dim Descripcion As String
    Dim Rs As New Recordset
    Dim UsuarioCreacion As String, Persona1 As String, Persona2 As String
    Dim mObjDoc As New ClsDocumento
    
    'If m_NombreDominio = "DOMINIO_I" Or m_NombreDominio = "DOMINIO_IM" Then
    'If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_I" Then
    If m_FormatoFactura = "I" Then 'Jose. 23 11 2006. jeje, a la tercera va la vencida, no?
        'Call mTabla.PueblaRecordset(Rs, "SELECT * FROM presupuestos WHERE Presupuestos.IDPresupuesto = " & m_IDPresupuesto)
        'If UCase(Rs!pConcepto) <> "ASISTENCIA TECNICA" Or UCase(Rs!PConecpto) <> "ASISTENCIA TÉCNICA" Then
            mObjDoc.DocumentoDestino = ""
            mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\MatrizI2.doc"
            Set mObjDoc.Tabla = mClsPresupuestos
            mObjDoc.IdPresupuesto = m_IDPresupuesto
            UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        'Else
            'mObjDoc.DocumentoDestino = ""
            'mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\MatrizAsistenciaTecnica.doc"
            'Set mObjDoc.Tabla = mClsPresupuestos
            'mObjDoc.IdPresupuesto = m_IDPresupuesto
            'UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
    ElseIf UCase(m_NombreDominio) = "DOMINIO_L" Or UCase(m_NombreDominio) = "DOMINIO_LPRUEBAS" Then
        mObjDoc.DocumentoDestino = ""
        mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\Matriz2.doc"
        Set mObjDoc.Tabla = mClsPresupuestos
        mObjDoc.IdPresupuesto = m_IDPresupuesto
        UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        If (UsuarioCreacion & "" = "") Then
            Persona1 = "Iván del Castillo" 'Jose. 27 9 2006. Sustituido por Marisol.
            Descripcion = "Departamento de Contratación"
        ElseIf UsuarioCreacion = "Isabel Tostado" Then
            Persona1 = "Isabel Tostado"
            Descripcion = "Departamento de Contratación"
        'Jose. 2 11 2004. Añadido. --------------------
        ElseIf UsuarioCreacion = "Ivan del Castillo" Then
            Persona1 = "Iván del Castillo"
            Descripcion = "Departamento de Contratación"
        '-----------------------------------------------
        Else
            Persona1 = "Iván del Castillo" 'Jose. 27 9 2006. Sustituido por Marisol.
            Descripcion = "Departamento de Contratación"
        End If
    ElseIf UCase(Left(m_NombreDominio, 9)) = "DOMINIO_G" Then
        mObjDoc.DocumentoDestino = ""
        mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\Matriz2.doc"
        Set mObjDoc.Tabla = mClsPresupuestos
        mObjDoc.IdPresupuesto = m_IDPresupuesto
        UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        'Jose. 27 9 2006. Antes estaba exactamente como en DOMINIO_L con lo cual se supone que esto se ignoraba en el
        'informe. Están puestos los nombres a pelo en los informes (de momento).
        If (UsuarioCreacion & "" = "") Then
            Persona1 = "Juan Miguel Gámez Salazar"
            Descripcion = "Director de Laboratorio"
        Else
            Persona1 = "Juan Miguel Gámez Salazar"
            Descripcion = "Director de Laboratorio"
        End If
    End If
    Call mObjDoc.IniciarProcesoWord(Persona1, Descripcion)

End Sub

Private Sub CmdExportarWord2_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un documento de Word con los datos de quien a creado el presupuesto y de su departamento
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Crea un documento de Word "\Matrices\Matriz2.doc" y "MatrizAistenciaTecnica.doc"
'   2) Asigna a la propiedad Tabla de la clase ClsDocumento una referencia al objeto mClsPresupuesto el cual hace
'      referencia a la tabla "Presupuestos"
'   3) Asigna al campo  mObjDoc.IDPresupuesto el valor de la variable global m_IdPresupuesto que tiene el valor del
'      presupuesto actual
'   4) Guarda en la variable "UsuarioCreacion" el valor de Presupuestos!UsuarioCreacion del registro que tenga en
'      Presupuesto!IdPresupuesto = m_IDPresupuesto
'   5) Comprueba cual es el valor de UsuarioCreacion y dependiendo de su valor guarda dos valores en las variables
'      Persona1     --> El nombre de la persona que crea el presupuesto
'      Descripcion  --> El nombre del departamento
'   6) Ejecuta el evento "IniciarProcesoWord" de la clase ClsDocumento
'
'CATEGORIA : EVENTO
'
'HISTORIA :

'ULTIMA DOCUMENTANCION
'   2003/10     LCC     Antonio Gutiérrez González

'--------------------------------------------------------------------------------------------------
    
    Dim Descripcion As String
    Dim Rs As New Recordset
    Dim UsuarioCreacion As String, Persona1 As String, Persona2 As String
    Dim mObjDoc As New ClsDocumento
    If m_FormatoFactura = "I" Then
        'Call mTabla.PueblaRecordset(Rs, "SELECT * FROM presupuestos WHERE Presupuestos.IDPresupuesto = " & m_IDPresupuesto)
        'If UCase(Rs!pConcepto) <> "ASISTENCIA TECNICA" Or UCase(Rs!PConecpto) <> "ASISTENCIA TÉCNICA" Then
        '    mObjDoc.DocumentoDestino = ""
        '    mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\MatrizI2.doc"
        '    Set mObjDoc.Tabla = mClsPresupuestos
        '    mObjDoc.IdPresupuesto = m_IDPresupuesto
        '    UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        'Else
            mObjDoc.DocumentoDestino = ""
            mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\MatrizAsistenciaTecnica.doc"
            Set mObjDoc.Tabla = mClsPresupuestos
            mObjDoc.IdPresupuesto = m_IDPresupuesto
            UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
    Else
        mObjDoc.DocumentoDestino = ""
        mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\Matriz2.doc"
        Set mObjDoc.Tabla = mClsPresupuestos
        mObjDoc.IdPresupuesto = m_IDPresupuesto
        UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        If (UsuarioCreacion & "" = "") Then
            Persona1 = "Iván del Castillo"
            Descripcion = "Departamento de Contratación"
        ElseIf UsuarioCreacion = "Isabel Tostado" Then
            Persona1 = "Isabel Tostado"
            Descripcion = "Departamento de Contratación"
        'Jose. 2 11 2004. Añadido. --------------------
        ElseIf UsuarioCreacion = "Ivan del Castillo" Then
            Persona1 = "Iván del Castillo"
            Descripcion = "Departamento de Contratación"
        '-----------------------------------------------
        Else
            Persona1 = "Iván del Castillo"
            Descripcion = "Departamento de Contratación"
        End If
    End If
    Call mObjDoc.IniciarProcesoWord(Persona1, Descripcion)

End Sub

Private Sub CmdFax_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Envia un presupuesto por Fax al cliente utilizando el Dato de Numero de Fax proporcionado
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Pide informacion sobre los docuemntos que se van a adjuntar al Fax y el cuerpo del Fax, que
'      puede ser de tres tipos: Presupuesto, Plan de control o Libre (el texto sera escrito por el usuario)
'   2) Dependiendo del tipo de cuerpo genera una variable string con el texto a enviar
'   3) Además adjunta los ficheros que le indiquemos, que pueden ser el presupeusto o las plantillas que
'      tenga el presupuesto añadidas en su ficha
'   4) Enviado el Fax crea un registro en la solapa Envio con la informacion del Fax enviado (Hora, Dia, cliente,
'      documentos adjuntos)
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2004/02     HDT     Envio de Presupuestos por Fax.
'
'DOCF FIN -------------------------------------------------------------

    Dim UnidadApp As String
    Dim iret As Variant
    Dim CuerpoMail As String
    Dim DocumentoPresupuesto As String
    Dim DocumentosPlantilla1 As String
    Dim DocumentosPlantilla2 As String
    Dim DocumentosPlantilla3 As String
    Dim DocumentosPlantilla4 As String
    Dim DocumentosPlantilla5 As String
    Dim DocumentosPlantilla6 As String
    Dim DocumentosPlantilla7 As String
    Dim DocumentosPlantilla8 As String
    Dim DocumentosPlantilla9 As String
    Dim DocumentosPlantilla10 As String
    Dim Resp As String
    Dim Resp1 As String
    Dim Resp2 As String
    Dim RsEnvio As New Recordset

    If TxtFax.Text = "" Then
        MsgBox "El Fax no puede estar vacio"
        Exit Sub
    End If

    DocumentosAdjuntos = ""
    FrmEnvioP.Show 1

    If EnvioCancelado = 1 Then
        Set RsEnvio = Nothing 'Jose. 18 5 2006. Siempre liberar de la memoria.
        Exit Sub
    End If

    If UCase(m_NombreDominio) = "DOMINIO_L" Or UCase(m_NombreDominio) = "DOMINIO_LPRUEBAS" Then
        If CPresupuesto = 1 Then
            CuerpoMail = "Adjunto, remito presupuesto solicitado de la obra de referencia." & vbCrLf
            CuerpoMail = CuerpoMail & "Rogaría, en caso de aceptación confirmarlo por fax enviándonos las hojas del presupuesto firmadas. "
            CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Un saludo:"
        ElseIf CPlan = 1 Then
            CuerpoMail = "Adjunto, remito plan de control de calidad para la obra de referencia." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Un saludo:"
        Else
            CuerpoMail = Cuerpo
            CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Un saludo:"
        End If

    Else

        If CPresupuesto = 1 Then
            CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
            CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
            CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono XXXXXXX o mediante fax XXXXXXX." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
            CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
        ElseIf CPlan = 1 Then
    
        Else
            CuerpoMail = Cuerpo
            CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Sin otro particular, reciban un cordial saludo."
        End If
    End If

    'Creacion del fichero .sub para el envio de correo
    '-------------------------------------------------
    Dim Arch() As String
    Dim na As Long
    Dim NameFich As String
    Dim Vueltas As Integer

    DocumentosPlantilla1 = ""
    DocumentosPlantilla2 = ""
    DocumentosPlantilla3 = ""
    DocumentosPlantilla4 = ""
    DocumentosPlantilla5 = ""
    DocumentosPlantilla6 = ""
    DocumentosPlantilla7 = ""
    DocumentosPlantilla8 = ""
    DocumentosPlantilla9 = ""
    DocumentosPlantilla10 = ""

    If DocumentoP = 1 Then
        Call CmdPDF_Click(1)

        DocumentoPresupuesto = m_Unidad & "\Temp\Presupuesto.pdf"
    End If

    If Len(DocumentosAdjuntos) Then
        Arch = Split(DocumentosAdjuntos, ";")
        Vueltas = 0

        For na = LBound(Arch) To UBound(Arch)

            If Len(Trim(Arch(na))) Then
                If Dir(Arch(na), vbArchive) <> "" Then

                    Select Case Vueltas

                        Case 0

                            DocumentosPlantilla1 = Trim(Arch(na))

                        Case 1

                            DocumentosPlantilla2 = Trim(Arch(na))

                        Case 2

                            DocumentosPlantilla3 = Trim(Arch(na))

                        Case 3

                            DocumentosPlantilla4 = Trim(Arch(na))

                        Case 4

                            DocumentosPlantilla5 = Trim(Arch(na))

                        Case 5

                            DocumentosPlantilla6 = Trim(Arch(na))

                        Case 6

                            DocumentosPlantilla7 = Trim(Arch(na))

                        Case 7

                            DocumentosPlantilla8 = Trim(Arch(na))

                        Case 8

                            DocumentosPlantilla9 = Trim(Arch(na))

                        Case 9

                            DocumentosPlantilla10 = Trim(Arch(na))
                    End Select

                    Vueltas = Vueltas + 1
                End If
            End If

        Next na

    End If

    'If DocumentoP = 1 Then
    '  Call CmdPDF_Click(1)
    '  DocumentoPresupuesto = m_Unidad & "\Temp\Presupuesto.pdf"
    'End If

    'If Documento1 = 1 Then
    '    DocumentosPlantilla1 = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)
    'End If
    '
    'If Documento2 = 1 Then
    '    DocumentosPlantilla2 = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)
    'End If
   
    Dim CadenaNombre As String

    If TxtNombre <> "" Then
        CadenaNombre = TxtDon & " " & TxtNombre & " " & TxtApellidos
    Else
        CadenaNombre = TxtPeticionario
    End If

    'Jose. 25 10 2004. Un "SELECT * ..." sin cláusula WHERE o sin cláusula TOP debería estar terminantemente prohíbido a menos
    'que sea estrictamente necesario (cuando se muestran muchos registros con todos o casi todos los campos)
    'USAR "TOP 1" SIEMPRE QUE SE VAYA A AÑADIR UN NUEVO REGISTRO CON .addnew
    'Call mClsPresupuestos.PueblaRecordset(RsEnvio, "SELECT * FROM EnvioPresupuesto", False)
    Call mClsPresupuestos.PueblaRecordset(RsEnvio, "SELECT TOP 1 * FROM EnvioPresupuesto", False)

    If SendFax(m_LoginFax, TxtFax, CadenaNombre, "", "", CuerpoMail, DocumentoPresupuesto, DocumentosPlantilla1, DocumentosPlantilla2, DocumentosPlantilla3, DocumentosPlantilla4, DocumentosPlantilla5, DocumentosPlantilla6, DocumentosPlantilla7, DocumentosPlantilla8, DocumentosPlantilla9, DocumentosPlantilla10) = True Then
        MsgBox "Fax enviado"
        RsEnvio.AddNew
        RsEnvio!IdPresupuesto = m_IDPresupuesto
        RsEnvio!FechaEnvio = Date
        RsEnvio!HoraEnvio = Time

        If DocumentoP = 1 Then
            RsEnvio!DocumentoP = "Presupuesto"
        Else
            RsEnvio!DocumentoP = ""
        End If

        If Len(DocumentosPlantilla1) > 0 Then
            RsEnvio!Documento1 = DocumentosPlantilla1
        Else
            RsEnvio!Documento1 = ""
        End If

        If Len(DocumentosPlantilla2) > 0 Then
            RsEnvio!Documento2 = DocumentosPlantilla2
        Else
            RsEnvio!Documento2 = ""
        End If

        RsEnvio!Email = ""
        RsEnvio!Fax = TxtFax
        RsEnvio!TipoEnvio = "Fax"
        RsEnvio.Update

    Else
        MsgBox "Error"
    End If

    RsEnvio.Close
    Set RsEnvio = Nothing

End Sub

Private Sub CmdHojaDatos_Click()
    'Obtenemos el ID de la entrada de la agenda que se corresponde con el presupuesto activo y lo guardamos en la
    'variable m_IDAgendaComercial que utiliza el formulario de la hoja de datos para actualizar sus datos.
    Dim RsAg As New Recordset
    Call mClsAgendaComercial.PueblaRecordset(RsAg, "SELECT IdAgenda, IdHojaDatos, NombreObra FROM AgendaComercial WHERE IdPresupuesto = " & m_IDPresupuesto, True)
    m_IDAgendaComercial = 0
    m_IdHojaDatos = 0
    If RsAg.RecordCount > 0 Then
        m_IDAgendaComercial = RsAg!IdAgenda
        If VarType(RsAg!IDHojaDatos) <> vbNull Then
            m_IdHojaDatos = RsAg!IDHojaDatos
        End If
    End If
    
    RsAg.Close
    Set RsAg = Nothing
    
    m_IDCliente = IDClientePresupuesto
    If m_IdHojaDatos < 1 Then
        If Not Pregunta("El Presupuesto no tiene Hoja de Datos ¿Desea crearla ahora?") Then
            Exit Sub
        End If
    End If
    
    Call FrmMUnaHojaDatos.Show
    
    If m_IdHojaDatos < 1 Then
        HojaDatosNueva = True
        Call FrmMUnaHojaDatos.ActivarFormulario(True)
    Else
        Call FrmMUnaHojaDatos.ActivarFormulario(False)
        'HojaDatosDesdeGestion = False
    End If
    Call FrmMUnaHojaDatos.SetFocus
End Sub

Public Sub CmdImprimir_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba el valor del parametro Index y dependiendo de su valor abr un documento de Word o de Excel al que hace
'   referencia una caja de texto del formulario.
'   Tambien dependiendo del valor de Index ejecuta varios procedimientos a los cuales les llama con diferentes
'   parametros dependiendo de Index
'
'PARAMETROS :
'   Index  --> Parametro que indica las operaciones a realizar
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si el elemento seleccionado del Combo tiene el indice 25 o si no hay ninguno selecionado y llama al
'      procedimiento CalcularFormaPago
'   2) Si Index es 0 ó 2 pone ImpDocumento = .T.
'   3) Si ImpDocumento = .T.
'      -Comprueba que hemos seleccionado un fichero de Word y comprueba que existe
'      -Nos pide un numero de plantilla
'       -Si es 1, comprueba en la variable "WordDoc(0)" que el documento seleccionado es un documento de Word y
'        lo abre y lo imprime
'        Comprueba si es un documento de excel y lo abre y lo imprime
'        Sino es ninguno de los formatos nos da un mensaje de error y se sale
'       -Si es 1, comprueba en la variable "WordDoc(1)" que el documento seleccionado es un documento de Word y
'        lo abre y lo imprime
'        Comprueba si es un documento de excel y lo abre y lo imprime
'        Sino es ninguno de los formatos nos da un mensaje de error y se sale
'   4)
'      -Si Index = 3 llama a ArrImpresionPresup
'      -Si es distinto de 4 y de 5, crea un recordset de la tabla "DetallePresupuesto" seleccionando los registros
'       en que IdPresupuesto sea igual al valor de la variable global que indica el presupuesto actual m_IdPresupuesto
'      -Si tiene datos el recordset llama a PresupuestoGeotecnico y sino a ArrImpresionPresup
'      -Si Index = 4 llama a ArrImpresionPresup
'      -Si Index = 5 llama a ArrImpresionPresup
'
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    Dim RsSucursales As New Recordset
    Dim RsDominio As New Recordset
    Dim Codigo As Recordset
    Dim PresupuestoPadre As Integer

    Call CrearDirTemp
    Dim ImpDocumento As Boolean

    '    If CmbFormaPago.ListIndex = 25 Or CmbFormaPago.ListIndex < 0 Then
    '        CmbFormaPago.ListIndex = 0
    '        'Call CalcularFormaPago(m_IDPresupuesto)
    '    End If
    If CmbFormaPago.ListIndex < 0 Then
        CmbFormaPago.ListIndex = 0
        'Call CalcularFormaPago(m_IDPresupuesto)
    End If

    If Index = 0 Or Index = 2 Then
        ImpDocumento = True
    End If
    
    If ImpDocumento Then
        Call mClsDocumento.PueblaRecordset(RsDocumentos, "SELECT * FROM documentos WHERE IdPresupuesto = " & m_IDPresupuesto, True)

        If RsDocumentos.EOF Then
            Alerta ("Este presupuesto no tiene Plantillas")
            Exit Sub
        End If

        'If WordDoc(0) = "" Then
        '    Alerta ("Debe especificar un fichero.")
        '    Exit Sub
        'End If
        
        If Dir(m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & RsDocumentos!Nombre) = "" Then
            Alerta ("El fichero " & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & RsDocumentos!Nombre & " no existe.")
            Exit Sub
        End If

        '        If Dir(m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)) = "" Then
        '            Alerta ("El fichero " & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & " no existe.")
        '            Exit Sub
        '        End If
        
        Do While RsDocumentos.EOF = False

            'Dim sResp As String
            'sResp = InputBox("Especifique un número de Plantilla: 1-2", "InsertarNúmeroPlantilla", "", , , App.HelpFile, 30)
            'sResp = Trim(sResp)
            'If sResp & "" = "" Then
            ' Exit Sub
            'ElseIf sResp = 1 Then
            'modificación
            If Mid(RsDocumentos!Nombre, Len(RsDocumentos!Nombre) - 2) = "doc" Then '' documento word
                '            If Mid(WordDoc(0), Len(WordDoc(0)) - 2) = "doc" Then '' documento word
                'fin modificación
                Dim ObjWord As Object
                Dim ObjDoc As Object
                
                On Error Resume Next
                Set ObjWord = GetObject(, "Word.Application")
                If Err.Number > 0 Then
                    Set ObjWord = CreateObject("Word.Application")
                End If
                On Error GoTo 0
                
                'Abrir documento.
                ObjWord.Visible = True
                ObjWord.Activate
                ObjWord.Documents.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & RsDocumentos!Nombre

                '                ObjWord.Documents.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)
                If ChkPresPreliminar(0) Then
                    ObjWord.ActiveDocument.PrintPreview
                Else
                    ObjWord.ActiveDocument.PrintOut
                End If

                Set ObjWord = Nothing
                ' modificacion
            ElseIf Mid(RsDocumentos!Nombre, Len(RsDocumentos!Nombre) - 2) = "xls" Then  '' documento excel
                '            ElseIf Mid(WordDoc(0), Len(WordDoc(0)) - 2) = "xls" Then  '' documento excel
                Dim objExcel As Object
                Dim objLibro As Object
                
                On Error Resume Next
                Set objExcel = GetObject(, "Excel.Application")
                If Err.Number > 0 Then
                    Set objExcel = CreateObject("Excel.Application")
                End If
                On Error GoTo 0
                
                objExcel.Visible = True
                'objExcel.ActiveSheet
                objExcel.Workbooks.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & RsDocumentos!Nombre

                '                objExcel.Workbooks.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)
                If ChkPresPreliminar Then
                    objExcel.ActiveWorkbook.PrintPreview
                Else
                    objExcel.ActiveWorkbook.PrintOut
                End If

                Set objExcel = Nothing
            Else
                Call Informacion("Extensión de fichero no reconocida.")
            End If

            RsDocumentos.MoveNext
        Loop

        RsDocumentos.Close
        Set RsDocumentos = Nothing
        '
    End If
    
    ' fin modificacion
    Dim PresPreliminar As Integer

    If Index = 4 Or Index = 5 Then
        PresPreliminar = ChkPresPreliminar(1)
    Else
        PresPreliminar = ChkPresPreliminar(0)
    End If

    'Jose. 16 8 2006. Variable global y campo nuevo en la tabla Sucursales para sustituir texto que aparece en los presupuestos
    'y que estaba puesto a pelo.
    m_TextoPresup = DameExpresion("Codigo", m_CodigoEmpresa, "Sucursales", "TextoPresupuesto")
    '-------------------------------------------------------------------------------------------------------------------------

    Dim Reg As New Recordset
    Dim GeotecnicoNuevo As Boolean

    If m_FormatoFactura = "L" Then
    
        If Index = 3 Then

            'Call ArrImpresionPresup(Me, (ChkPresPreliminar.Value = 1), sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), CadenaADouble(TxtIVA), OptMostrar(0).Value, True)
           Call ArrImpresionPresup(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True)

        ElseIf Index <> 4 And Index <> 5 Then
            '''''' si tiene referencia en detalle presupuestos
            Call mClsPresupuestos.PueblaRecordset(Reg, "SELECT * FROM DetallePresupuesto WHERE IdPresupuesto = " & m_IDPresupuesto)

            If Not Reg.EOF Then
                Call PresupuestoGeotecnico(Me, (PresPreliminar = 1), sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, CadenaADouble(TxtIVA.Text), CadenaADouble(TxtBfoIndustrial.Text), CadenaADouble(TxtGastosGenerales), TxtNota)
            Else
                Call ArrImpresionPresup(Me, (PresPreliminar = 1), m_TextoPresup & sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), CadenaADouble(TxtIVA), OptMostrar(0).Value)
            End If

            'Reg.Close
            'Set Reg = Nothing
        ElseIf Index = 4 Then
            
            Call ArrImpresionPresup(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, RsMant(2)!NombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(RsMant(2)!FechaEmision), "d") & " de " & Format(CDate(RsMant(2)!FechaEmision), "mmmm") & " de " & Format(CDate(RsMant(2)!FechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True)

        ElseIf Index = 5 Then 'Imprimir Presupuesto Global
            
            Call ArrImpresionPresup(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, True)
            
        End If
        
    Else

        If Index = 4 Then 'Jose. 11 8 2005. Impresion de Ampliaciones para Intec
            Call ArrImpresionPresupAmplIntec(Me, (PresPreliminar), sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, (ChkLogotipo.Value))
        ElseIf Index = 3 Then
            Call ArrImpresionPresupIntec(0, Me, (PresPreliminar), sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, (ChkLogotipo.Value))
        Else
            Call ArrImpresionPresupIntec(0, Me, (PresPreliminar), sTxtCodigo & " / " & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, False, (ChkLogotipo.Value))
        End If
        
        'Me.SetFocus
    End If
    
End Sub

Private Sub CmdImprimirPantalla_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Imprime el formulario FrmUnPresupuesto
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2006/10     Jose    Añadido control de errores.
'
'DOCF FIN -------------------------------------------------------------
    'Jose. 11 10 2006. Control de errores añadido.
    On Error GoTo error
    FrmMUnPresupuesto.PrintForm
    Exit Sub
error:
    Alerta ("No se pudo imprimir. " & vbCrLf & Err.Description)
End Sub

Private Sub CmdImprimirWord_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un objeto de la clase ClsDocumento y asigna a sus propiedades diferentes valores.
'   Plantilla de Word de la que leer la matriz
'   Tabla a la que debe hacer referencia
'   Presupuesto seleccionado
'   Y llama al Evento IniciarProceso de la clase ClsDocumento
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim mObjDoc As New ClsDocumento
    
    If CmbMatrices.ListIndex = -1 Then
        Alerta ("Debe seleccionar una matriz.")

        Exit Sub
    End If
    
    mObjDoc.DocumentoDestino = ""
    mObjDoc.PlantillaWord = m_DirPlantillas & "\Matrices\" & CmbMatrices.Text
    Set mObjDoc.Tabla = mClsPresupuestos
    mObjDoc.IdPresupuesto = m_IDPresupuesto
    
    Call mObjDoc.IniciarProceso

End Sub

Private Sub CmdIrCliente_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que hemos seleccionado un cliente para el presupuesto y asigna ese cliente a la varia global
'   m_IdCliente
'   Carga el formulario FrmMUnCliente y visualiza los datos del cliente que tiene el IdCliente = m_IdCliente
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If IDClientePresupuesto = -1 Then
        Alerta ("Debe seleccionar un cliente para el presupuesto.")
        
        Exit Sub
    End If
    m_IDCliente = IDClientePresupuesto
    
    FrmMUnCliente.MTab.Tab = 0
    FrmMUnCliente.Show
    FrmMUnCliente.SetFocus

End Sub

Private Sub CmdIrColaborador_Click(Index As Integer)
    'Jose. 22 5 2007. Ahora NO SE VE LA CLAVE. Antes usaba un InputBox.
    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para acceder al formulario de colaboradores."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
    sResp = Trim(login)
    If sResp & "" = "" Then
        Exit Sub
    End If
    
    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & login & "'")
    If RsAbierto(Rs) Then 'Jose. 22 5 2007. Comprueba si está abierto y además si tiene algún registro.
        FrmMColaborador.Show
        FrmMColaborador.SetFocus
        Rs.Close 'Jose. 22 5 2007. Aquí sabemos que está abierto.
    Else
        Call Informacion("La Clave no es correcta.")
    End If
    Set Rs = Nothing

End Sub

Private Sub CmdIrCompañiaSeguros_Click(Index As Integer)
    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para acceder a las Comañías de Seguros."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
    sResp = Trim(login)
    If sResp & "" = "" Then
        Exit Sub
    End If
    
    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")

    If Rs.RecordCount > 0 Then
        FrmMSeguros.Show
        FrmMSeguros.SetFocus
    Else
        Call Informacion("La Clave no es correcta.")
    End If
    Rs.Close
    Set Rs = Nothing

End Sub

Private Sub CmdIrCorredorSeguros_Click(Index As Integer)
    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para acceder a los Corredores de Seguros."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
    sResp = Trim(login)
    If sResp & "" = "" Then
     Exit Sub
    End If
    
    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")

    If Rs.RecordCount > 0 Then
        FrmMCorredor.Show
        FrmMCorredor.SetFocus
    Else
        Call Informacion("La Clave no es correcta.")
    End If
    Rs.Close
    Set Rs = Nothing

End Sub


Private Sub CmdIrMarcas_Click()
    FrmMPresMarcas.Show 1
End Sub

Private Sub CmdIrObra_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba si el boton CmdAceptar esta deshabilitado (lo que quiere decir que el
'   presupuesto está aceptado y por tanto tiene una obra asociada) y si es asi llama
'   al formulario FrmMUnaObra, y activa la primera solapa del control Tab.
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/09     Jose     Modificaciones. Copiado de LabelAceptado_Click().
'
'DOCF FIN -------------------------------------------------------------

    If Not CmdAceptar.Enabled Then
        FrmMUnaObra.MTab.Tab = 0
        FrmMUnaObra.Show
        FrmMUnaObra.SetFocus
    End If

End Sub

Private Sub CmdIrOCT_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Nos pide una clave para acceder a Tipos OCT y si es correcta nos muestra el formulario FrmMTiposOCT
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para acceder a los tipos de OCT."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
   'FrmLogin.TxtLogin.SetFocus
    sResp = Trim(login)
    If sResp & "" = "" Then
     Exit Sub
    End If
    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")

    If Rs.RecordCount > 0 Then
        FrmMTiposOCT.Show
        FrmMTiposOCT.SetFocus
    Else
        Call Informacion("La Clave no es correcta.")
    End If
    Rs.Close
    Set Rs = Nothing
End Sub

Private Sub CmdIrSubtipo_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Nos pide una clave para acceder a Tipo de Presupuestos y si es correcta nos muestra el formulario
'   FrmMSubtiposPresupuesto
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para acceder al Tipo de presupuestos."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
    'FrmLogin.TxtLogin.SetFocus
    sResp = Trim(login)

    If sResp & "" = "" Then
        Exit Sub
    End If

    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")

    If Rs.RecordCount > 0 Then
        FrmMSubtiposPresupuesto.Show
        FrmMSubtiposPresupuesto.SetFocus
    Else
        Call Informacion("La Clave no es correcta.")
    End If

    Rs.Close
    Set Rs = Nothing
End Sub

Private Sub CmdIrTipoPresupuesto_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Nos pide una clave para acceder a Tipo de Presupuestos y si es correcta nos muestra el formulario
'   FrmMTiposPresupuesto
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para acceder al Tipo de presupuestos."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
   'FrmLogin.TxtLogin.SetFocus
    sResp = Trim(login)
    If sResp & "" = "" Then
     Exit Sub
    End If
    Dim Rs As New Recordset
    Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")

    If Rs.RecordCount > 0 Then
        FrmMTiposPresupuesto.Show
        FrmMTiposPresupuesto.SetFocus
    Else
        Call Informacion("La Clave no es correcta.")
    End If
    Rs.Close
    Set Rs = Nothing
End Sub

Private Sub CmdMail_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Envia un presupuesto por correo electronico al cliente utilizando el Dato de Email proporcionado
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Pide informacion sobre los docuemntos que se van a adjuntar al Email y el cuerpo del mail, que
'      puede ser de tres tipos: Presupuesto, Plan de control o Libre (el texto sera escrito por el usuario)
'   2) Dependiendo del tipo de cuerpo genera una variable string con el texto a enviar
'   3) Segun si el Email lleva un unico documento adjunto o lleva varios utiliza diferentes funciones
'      para adjuntar los archivos
'      Un documento --> EnviarMAPIMail
'      Varios documentos --> EnviarMAPIMailVarios
'   4) Enviado el Mail crea un registro en la solapa Envio con la informacion del Mail enviado (Hora, Dia, cliente,
'      documentos adjuntos)
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2004/02     HDT     Envio de Presupuestos por Email.
'
'DOCF FIN -------------------------------------------------------------

    Dim UnidadApp As String
    Dim iret As Variant
    Dim CuerpoMail As String

    'Dim DocumentosAdjuntos As String
    Dim Resp As String
    Dim Resp1 As String
    Dim Resp2 As String
    Dim RsEnvio As New Recordset

    If TxtEmail.Text = "" Then
        MsgBox "La Direccion de Email no puede estar vacia"
        Set RsEnvio = Nothing 'Jose. 8 8 2006. Cosas de la programación no estructurada y los Exit Sub.
        Exit Sub
    End If

    FrmEnvioP.Show 1

    If EnvioCancelado = 1 Then
        Set RsEnvio = Nothing 'Jose. 8 8 2006. Cosas de la programación no estructurada y los Exit Sub.
        Exit Sub
    End If

    'TOP 1 añadido por Jose. 3 2 2005. IMPORTANTE. Si la consulta es para añadir un nuevo registro, como en este caso, lo OPTIMO es
    'devolver solo un registro (nos da igual cual).que nos vale para tener todos los campos
    Call mClsPresupuestos.PueblaRecordset(RsEnvio, "SELECT TOP 1 * FROM EnvioPresupuesto", False)

    If Dir("C:\Temp\Presupuesto.pdf", vbArchive) <> "" Then
        Kill ("C:\Temp\Presupuesto.pdf")
    End If

    If DocumentoP = 1 Then
        Call CmdPDF_Click(1)

        DocumentosAdjuntos = m_Unidad & "\Temp\Presupuesto.pdf;" & DocumentosAdjuntos

        If Dir("C:\Temp\Presupuesto.pdf") = "" Then
            MsgBox ("El proceso ha sido cancelado, no hay presupuesto adjunto")
            Exit Sub
        End If
    End If
    
    If Left(UCase(m_NombreDominio), 9) = "DOMINIO_L" Then
        If CPresupuesto = 1 Then
            CuerpoMail = "Adjunto, remito presupuesto solicitado de la obra de referencia." & vbCrLf
            CuerpoMail = CuerpoMail & "Rogaría, en caso de aceptación confirmarlo por fax enviándonos las hojas del presupuesto firmadas. "
            CuerpoMail = CuerpoMail & "Muchas gracias." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Un saludo:"
        ElseIf CPlan = 1 Then
            CuerpoMail = "Adjunto, remito plan de control de calidad para la obra de referencia." & vbCrLf & vbCrLf
            CuerpoMail = CuerpoMail & "Un saludo:"
        Else
            CuerpoMail = Cuerpo
            CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Un saludo:"
        End If

    Else

        If CPresupuesto = 1 Then
            If UCase(m_NombreDominio) = "DOMINIO_I" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 91 395 21 94 o mediante fax 91 451 42 97." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            ElseIf UCase(m_NombreDominio) = "DOMINIO_IM" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 952 10 54 48 o mediante fax 952 10 56 86." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            ElseIf UCase(m_NombreDominio) = "DOMINIO_IS" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 9 542 607 78 o mediante fax 9 545 136 31." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            ElseIf UCase(m_NombreDominio) = "DOMINIO_IV" Then
                CuerpoMail = "Muy Sres. nuestros:" & vbCrLf
                CuerpoMail = CuerpoMail & "Adjunto, conforme a sus deseos, les remitimos presupuesto de sus obras de referencia, para los trabajos de nuestra especialidad." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Para cualquier consulta o dato adicional, que precisen, no duden en ponerse en contacto con nosotros por"
                CuerpoMail = CuerpoMail & "este mismo medio o en nuestro teléfono 9 635 248 49 o mediante fax 9 634 415 70." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "En caso de aceptación, rogamos nos devuelvan firmada la correspondiente conformidad. Igualmente "
                CuerpoMail = CuerpoMail & "agredeceríamos que nos cumplimentaran los datos de la forma de pago." & vbCrLf & vbCrLf
                CuerpoMail = CuerpoMail & "Sin otro particular, reciban un cordial saludo."
            End If

        ElseIf CPlan = 1 Then
    
        Else
            CuerpoMail = Cuerpo
            CuerpoMail = CuerpoMail & vbCrLf & vbCrLf & "Sin otro particular, reciban un cordial saludo."
        End If
    End If

    'If Documento1 = 1 Then
    '   If DocumentosAdjuntos <> "" Then
    '        If Documento2 = 0 Then
    '            DocumentosAdjuntos = DocumentosAdjuntos & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)
    '        Else
    '            DocumentosAdjuntos = DocumentosAdjuntos & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & ";"
    '        End If
    '   Else
    '    DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & ";"
    '   End If
    ''Else
    ''  DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & ";"
    'End If
    '
    'If Documento2 = 1 Then
    '   If DocumentosAdjuntos <> "" Then
    '    DocumentosAdjuntos = DocumentosAdjuntos & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)
    '   Else
    '    DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1) & ";"
    '   End If
    ''Else
    ''  DocumentosAdjuntos = m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1) & ";"
    'End If

    If EnviarMAPIMailVarios(TxtEmail, , , "Presupuesto", CuerpoMail, DocumentosAdjuntos) = True Then
        MsgBox "Correo enviado"
        RsEnvio.AddNew
        RsEnvio!IdPresupuesto = m_IDPresupuesto
        RsEnvio!FechaEnvio = Date
        RsEnvio!HoraEnvio = Time

        If DocumentoP = 1 Then
            RsEnvio!DocumentoP = "Presupuesto"
        Else
            RsEnvio!DocumentoP = ""
        End If

        RsEnvio!Documento1 = ""
        RsEnvio!Documento2 = ""
        RsEnvio!Email = TxtEmail
        RsEnvio!Fax = ""
        RsEnvio!TipoEnvio = "Email"
        RsEnvio.Update
    End If

    RsEnvio.Close
    Set RsEnvio = Nothing
End Sub

Private Sub CmdModificar_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba si podemos modificar registros y dependiendo de la solapa en la que estemos nos bloquea el registro
'   para su modificacion o nos carga otro formulario llamado FrmMUnPresLinea
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si tiene permiso para modificar registros y tambien comprueba que puedes modificar presupuestos
'      finalizados
'   2) Comprueba si la solapa actual es la de "Porcentajes" y si el usuario que ha entrado no tiene permisos
'      Si es asi deshabilita varias cajas de texto y nos indica que no tenemos permiso para modificar
'   3) Si la solapa actual es una de las tres primeras o es la de "Facturacion" o "Porcentaje" entonces
'      -Crea un recordset de presupuesto con el presupuesto que tenga m_IDPresupuesto y compruab si esta bloqueado por
'       otro usuario y sino es asi lo bloquea
'      Sino, si la solapa seleccionada es la de "Tarifas" carga varios datos en variables globales y activa el
'      formulario FrmMUnPresLinea
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If Not mp_Modificar Then
        Alerta ("No tiene permiso para modificar registros.")
    
        Exit Sub
    End If
'    ElseIf LabelAceptado.Visible = True Then
'        If m_LoginUsuario = "juanjo" Or m_LoginUsuario = "ADMINISTRADOR" Then
'            Dim sResp As String
'            sResp = InputBox("Especifique una clave para eliminar el presupuesto.", "InsertarClave", "", , , App.HelpFile, 30)
'            sResp = Trim(sResp)
'            If sResp & "" = "" Then
'             Exit Sub
'            End If
'            Dim Rs As New Recordset
'            Call mClsConfiguracion.PueblaRecordset(Rs, "SELECT Login FROM Configuracion WHERE Login = '" & sResp & "'")
'
'            If Rs.RecordCount > 0 Then
'
'            Else
'                Call Informacion("La Clave no es correcta.")
'                Exit Sub
'            End If
'            Rs.Close
'            Set Rs = Nothing
'        End If
'    Else
'        Alerta ("No se puede modificar el presupuesto porque ya está aceptado.")
'
'        Exit Sub
'    End If
'    If mp_PreciosUnitarios = True Then
'        ChkPreciosUnitarios.Enabled = True
'    End If
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If
    
    If Trim(TxtFechaTerminado.Text) <> "" And Not mp_ModObrasYPresup Then
        Alerta ("No tiene permiso para modificar un presupuesto finalizado.")
        Exit Sub
    End If
    If MTab.Tab = 6 And (UCase(m_LoginUsuario) = "JUANJO" Or UCase(m_LoginUsuario) = "ADMINISTRADOR" Or UCase(m_LoginUsuario) = "ALBERTO") And NoNumNulo(TxtPA(0)) <> 0 And NoNumNulo(TxtPA(1)) <> 0 And NoNumNulo(TxtPA(2)) <> 0 And NoNumNulo(TxtPA(3)) <> 0 Then
        If Not SePuedeModificar(True) Then
            Exit Sub
        End If
        TxtPA(0).Enabled = False
        TxtPA(1).Enabled = False
        TxtPA(2).Enabled = False
        TxtPA(3).Enabled = False
        Call Informacion("No tiene permiso para modificar estos registros.")
    Else
        If MTab.Tab < 3 Or MTab.Tab = 5 Or MTab.Tab = 6 Or MTab.Tab = 7 Then
            If Not SePuedeModificar(True) Then
                Exit Sub
            End If
            'Abrimos el recordset de Presupuestos.
            Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT Aceptado, RegistroBloqueado FROM Presupuestos WHERE IdPresupuesto = " & m_IDPresupuesto, False) 'Jose. 5 11 2003. Antes 'SELECT * FROM...'
            If RsPresupuesto!Aceptado = 1 Then
                ChkPreciosUnitarios.Enabled = False
            Else
                ChkPreciosUnitarios.Enabled = True
            End If
           
            
            'Bloqueamos el registro si se puede.
            If Not Bloquear(RsPresupuesto) Then
                RsPresupuesto.Close
                Alerta ("El registro está siendo modificado por otro usuario.")
            
                Exit Sub
            End If
            RegistroBloqueado = True
            
            RsPresupuesto.Close
            'DBEngine.Idle dbFreeLocks
            
            'Establecemos que se trata de la edición de un registro
            EnEdicion = True
            NuevoRegistro = False
        
            'Activamos los controles de edición
            ActivarControlesEdicion
        Else
            If MTab.Tab = 3 Then
                'Modificamos la linea actual de presupuesto.
                m_IDPyT = RsMant(0)!IDPYT
                FrmMUnPresLinea.TxtTotal.Text = TxtTotal(0).Text
                FrmMUnPresLinea.ActivarFormulario
                
                'Actualizamos el formulario.
                ActualizarFormulario
            End If
        End If
    End If
  
End Sub

Private Sub CmdNuevo_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba si podemos dar de alta registros y dependiendo de la solapa en la que estemos nos prepara los controles
'   del formulario para dar de lata un registro
'
'PARAMETROS :
'   Index  --> Indice del array de CommandButton
'
'RETORNO :
'
'PROCESO :
'   1) Si la solapa es una de las tres primeras prepara los controles del formulario para dar de alta un nuevo
'      registro
'   2) Si la solapa es la de "Ampliacion" llama a la funcion CopiarAmplicacion y actualiza el Grid correspondiente
'   3) Si la solapa actual no es una de las anteriores llama al formulario FrmMUnPresLinea
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    'Si 1:Uds, 2:Presupuesto, 3: Mixto
    'AmpliarUnidades = index
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If
    
    If Not mp_Altas Then
        Alerta ("No tiene permiso para añadir registros.")
    
        Exit Sub
    End If
    
    If MTab.Tab < 3 Then
        'Limpiamos el contenido de los controles
        'TxtDesc.Text = ""
        IDClientePresupuesto = -1
        PresupuestoAceptado = False
        LabelAceptado.Visible = False
        CmdIrObra.Visible = False
'        TxtPeticionario.Text = DameExpresion("IDCliente", IDClientePresupuesto, "Clientes", "Cliente")
        TxtPeticionario.Text = ""
        TxtNombreObra.Text = ""
        CmbSubtipo.Text = ""
        ChkOCT.Value = 0
        CmbOCT.Visible = False
        TxtTotal(0).Text = ""
        TxtTotal(1).Text = ""
        TxtTotal(2).Text = ""
        
        TxtNombre.Text = ""
        TxtObservaciones.Text = ""
        TxtNota.Text = ""
        
        TxtTelefono.Text = ""
        TxtFax.Text = ""
        TxtMovil.Text = ""
        
        TxtDireccion.Text = ""
        TxtCP.Text = ""
        ChkSeguimiento.Value = 0
        ChkPreciosUnitarios.Value = 0
        ChkOcultar.Value = 0
        TxtPoblacion.Text = ""
        TxtProvincia.Text = ""
        
        CmbPConcepto.ListIndex = 0
        
        TxtApellidos.Text = ""
        TxtAnyo.Text = CStr(Year(Date))
        TxtImporteAval.Text = ""
        CmbTipo.ListIndex = 0
        CmbSucursal.ListIndex = BuscaItemData(CmbSucursal, DameExpresion("Codigo", Val(m_CodigoEmpresa), "SUCURSALES", "IdSucursal"))
        ' Sólo se puede modificar la sucursal con permiso.
        CmbSucursal.Enabled = mp_Sucursales
        TxtDon.Text = ""
        TxtMeses = "0"
        TxtDescuento.Text = "0"
        TxtIVA.Text = "0"
        CmbAvisoGeotecnico.ListIndex = 0
        ChkGastosYBfo.Value = 0
        TxtGastosGenerales.Text = ""
        TxtBfoIndustrial.Text = ""
        
        OptMostrar(0).Value = True
        OptMostrar(1).Value = False
        
        Me.Caption = "Presupuesto - Nuevo Presupuesto"
        
        TxtFechaEmision.Text = LeeFecha(Date)
        TxtFechaAceptacion.Text = ""
        TxtFechaTerminado.Text = ""
        CmbFechaFactura.Text = ""
'        CmbVerbal.ListIndex = 0
        CmbTipoAceptacion.ListIndex = 0
        
'        'Jose. 14 10 2003. Presupuestos OCT. Añadido.
'        MTab.TabVisible(8) = False
    
        'Establecemos que se trata de la adición de un registro
        EnEdicion = True
        NuevoRegistro = True
    
        'Activamos los controles de edición
        ActivarControlesEdicion
    Else
        If MTab.Tab = 7 Then ' Ampliación del presupuesto
            'If index = 1 And LabelAceptado.Visible = True Then 'Ampliar Unidades, Comprobar si existe el presupuesto
'                Dim RsAmpliar As New Recordset
'                Call mClsPresupuestos.PueblaRecordset(RsAmpliar, "SELECT Presupuestos.IDPresupuesto FROM Presupuestos INNER JOIN  PresupuestosAmpliacion ON   Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo WHERE (Presupuestos.Ampliacion = 1) AND (Presupuestos.AmpliarUnidades = 1)and (IdPresupuestoPadre=" & m_IDPresupuesto & ") ")
'                If Not RsAmpliar.EOF Then
'                    'Abrir el presupuesto con la tarifas del padre
'                    Dim PrespAux As Long
'                    PrespAux = m_IDPresupuesto
'                    m_IDPresupuesto = RsAmpliar!IDPresupuesto
'                    FrmMDetPresupuesto.Caption = Me.Caption
'                    Call FrmMDetPresupuesto.ActivarFormulario(CadenaADouble(TxtDescuento), False)
'                    m_IDPresupuesto = PrespAux
'                Else 'Crear una ampliación nueva
                    If CopiarAmpliacion(TxtNombreObra.Text, m_IDPresupuesto, Index) Then
                        Call ActualizarDbGrid(2)
                    End If
'                End If
'                RsAmpliar.Close
'                Set RsAmpliar = Nothing
'            ElseIf LabelAceptado.Visible = True Then
'                If CopiarAmpliacion(TxtNombreObra.Text, m_IDPresupuesto, index) Then
'                    Call ActualizarDbGrid(2)
'                End If
'
'            End If
            
        Else
            'Pedimos una nueva linea de presupuesto.
            Do
                m_IDPyT = -1
                FrmMUnPresLinea.TxtTotal.Text = TxtTotal(0).Text
                FrmMUnPresLinea.ActivarFormulario
                
                'Actualizamos el formulario.
                ActualizarFormulario
            Loop Until m_IDPyT = -1
        End If
    End If
End Sub

Private Sub CmdPColab_Click()
    Dim sResp As String
    Load FrmLogin
    sResp = "Especifique una clave para abrir el formulario de colaboradores."
    FrmLogin.Label1.Caption = sResp
    FrmLogin.Show 1
    sResp = Trim(login)
    If sResp <> "listar" Then
      Alerta ("Clave incorrecta.")
      Exit Sub
    End If
    FrmPorcenColab.Show
End Sub

Private Sub CmdPDF_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba el valor del parametro Index y dependiendo de su valor abre un documento de Acrobat al que hace
'   referencia una caja de texto del formulario.
'   Tambien dependiendo del valor de Index ejecuta varios procedimientos a los cuales les llama con diferentes
'   parametros dependiendo de Index
'
'PARAMETROS :
'   Index  --> Parametro que indica las operaciones a realizar
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si el elemento seleccionado del Combo tiene el indice 25 o si no hay ninguno selecionado y llama al
'      procedimiento CalcularFormaPago
'   2) Si Index es mayor que 0 pone ImpDetalle = .T. y si Index es 0 ó 2 pone ImpDocumento = .T.
'   3) Si ImpDocumento = .T.
'      -Comprueba que hemos seleccionado un fichero de Word y comprueba que existe
'      -Nos pide un numero de plantilla
'       -Si es 1, comprueba en la variable "WordDoc(0)" que el documento seleccionado es un documento de Word y
'        lo abre y lo imprime
'        Comprueba si es un documento de excel y lo abre y lo imprime
'        Sino es ninguno de los formatos nos da un mensaje de error y se sale
'       -Si es 1, comprueba en la varible "WordDoc(1)" que el documento seleccionado es un documento de Word y
'        lo abre y lo imprime
'        Comprueba si es un documento de excel y lo abre y lo imprime
'        Sino es ninguno de los formatos nos da un mensaje de error y se sale
'   4) Si ImpDetalle = .T.
'      -Si Index = 3 llama a ArrImpresionPresuppdf
'      -Si es distinto de 4 y de 5, crea un recordset de la tabla "DetallePresupuesto" seleccionando los registros
'       en que IdPresupuesto sea igual al valor de la variable global que indica el presupuesto actual m_IdPresupuesto
'      -Si tiene datos el recordset llama a PresupuestoGeotecnico y sino a ArrImpresionPresuppdf
'      -Si Index = 4 llama a ArrImpresionPresuppdf
'      -Si Index = 5 llama a ArrImpresionPresuppdf
'
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2004/01     HDT     Modificacion para el envio de presupuestos.
'
'DOCF FIN -------------------------------------------------------------
    
    Dim RsSucursales As New Recordset
    Dim RsDominio As New Recordset
    Dim Codigo As Recordset
    Dim PruebaPdf As Long

    Call CrearDirTemp
    Dim ImpDetalle As Boolean
    Dim ImpDocumento As Boolean

    'If CmbFormaPago.ListIndex = 25 Or CmbFormaPago.ListIndex < 0 Then
    'CmbFormaPago.ListIndex = 0
    'Call CalcularFormaPago(m_IDPresupuesto)
    'End If
    If Index > 0 Then
        ImpDetalle = True
    End If

    If Index = 0 Or Index = 2 Then
        ImpDocumento = True
    End If
    
    If ImpDocumento Then
        If WordDoc(0) = "" Then
            Alerta ("Debe especificar un fichero.")
            Exit Sub
        End If

        If Dir(m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)) = "" Then
            Alerta ("El fichero  " & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & " no existe.")
        
            Exit Sub
        End If

        Dim sResp As String
        sResp = InputBox("Especifique un número de Plantilla: 1-2", "InsertarNúmeroPlantilla", "", , , App.HelpFile, 30)
        sResp = Trim(sResp)

        If sResp & "" = "" Then
            Exit Sub
        ElseIf sResp = 1 Then

            'modificación
            If Mid(WordDoc(0), Len(WordDoc(0)) - 2) = "doc" Then '' documento word
                'fin modificación
                Dim ObjWord As Object
                Dim ObjDoc As Object
                
                On Error Resume Next
                Set ObjWord = GetObject(, "Word.Application")
                If Err.Number > 0 Then
                    Set ObjWord = CreateObject("Word.Application")
                End If
                On Error GoTo 0
                
                'Abrir documento.
                ObjWord.Visible = True
                ObjWord.Activate
                ObjWord.Documents.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)

                If ChkPresPreliminar Then
                    ObjWord.ActiveDocument.PrintPreview
                Else
                    ObjWord.ActiveDocument.PrintOut
                End If

                Set ObjWord = Nothing
                ' modificacion
            ElseIf Mid(WordDoc(0), Len(WordDoc(0)) - 2) = "xls" Then  '' documento excel
                Dim objExcel As Object
                Dim objLibro As Object
                
                On Error Resume Next
                Set objExcel = GetObject(, "Excel.Application")
                If Err.Number > 0 Then
                    Set objExcel = CreateObject("Excel.Application")
                End If
                On Error GoTo 0
                
                objExcel.Visible = True
                'objExcel.ActiveSheet
                objExcel.Workbooks.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)

                If ChkPresPreliminar Then
                    objExcel.ActiveWorkbook.PrintPreview
                Else
                    objExcel.ActiveWorkbook.PrintOut
                End If

                Set objExcel = Nothing
            Else
                Call Informacion("Extensión de fichero no reconocida.")
            End If

        Else

            'modificación
            If Mid(WordDoc(1), Len(WordDoc(1)) - 2) = "doc" Then '' documento word
                'fin modificación
                'Abrir documento.
                ObjWord.Visible = True
                ObjWord.Activate
                ObjWord.Documents.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)

                If ChkPresPreliminar Then
                    ObjWord.ActiveDocument.PrintPreview
                Else
                    ObjWord.ActiveDocument.PrintOut
                End If

                Set ObjWord = Nothing
                ' modificacion
            ElseIf Mid(WordDoc(1), Len(WordDoc(1)) - 2) = "xls" Then  '' documento excel
                
                objExcel.Visible = True
                'objExcel.ActiveSheet
                objExcel.Workbooks.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)

                If ChkPresPreliminar Then
                    objExcel.ActiveWorkbook.PrintPreview
                Else
                    objExcel.ActiveWorkbook.PrintOut
                End If

                Set objExcel = Nothing
            Else
                Call Informacion("Extensión de fichero no reconocida.")
            End If
        End If
    End If

    ' fin modificacion
    Dim PresPreliminar As Integer

    If Index = 4 Or Index = 5 Then
        PresPreliminar = ChkPresPreliminar(1)
    Else
        PresPreliminar = ChkPresPreliminar(0)
    End If

    Dim Reg As New Recordset
    Dim GeotecnicoNuevo As Boolean

    If m_FormatoFactura = "L" Then
        'Call mClsSucursales.PueblaRecordset(RsSucursales, "SELECT codigo FROM sucursales")
        Call mClsDominios.PueblaRecordset(RsDominio, "SELECT NombreDominio FROM Dominios WHERE NombreDominio='DOMINIO_G'")

        ' If RsSucursales!Codigo = 3 Then
        If ImpDetalle Then
            If Index = 3 Then
                
                Call ArrImpresionPresupPDF(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, , ChkLogotipo.Value)

            ElseIf Index <> 4 And Index <> 5 Then
                '''''' si tiene referencia en detalle presupuestos
                    
                Call mClsPresupuestos.PueblaRecordset(Reg, "SELECT * FROM DetallePresupuesto WHERE IdPresupuesto = " & m_IDPresupuesto)

                If Not Reg.EOF Then
                                               
                    Call PresupuestoGeotecnicoPDF(Me, (PresPreliminar = 1), sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, CadenaADouble(TxtIVA.Text), CadenaADouble(TxtBfoIndustrial.Text), CadenaADouble(TxtGastosGenerales), TxtNota, ChkLogotipo.Value)
                    
                Else
                    Call ArrImpresionPresupPDF(Me, (PresPreliminar = 1), m_TextoPresup & sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), CadenaADouble(TxtIVA), OptMostrar(0).Value, , ChkLogotipo.Value)
            
                End If

                'Reg.Close
                'Set Reg = Nothing
            ElseIf Index = 4 Then
                
                    Call ArrImpresionPresupPDF(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, RsMant(2)!NombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(RsMant(2)!FechaEmision), "d") & " de " & Format(CDate(RsMant(2)!FechaEmision), "mmmm") & " de " & Format(CDate(RsMant(2)!FechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, , ChkLogotipo.Value)

            ElseIf Index = 5 Then 'Imprimir Presupuesto Global
                
                Call ArrImpresionPresupPDF(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, True, ChkLogotipo.Value)
                
            End If
        End If
            
        RsDominio.Close
    Else

        If ImpDetalle Then
            If Index = 3 Then
                Call ArrImpresionPresupIntec(1, Me, (PresPreliminar), sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, (ChkLogotipo.Value))
            Else
                Call ArrImpresionPresupIntec(1, Me, (PresPreliminar), sTxtCodigo & " / " & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, False, (ChkLogotipo.Value))
            End If
        End If

        'Me.SetFocus
    End If
    
    'Jose y Pedro. 25 5 2006. Esto era muy peligroso, se puede quedar (y se queda) en un bucle infinito. Además después se hace la misma comprobación y si no existe se muestra un mensaje.
    'Do While Dir("C:\Temp\Presupuesto.pdf") = ""
    '  PruebaPdf = PruebaPdf
    'Loop

End Sub

Private Sub CmdPDFAmpliacion_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba el valor del parametro Index y dependiendo de su valor abr un documento de Word o de Excel al que hace
'   referencia una caja de texto del formulario.
'   Tambien dependiendo del valor de Index ejecuta varios procedimientos a los cuales les llama con diferentes
'   parametros dependiendo de Index
'
'PARAMETROS :
'   Index  --> Parametro que indica las operaciones a realizar
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si el elemento seleccionado del Combo tiene el indice 25 o si no hay ninguno selecionado y llama al
'      procedimiento CalcularFormaPago
'   2) Si Index es mayor que 0 pone ImpDetalle = .T. y si Index es 0 ó 2 pone ImpDocumento = .T.
'   3) Si ImpDocumento = .T.
'      -Comprueba que hemos seleccionado un fichero de Word y comprueba que existe
'      -Nos pide un numero de plantilla
'       -Si es 1, comprueba en la varible WordDoc(0)" que el documento seleccionado es un documento de Word y
'        lo abre y lo imprime
'        Comprueba si es un documento de excel y lo abre y lo imprime
'        Sino es ninguno de los formatos nos da un mensaje de error y se sale
'       -Si es 1, comprueba en la varible WordDoc(1)" que el documento seleccionado es un documento de Word y
'        lo abre y lo imprime
'        Comprueba si es un documento de excel y lo abre y lo imprime
'        Sino es ninguno de los formatos nos da un mensaje de error y se sale
'   4) Si ImpDetalle = .T.
'      -Si Index = 3 llama a ArrImpresionPresup
'      -Si es distinto de 4 y de 5, crea un recordset de la tabla "DetallePresupuesto" seleccionando los registros
'       en que IdPresupuesto sea igual al valor de la variable global que indica el presupuesto actual m_IdPresupuesto
'      -Si tiene datos el recordset llama a PresupuestoGeotecnico y sino a ArrImpresionPresup
'      -Si Index = 4 llama a ArrImpresionPresup
'      -Si Index = 5 llama a ArrImpresionPresup
'
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2004/05     LCC     Añadido por Antonio Gutiérrez (Envio de ampliaciones por email)

'DOCF FIN -------------------------------------------------------------
    
    Dim RsSucursales As New Recordset
    Dim RsDominio As New Recordset
    Dim Codigo As Recordset
    Dim PresupuestoPadre As Integer

    
    Call CrearDirTemp
    Dim ImpDetalle As Boolean
    Dim ImpDocumento As Boolean

    '    If CmbFormaPago.ListIndex = 25 Or CmbFormaPago.ListIndex < 0 Then
    '        CmbFormaPago.ListIndex = 0
    '        'Call CalcularFormaPago(m_IDPresupuesto)
    '    End If
    If CmbFormaPago.ListIndex < 0 Then
        CmbFormaPago.ListIndex = 0
        'Call CalcularFormaPago(m_IDPresupuesto)
    End If

    If Index > 0 Then
        ImpDetalle = True
    End If

    If Index = 0 Or Index = 2 Then
        ImpDocumento = True
    End If
    
    If ImpDocumento Then
        If WordDoc(0) = "" Then
            Alerta ("Debe especificar un fichero.")
            Exit Sub
        End If

        If Dir(m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)) = "" Then
            Alerta ("El fichero " & m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0) & " no existe.")
        
            Exit Sub
        End If

        Dim sResp As String
        sResp = InputBox("Especifique un número de Plantilla: 1-2", "InsertarNúmeroPlantilla", "", , , App.HelpFile, 30)
        sResp = Trim(sResp)

        If sResp & "" = "" Then
            Exit Sub
        ElseIf sResp = 1 Then

            'modificación
            If Mid(WordDoc(0), Len(WordDoc(0)) - 2) = "doc" Then '' documento word
                'fin modificación
                Dim ObjWord As Object
                Dim ObjDoc As Object
                
                On Error Resume Next
                Set ObjWord = GetObject(, "Word.Application")
                If Err.Number > 0 Then
                    Set ObjWord = CreateObject("Word.Application")
                End If
                On Error GoTo 0
                
                'Abrir documento.
                ObjWord.Visible = True
                ObjWord.Activate
                ObjWord.Documents.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)

                If ChkPresPreliminar Then
                    ObjWord.ActiveDocument.PrintPreview
                Else
                    ObjWord.ActiveDocument.PrintOut
                End If

                Set ObjWord = Nothing
                ' modificacion
            ElseIf Mid(WordDoc(0), Len(WordDoc(0)) - 2) = "xls" Then  '' documento excel
                Dim objExcel As Object
                Dim objLibro As Object
                
                On Error Resume Next
                Set objExcel = GetObject(, "Excel.Application")
                If Err.Number > 0 Then
                    Set objExcel = CreateObject("Excel.Application")
                End If
                On Error GoTo 0
                
                objExcel.Visible = True
                'objExcel.ActiveSheet
                objExcel.Workbooks.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(0)

                If ChkPresPreliminar Then
                    objExcel.ActiveWorkbook.PrintPreview
                Else
                    objExcel.ActiveWorkbook.PrintOut
                End If

                Set objExcel = Nothing
            Else
                Call Informacion("Extensión de fichero no reconocida.")
            End If

        Else

            'modificación
            If Mid(WordDoc(1), Len(WordDoc(1)) - 2) = "doc" Then '' documento word
                'fin modificación
                'Abrir documento.
                ObjWord.Visible = True
                ObjWord.Activate
                ObjWord.Documents.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)

                If ChkPresPreliminar Then
                    ObjWord.ActiveDocument.PrintPreview
                Else
                    ObjWord.ActiveDocument.PrintOut
                End If

                Set ObjWord = Nothing
                ' modificacion
            ElseIf Mid(WordDoc(1), Len(WordDoc(1)) - 2) = "xls" Then  '' documento excel
                
                objExcel.Visible = True
                'objExcel.ActiveSheet
                objExcel.Workbooks.Open m_DirPresupuestos & "-" & TxtAnyo.Text & "\" & WordDoc(1)

                If ChkPresPreliminar Then
                    objExcel.ActiveWorkbook.PrintPreview
                Else
                    objExcel.ActiveWorkbook.PrintOut
                End If

                Set objExcel = Nothing
            Else
                Call Informacion("Extensión de fichero no reconocida.")
            End If
        End If
    End If

    ' fin modificacion
    Dim PresPreliminar As Integer

    If Index = 4 Or Index = 5 Then
        PresPreliminar = ChkPresPreliminar(1)
    Else
        PresPreliminar = ChkPresPreliminar(0)
    End If

    Dim Reg As New Recordset
    Dim GeotecnicoNuevo As Boolean

    If m_FormatoFactura = "L" Then
        'Call mClsSucursales.PueblaRecordset(RsSucursales, "SELECT codigo FROM sucursales")
       
        ' If RsSucursales!Codigo = 3 Then
        If ImpDetalle Then
            If Index = 3 Then

                'Call ArrImpresionPresup(Me, (ChkPresPreliminar.Value = 1), sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), CadenaADouble(TxtIVA), OptMostrar(0).Value, True)
                If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_G" Then
                    If UCase$(m_NombreDominio) = "DOMINIO_GR" Then 'Pedro. 27 7 2006. Para geosuelos Ronda
                        Call ArrImpresionPresupPDF(Me, (PresPreliminar), "RO-" & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True)
                    Else
                        Call ArrImpresionPresupPDF(Me, (PresPreliminar), "MA-" & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True)
                    End If

                Else
                    Call ArrImpresionPresupPDF(Me, (PresPreliminar), "M-" & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True)
                End If

            ElseIf Index <> 4 And Index <> 5 Then
                '''''' si tiene referencia en detalle presupuestos
                
                Call mClsPresupuestos.PueblaRecordset(Reg, "SELECT * FROM DetallePresupuesto WHERE IdPresupuesto = " & m_IDPresupuesto)

                If Not Reg.EOF Then 'Jose. 17 8 2006. REVISAR ESTO. ¿Por qué este If y el Select anterior?
                    
                        Call ArrImpresionPresupPDF(Me, (PresPreliminar = 1), m_TextoPresup & sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), CadenaADouble(TxtIVA), OptMostrar(0).Value, False, ChkLogotipoAmpl.Value)

                Else
                    
                        Call ArrImpresionPresupPDF(Me, (PresPreliminar = 1), m_TextoPresup & sTxtCodigo & "-" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), CadenaADouble(TxtIVA), OptMostrar(0).Value, False, ChkLogotipoAmpl.Value)
                    
                End If

                'Reg.Close
                'Set Reg = Nothing
            ElseIf Index = 4 Then
                
                Call ArrImpresionPresupPDF(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, RsMant(2)!NombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(RsMant(2)!FechaEmision), "d") & " de " & Format(CDate(RsMant(2)!FechaEmision), "mmmm") & " de " & Format(CDate(RsMant(2)!FechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True)
            
            ElseIf Index = 5 Then 'Imprimir Presupuesto Global
                
                    Call ArrImpresionPresupPDF(Me, (PresPreliminar), m_TextoPresup & sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, True)

            End If
        End If
            
       
    Else

        If ImpDetalle Then
            If Index = 3 Then
                Call ArrImpresionPresupIntec(1, Me, (PresPreliminar), sTxtCodigo & "/" & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, True, (ChkLogotipo.Value))
            Else
                Call ArrImpresionPresupIntec(1, Me, (PresPreliminar), sTxtCodigo & " / " & Right(TxtAnyo, 2), TxtPeticionario, TxtNombreObra, TxtDon, Trim(TxtNombre & " " & TxtApellidos), Format(CDate(TxtFechaEmision), "d") & " de " & Format(CDate(TxtFechaEmision), "mmmm") & " de " & Format(CDate(TxtFechaEmision), "yyyy"), CmbPConcepto.Text, CadenaADouble(TxtDescuento), OptMostrar(0).Value, False, (ChkLogotipo.Value))
            End If
        End If

        'Me.SetFocus
    End If

    'Comentado por Antonio Gutiérrez 26/dic/03--------------------------------------------------
    'm_IDPresupuesto = PresupuestoPadre
    '-----------------------------------------------------------------------------
End Sub

Private Sub CmdPresAceptado_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Dependiendo del valor de Index nos acepta un presupuesto o nos lleva aun formulario donde nos da la opciond e dar
'   de alta una nueva obra
'
'PARAMETROS :
'   Index  --> Indice del array de CommandButton
'
'RETORNO :
'
'PROCESO :
'   1) Si Index = 1 si el presupuesto no esta aceptado modifica lo pone ha aceptado y le pone la fecha de Aceptacion
'      y la obra a la que corresponde
'      Actualiza el registro lo sincroniza y actualiza el Grib correspondienre
'   2) Si el Index <> 1 entonces comprueba que el presupuesto no esta acptado y que hay un cliente seleccionado para
'      aceptar el presupuesto
'   3) Carga el formulario FrmNuevaObra, e introduce datos en las cajas de texto para mas tarde visualizarlos
'   4) Cuando vuelve del formulario comprueba si se ha creado una nueva obra y si es asi ejecuta el evento
'      CmdAceptar_Click
'   5) Nos posiciona en la primera solapa del formulario FrmMUnaObra y nos lo visualiza
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If

    If Index = 1 Then 'ACEPTAR AMPLIACION
        If Not RsMant(2)!Aceptado = 1 Then
            
            'Comprobar que los precios y descripción de la obra sean iguales
            Dim RsPresupuesto As New Recordset
            Dim RsObra As New Recordset, res As Integer
            '
            
            Dim Aceptado As Boolean
            Aceptado = True
            Call mClsPresupuestosyTarifas.PueblaRecordset(RsPresupuesto, "SELECT IdTarifa, Euros, PrecioUnitario, PresupuestosyTarifas.Concepto, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4 FROM PresupuestosYTarifas WHERE IdPresupuesto=" & RsMant(2)!IdPresupuesto & " and PresupuestosYTarifas.Aceptada = 1")
            Call mClsPresupuestos.PueblaRecordset(RsObra, "SELECT IdTarifa, PrecioUnitario, PresupuestosYTarifas.Euros FROM Presupuestos INNER JOIN PresupuestosYTarifas ON Presupuestos.IdPresupuesto=PresupuestosYTarifas.IdPresupuesto WHERE Presupuestos.IdObra=" & m_IDObra & " and Presupuestos.Aceptado=1 and PresupuestosyTarifas.Aceptada=1 and Presupuestos.IdPresupuesto<>" & RsMant(2)!IdPresupuesto & "")
            dbPrincipal.BeginTrans
            While Not RsPresupuesto.EOF And Aceptado
                res = CompruebaPrecios(m_IDObra, RsPresupuesto!IDTarifa, RsPresupuesto!PrecioUnitario)
                If res <> 2 Then
                    Call ArreglarTarifa(m_IDObra, RsPresupuesto!IDTarifa, RsPresupuesto!PrecioUnitario, RsPresupuesto!Euros, RsPresupuesto!Concepto & "", RsPresupuesto!Concepto2 & "", RsPresupuesto!Concepto3 & "", RsPresupuesto!Concepto4 & "")
                Else
                    Aceptado = False
                End If
                RsPresupuesto.MoveNext
            Wend
            If Aceptado Then
                dbPrincipal.CommitTrans
            Else
                dbPrincipal.RollbackTrans
            End If
            RsObra.Close
            Set RsObra = Nothing
            RsPresupuesto.Close
            Set RsPresupuesto = Nothing
            If Aceptado Then
                RsMant(2)!Aceptado.Value = 1
                RsMant(2)!FechaAceptacion = Format(Date)
                RsMant(2)!IdObra = m_IDObra
                RsMant(2)!IdEstados = 4
            Else
                Call Alerta("Existen precios diferentes en la obra.")
            End If
            
        Else
            Call Informacion("El presupuesto ya está aceptado.")
        End If
        
        RsMant(2).Update
        RsMant(2).Resync adAffectCurrent
        Call ActualizarDbGrid(2)
        
    Else 'PRESUPUESTO ACEPTADO...
        If LabelAceptado.Visible Then
            Alerta ("No se puede aceptar un presupuesto que ya ha sido aceptado.")
            
            Exit Sub
        End If
        
        If IDClientePresupuesto = -1 Then
            Alerta ("Debe seleccionar un cliente para aceptar el presupuesto.")
            
            Exit Sub
        End If
        m_IDCliente = IDClientePresupuesto
        
        m_SeCreoNuevaObra = False
        
        'Jose. 29 5 2006. Nueva opción para indicar quien y como se ha aceptado el presupuesto.
        If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_L" Then
            If OptAceptadoPor(0).Value Then
                Alerta ("Es obligatorio indicar como o por quién ha sido aceptado el presupuesto.")
                
                Exit Sub
            ElseIf OptAceptadoPor(2).Value And TxtAceptadoPor.Text = "" Then
                Alerta ("El texto no puede estar vacío.")
                If TxtAceptadoPor.Enabled Then TxtAceptadoPor.SetFocus 'Jose. 31 5 2006. Si no está 'Enabled' da error el SetFocus
                
                Exit Sub
            End If
        End If
        '--------------------------------------------------------------------------------------
        
        Load FrmNuevaObra
        FrmNuevaObra.TxtCPeticionario = DameExpresion("IDCliente", m_IDCliente, "Clientes", "Codigo")
        FrmNuevaObra.TxtCPeticionario = CompletaCon(FrmNuevaObra.TxtCPeticionario, 4, "0", 0)
        FrmNuevaObra.TxtCNombreObra = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "Codigo")
        FrmNuevaObra.TxtCNombreObra = CompletaCon(FrmNuevaObra.TxtCNombreObra, 4, "0", 0)
        FrmNuevaObra.TxtPeticionario = TxtPeticionario
        FrmNuevaObra.TxtNombreObra = TxtNombreObra
        FrmNuevaObra.TxtCObra = ""
        FrmNuevaObra.txtObra = ""
        
        
'2003/10    Jose. 17 10 2003. Presupuestos OCT. -----------------------------------------------
        If CmbTipo.Text = "SEGURO DECENAL" _
            Or CmbTipo.Text = "ORGANISMO CONTROL TÉCNICO" Then
            m_PresupuestoOCT = True
        Else
            m_PresupuestoOCT = False
        End If
'2003/10    -------------------------------------------------------------------------------------
        
        
        
        
        FrmNuevaObra.Show 1
    
        Unload FrmNuevaObra
    
        If m_SeCreoNuevaObra Then
            PresupuestoAceptado = True
            
            'Almacenamos los cambios.
            Call CmdAceptar_Click
            
            FrmMUnaObra.MTab.Tab = 0
            FrmMUnaObra.Show
            FrmMUnaObra.SetFocus
        End If
    End If

End Sub

Private Sub CmdDetalle_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba cual es la solapa actual para saber que datos tiene que guardar en las variables globales antes de
'   llamar al formulario "FrmMDetPresupuesto" que hace referencia a las lineas de detalle del presupuesto
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba que la solapa seleccionada es "Total Presupuestos" y que la variable global que indica que el
'      presupuesto esta aceptado es .T. si es asi, entonces
'      -Crea un recordset de la tabla "Presupuestos", "PresupuestosyTarifas", "Tarifas", "Obras" y selecciona los
'       registros cuyo Obras!IdObra sea igual a la variable global "m_IdObra" que indica la obra actual
'      -Si contiene registros lo recorre con un While
'       -Crea un cadena con todos los Codigos de Tarifas que contiene el recordset entre parentesis
'      -Llama al formulario FrmMDetPresupuesto
'   2) Si la solapa seleccionada es "Ampliaciones" guarda en la variable PrespAux guarda el valor de la variable
'      global m_IDPresupuesto con el presupuesto actual y en al variable global "m_IdPresupuesto" guarda el valor del
'      recordset RsMant(2)!IDPresupuesto
'      Llama al formulario FrmMDetPresupuesto
'   3) Si la solapa seleccionada no es una de las anteriores llama al formulario FrmMDetPresupuesto
'   4) Actualiza el formulario
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim RsAux As New Recordset
    Dim PrespAux As Long
    
    'Jose. 10 2 2005. Para ocultar el botón imprimir cuando el tipo es 2 (Oferta%)
    'Se le pasará como parámetro (opcional) al procedimiento ActivarFormulario de FrmMDetPresupuesto.
    Dim Clase As Integer
    Clase = Val(DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "IDClasePresup"))
    '-----------------------------------------------------------------------------
    If Not SePuedeModificar(True) Then
        Exit Sub
    End If
    
    If MTab.Tab = 4 And PresupuestoAceptado Then
        Dim Reg As New Recordset
        Call mClsObras.PueblaRecordset(Reg, "SELECT Obras.Codigo, Obras.NombreObra, COUNT(Tarifas.Codigo) AS NumTarifas, Tarifas.Codigo AS codtarifa FROM Presupuestos INNER JOIN PresupuestosyTarifas ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto INNER JOIN Tarifas ON PresupuestosyTarifas.IDTarifa = Tarifas.IDTarifa INNER JOIN Obras ON Presupuestos.IDObra = Obras.IDObra" & _
        " WHERE (Obras.IdObra = " & m_IDObra & ") GROUP BY Obras.Codigo, Obras.NombreObra, Tarifas.Codigo, Presupuestos.Aceptado " & _
        " HAVING (Count(Tarifas.Codigo) > 1)" & _
        " ORDER BY Obras.Codigo")
        If Not Reg.EOF Then
            Dim CadTarifas As String, Obra As String, NombreObra As String
            CadTarifas = ""
            While Not Reg.EOF
                If CadTarifas <> "" Then
                    CadTarifas = CadTarifas & ", "
                Else
                    CadTarifas = " ("
                    Obra = Reg!Codigo
                    NombreObra = Reg!NombreObra
                End If
                CadTarifas = CadTarifas & Reg!CodTarifa
                Reg.MoveNext
            Wend
            CadTarifas = CadTarifas & ") "
            Call Alerta("En la obra " & Obra & ", " & NombreObra & ", " & vbCrLf & "existe/n " & CStr(Reg.RecordCount) & " TARIFA/S REPETIDA/S" & CadTarifas & "." & vbCrLf & vbCrLf & "No se podrá visualizar el conjunto de todos los presupuestos," & vbCrLf & " deberá abrir cada uno por separado.")
            Reg.Close
            Set Reg = Nothing
            Exit Sub
        End If
        Reg.Close
        Set Reg = Nothing
    'End If
    'If MTab.Tab = 4 And PresupuestoAceptado Then
        
        Call FrmMDetPresupuesto.ActivarFormulario(CadenaADouble(TxtDescuento), True, Clase)
    Else
        If MTab.Tab = 7 Then 'Ampliaciones.
            PrespAux = m_IDPresupuesto
            'Modificado 26/ago/2004 Antonio ----------------------------------------------------------------------------------
            Call mClsPresupuestos.PueblaRecordset(RsAux, "SELECT Presupuestos.Ampliacion FROM Presupuestos INNER JOIN PresupuestosAmpliacion ON Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo WHERE (PresupuestosAmpliacion.IdPresupuestoPadre = " & m_IDPresupuesto & ") ORDER BY IdPresupuesto", False)
            If RsAux.RecordCount = 0 Then
               Alerta ("El presupuesto no tiene ampliaciones.")
            Else
                m_IDPresupuesto = RsMant(2)!IdPresupuesto
                FrmMDetPresupuesto.Caption = Me.Caption
                Call FrmMDetPresupuesto.ActivarFormulario(CadenaADouble(TxtDescuento), False, Clase)
                m_IDPresupuesto = PrespAux
            End If
            RsAux.Close
            Set RsAux = Nothing
        Else
            FrmMDetPresupuesto.Caption = Me.Caption
            Call FrmMDetPresupuesto.ActivarFormulario(CadenaADouble(TxtDescuento), False, Clase)
        End If
'        FrmMDetPresupuesto.Caption = Me.Caption
'        Call FrmMDetPresupuesto.ActivarFormulario(CadenaADouble(TxtDescuento), False)
    End If
    SetFocus
    Call ActualizarFormulario
'    FrmMDetPresupuesto.Caption = Me.Caption
'    FrmMDetPresupuesto.ActivarFormulario (CadenaADouble(TxtDescuento))
'    SetFocus
'    Call ActualizarFormulario

End Sub

Private Sub CmdSelCliente_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Nos carga un formulario con los datos de los "Clientes" y nos permite seleccionar uno y que pasemos varios datos
'   del cliente al formulario del presupuesto
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Carga el formulario para seleccionar el cliente
'   2) Nos pregunta si el cliente seleccionado queremos pasarlo al presupuesto
'   3) Si es asi crea un recordset y pasa los datos del recordset de "Clientes" a las cajas de texto
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim RsCliente As Recordset
    
    Dim AcuerdoMarco As Integer '0 = no, 1 = si
    
    'CmdBuscar se activa y desactiva igual que CmdNuevo.
    'm_IDBuscar en el módulo de funciones.

    'Primero cargamos el formulario.
    Load FrmMBusquedas

    'El título de la ventana de buscar.
    FrmMBusquedas.Caption = "Buscar un cliente"
    
    'El Select. El primer campo siempre el IDBuscar. Los nombres a presentar se ponen entre [].
    FrmMBusquedas.TxtSQL = "SELECT IDCliente As IDBuscar, Codigo As [Código], Cliente FROM Clientes"

    'Los campos de busqueda.
    FrmMBusquedas.CmbBuscarPor.AddItem "Código"
    FrmMBusquedas.CmbBuscarPor.ItemData(0) = 0 'Numero
    FrmMBusquedas.CmbCampos.AddItem "Codigo"
    FrmMBusquedas.CmbBuscarPor.AddItem "Cliente"
    FrmMBusquedas.CmbBuscarPor.ItemData(1) = 1 'Cadena
    FrmMBusquedas.CmbCampos.AddItem "Cliente"

    FrmMBusquedas.CmbBuscarPor.ListIndex = 0

    'Presentamos el formulario.
    FrmMBusquedas.HelpContextID = 86
    FrmMBusquedas.Show 1
    'Descargamos el formulario.
    Unload FrmMBusquedas

    If m_IDBuscar > 0 Then
        IDClientePresupuesto = m_IDBuscar
        
        
        Set RsCliente = New ADODB.Recordset
        
        Call mClsClientes.PueblaRecordset(RsCliente, "SELECT * FROM Clientes WHERE IDCliente = " & IDClientePresupuesto)
            
        If Pregunta("¿Quiere que los datos del cliente seleccionado (Nombre, Direccion, CP, Poblacion y Provincia) pasen al presupuesto?") Then
        
            TxtPeticionario = RsCliente!cliente & ""
            TxtDireccion.Text = RsCliente!direccion & ""
            TxtCP.Text = RsCliente!CP & ""
            TxtPoblacion.Text = RsCliente!Poblacion & ""
            TxtProvincia.Text = RsCliente!Provincia & ""
            If NoNumNulo(RsCliente!Problematico) <> 0 Then
                Call Informacion("El cliente es conflictivo, motivo: " & vbCrLf & vbCrLf & RsCliente!Comentario)
            End If
            
        End If
        'Jose. 25 6 2004. Comprueba si el cliente tiene Acuerdo Marco y marca el presupuesto como tal.
        If VarType(RsCliente!FechaAcuerdoMarco) <> vbNull Then
            dbPrincipal.Execute "UPDATE Presupuestos SET AcuerdoMarco = 1 WHERE IDPresupuesto = " & m_IDPresupuesto
            LblAcuerdo.Visible = True
        End If
        
        RsCliente.Close
        
        Set RsCliente = Nothing
        
        
        TxtNombreObra.SetFocus
        
    End If

End Sub

Private Sub CmdSelFecha_Click(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Nos lleva a un formulario para seleccionar una fecha para la Fecha de Ejecucion
'
'PARAMETROS :
'   Index  --> Indice del Array de CommandButton
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Select Case Index
        Case 0
            Call SeleccionarFecha(TxtFechaEmision)
        Case 1
            Call SeleccionarFecha(TxtFechaAceptacion)
        Case 2
            Call SeleccionarFecha(TxtFechaTerminado)
        Case 3
            Call SeleccionarFecha(TxtFechaAvalAceptacion)
        Case 5
            Call SeleccionarFecha(TxtFechaFinObra)
        Case 4
            Call SeleccionarFecha(TxtFechaIniObra)
    End Select

End Sub

Private Sub ChkgastosYBfo_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba si el registro esta en Edicion y dependiendo de si el CheckBox esta marcado o no habilita los controles
'   o no
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If EnEdicion Then
        If ChkGastosYBfo.Value = 1 Then
            TxtGastosGenerales.Locked = False
            TxtGastosGenerales.Enabled = True
            TxtBfoIndustrial.Locked = False
            TxtBfoIndustrial.Enabled = True
        Else
            TxtGastosGenerales.Enabled = False
            TxtBfoIndustrial.Enabled = False
        End If
    Else
        TxtGastosGenerales.Enabled = False
        TxtBfoIndustrial.Enabled = False
    End If

End Sub


Private Sub DbGridMant_ButtonClick(Index As Integer, ByVal ColIndex As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba si el registro se puede modificar y comprueba el valor de RsMant(0)!Aceptada y lo cambia actualizando
'   el registro y actualizando el Grid
'
'PARAMETROS :
'   Index     --> Indice del Array de DbGrid
'   ColIndex  --> Indice de la columna
'
'RETORNO :
'
'PROCESO :
'   1) Asigna a RsMant(0)!Aceptada el valor contrario al que tiene y lo actualiza
'   2) Actualiza el Grid
'   3) Actualiza varias cajas de texto
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If Index = 3 Then Exit Sub
    
    If mp_Modificar Then
        If RsMant(0)!Aceptada Then
            RsMant(0)!Aceptada.Value = False
        Else
            RsMant(0)!Aceptada.Value = True
        End If

        RsMant(0).Update
        RsMant(0).Resync adAffectCurrent
        m_IDPyT = RsMant(0)!IDPYT
    
        Call ActualizarDbGrid(4)
    
        TxtTotal(0).Text = SumarPrecio("PresupuestosyTarifas", "IDPresupuesto", _
        m_IDPresupuesto, "PrecioTotal", "PresupuestosyTarifas.Aceptada = 1")
        TxtTotal(1).Text = TxtTotal(0).Text
        
       
        
    End If

End Sub

Private Sub DbGridMant_HeadClick(Index As Integer, ByVal ColIndex As Integer)
    If Index = 2 Then
        If ColIndex = 0 Then
            OptOrden(0).Value = True
        ElseIf ColIndex = 2 Then
            OptOrden(1).Value = True
        End If
        Call ActualizarDbGrid(2)
    End If
End Sub

Private Sub DBGridMant_RowColChange(Index As Integer, LastRow As Variant, ByVal LastCol As Integer)
    If Index = 2 Then
        If RsMant(2).State = 1 Then 'Jose. 6 7 2006. Comprobación siempre necesaria. Da error cuando el grid está vacío y se hace click encima.
            If Not RsMant(2).EOF Then 'Jose. 6 7 2006. Lo mismo de arriba.
                TxtIncidencias.Text = NoNulo(RsMant(2)!Incidencias)
                LblUsuarioAmpliacion.Caption = NoNulo(RsMant(2)!UsuarioCreacion)
                
                'Jose. 1 9 2005. Tipo de ampliacion para Intec
                'If Left(UCase(m_NombreDominio), 9) = "DOMINIO_I" Then
                If m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
                    If VarType(RsMant(2)!EstanquidadFachada) <> vbNull And RsMant(2)!EstanquidadFachada Then
                        CmbTipoAmpliacion.ListIndex = 0
                    ElseIf VarType(RsMant(2)!EstanquidadCubierta) <> vbNull And RsMant(2)!EstanquidadCubierta Then
                        CmbTipoAmpliacion.ListIndex = 1
                    ElseIf VarType(RsMant(2)!ControlAcabado) <> vbNull And RsMant(2)!ControlAcabado Then
                        CmbTipoAmpliacion.ListIndex = 2
                    ElseIf VarType(RsMant(2)!Otro) <> vbNull And RsMant(2)!Otro Then
                        CmbTipoAmpliacion.ListIndex = 3
                    Else
                        CmbTipoAmpliacion.ListIndex = -1
                    End If
                End If
                '---------------------------------------------
            End If
        End If
    End If
End Sub

Private Sub DbGridPropiedades_KeyDown(KeyCode As Integer, Shift As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba el caracter tecleado y nos mueve por el grid
'
'PARAMETROS :
'   KeyCode   --> Codigo del caracter tecleado
'   Shift     --> Indica si esta presionada la mayuscula
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Call Flechas(DbGridPropiedades, KeyCode)

End Sub

Private Sub DbGridPropiedades_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba el caracter tecleado realiza operaciones en las celdas del DbGrid
'
'PARAMETROS :
'   KeyAscii  --> Valor del caracter Ascii tecleado
'
'RETORNO :
'
'PROCESO :
'   1) Si no tenemos permiso para hacer modificaciones en el Dbgrid se sale del evento
'   2) Dependiendo de diferentes valores del DbGrid convierte el Intro en diferentes operaciones
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If Not DbGridPropiedades.AllowUpdate Then
        Exit Sub
    End If
    
    If DbGridPropiedades.Text <> DbGridPropiedades.SelText Then
        If KeyAscii = 13 Then
            SendKeys "{HOME}+{END}"
            SendKeys "{DOWN}"
        End If
    End If

End Sub

Private Sub DbGridPropiedades_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Ejecuta todas las operaciones pendientes que le queden al Recordset
'
'PARAMETROS :
'   Index     --> Indice del Array de DbGrid
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    Call SalvarRestos(RsPropiedades)

End Sub


Private Sub Form_Activate()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Nos carga el formulario y carga varios controles
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'   1) Comprueba si tiene permiso para trabajar con presupuestos
'   2) Activa la impresora
'   3) Carga el combo de "FormasPago"
'   4) Carga el combo de "TiposPresupuestos"
'   5) Carga el combo de "SubTiposPresupuesto"
'   6) Si no hay ningun presupuesto os prepara los controles del formulario para dar de alta un registro
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'   2003/03     HDT     Unificación de la Aplicación.
'
'DOCF FIN -------------------------------------------------------------
    
    Cambio = True
    If Not FrmPrincipal.MnuGestionPresupuestos.Enabled Then
        Alerta ("No tiene permiso para trabajar con Presupuestos.")
        
        Unload Me
    
        Exit Sub
    End If
    Dim SeleccionarImpresora As Boolean
    SeleccionarImpresora = FrmOpciones.ActivarImpresora ' se supone que siempre es verdadero.
    MTab.TabVisible(3) = False
    
            
'2003/03     HDT     Unificación de la Aplicación.------------------------------------------------
    Call mClsEntidadBancaria.PueblaCombo(1, CmbEntidadBancaria, Nothing, Nothing)
    Call mClsSeguros.PueblaCombo(1, CmbSeguros, Nothing, Nothing)
    If m_FormatoFactura = "I" Then
        CmbSeguros.ListIndex = 5
    End If
    Call mClsCorredor.PueblaCombo(1, CmbCorredor, Nothing, Nothing)
    Call mClsColaboradores.PueblaCombo(2, CmbColaborador, CmbColaborador2, Nothing)
    CmbColaborador.AddItem "<SIN ASIGNAR>", 0
    CmbColaborador.ListIndex = 0
    CmbColaborador2.AddItem "<SIN ASIGNAR>", 0
    CmbColaborador2.ListIndex = 0
    Call mClsCondicionesPago.PueblaCombo(1, CmbCondicionesPago, Nothing, Nothing)
    Call mClsEstadosAval.PueblaCombo(1, CmbAval, Nothing, Nothing)
    Call mClsFirmas.PueblaCombo(1, CmbFirma, Nothing, Nothing)
    CmbFirma.ListIndex = 0
     
    Call CargarComboSimple(CmbPConcepto, "SELECT DISTINCT PConcepto FROM Presupuestos WHERE (pConcepto Is Not Null) ORDER BY PConcepto")
    
    Call CargarCombo(CmbSucursal, "SELECT Sucursal,IdSucursal FROM Sucursales")
    'Jose. 20 12 2006. Comentado. No es nada inteligente, de hecho daba error en DOMINIO_LCalidadMalaga porque hay un salto en los IDs (No existe IDSucursal 2)
    'CmbSucursal.ListIndex = ObtenerIDSucursal(m_CodigoEmpresa) - 1
    CmbSucursal.ListIndex = BuscaItemData(CmbSucursal, ObtenerIDSucursal(m_CodigoEmpresa)) 'Jose. 20 12 2006. Esta es LA MANERA. ;-)
    CmbSucursal.Enabled = mp_Sucursales
'------------------------------------------------------------------------------------------------


    If EnEdicion Then
        Exit Sub
    End If
        
    Refresh
    If m_IDPresupuesto = -1 Then
        Call CmdNuevo_Click(0)
        
        Exit Sub
    End If
    ActualizarFormulario
    If m_FormatoFactura = "L" Then
      Label20(1).Caption = "Nota:"
      CmdHojaDatos.Visible = False 'Jose. 11 10 2006
    Else
      Label20(1).Caption = "Condiciones Particulares:"
      CmdHojaDatos.Visible = True 'Jose. 11 10 2006
    End If
    
    'If Left(UCase(m_NombreDominio), 9) = "DOMINIO_I" Then
    If m_FormatoFactura = "I" Then 'Jose. 23 11 2006.
        LblEstado.Visible = True
    Else
        LblEstado.Visible = False
    End If
    
    'Jose. 5 5 2005. Para mostrar el botón imprimir en PDF.
    If UCase(m_LoginUsuario) = "ADMINISTRADOR" Then
        CmdPDF(1).Visible = True
    Else
        CmdPDF(1).Visible = False
    End If
    '------------------------------------------------------

End Sub

Private Sub PueblaFicheros(Cmb As ComboBox, Direc As String)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Rellena un combo con la cadena que trae como segundo parametro que es la ruta de un directorio
'
'PARAMETROS :
'   Rg     --> Combo a rellenar
'   Direc  --> Cadena con la que rellenar el combo
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim Actual As String
    
    Cmb.Clear
    Actual = Dir(Direc)
    Do While Actual <> ""
        Cmb.AddItem Actual
        Actual = Dir()
    Loop

End Sub

Private Sub Form_Deactivate()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Cancela el registro seleccionado si esta en edicion
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If EnEdicion Then
        Call CmdCancelar_Click
    End If

End Sub



Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Pregunta antes de descargar el formulario si queremos salvar los datos de pantalla
'
'PARAMETROS :
'   Cancel      --> Cancela la descarga
'   UnloadMode  --> Modo de descarga del formulario
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If EnEdicion And UnloadMode = vbFormControlMenu Then
        If Pregunta("No ha grabado los datos, ¿desea hacerlo ahora?") Then
            Call CmdAceptar_Click
            
            If EnEdicion Then
                Cancel = True
            End If
        End If
    End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Si hay datos en edicion, cancela la edicion y descarga el formulario
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If EnEdicion Then
        Call CmdCancelar_Click
    End If
    Set RsPresupuesto = Nothing
    Set RsMant(0) = Nothing
    Set RsMant(1) = Nothing
    Set RsPropiedades = Nothing

End Sub

Private Sub Form_Load()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Centra el formulario y carga el combo de usuarios.
'   Dependiendo del usuario habilita o deshabilita varios controles
'   Carga un recordset de presupuestos
'   Asigna diferentes valores a las propiedades de los controles del formulario
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    'Centramos el formulario en la pantalla
    Call Centrar(Me)
    
    'Preparamos los tamaños máximos.
    'TxtDesc.MaxLength = mclsMant("DescPresupuesto.DefinedSize
    'Jose. 11 8 2006. Salían repetidos, una vez por cada dominio.
    Call CargarCombo(CmbUsuario(1), "SELECT login FROM Usuarios WHERE Permiso16=1 AND Dominio = '" & m_NombreDominio & "' ")
    Call mClsFormasPago.PueblaCombo(1, CmbFormaPago, Nothing, Nothing)
    Call CargarCombo(CmbOCT, "SELECT Nombre,IdTipoOct FROM TiposOCT")
    'Cargamos los combos
    Call mClsTiposPresupuesto.PueblaCombo(1, CmbTipo, Nothing, Nothing)
    Call CargarCombo(CmbSubtipo, "SELECT distinct Nombre,IdSubtipo FROM SubTiposPresupuesto")
    CmbSubtipo.AddItem "(Sin asignar)", 0
    'CmbTipo.ListIndex = 0
    Call PueblaFicheros(CmbMatrices, m_DirPlantillas & "\Matrices\*.doc")
    Call CargarCombo(CmbTipoAceptacion, "SELECT Descripcion FROM TiposAceptacion")
    Call CmbTipoAceptacion.AddItem("<Todos>", 0)
    CmbTipoAceptacion.ListIndex = 0
    
    Opt_Estandar.Value = True
    CmbUsuario(1) = ""
    'Antonio Enero 2004 ----------------------------------------------
    If mp_DesaceptarObras = True Then
        CmdDesaceptar.Enabled = True
    Else
        CmdDesaceptar.Enabled = False
    End If
    '------------------------------------------------------------------
    If mp_PreciosUnitarios = True Then
        Frame5.Visible = True
        CmbUsuario(1).Enabled = True
        ChkPreciosUnitarios.Enabled = True
    Else
        Frame5.Visible = False
        CmbUsuario(1).Enabled = False
        ChkPreciosUnitarios.Enabled = False
    End If
    
    Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT Top 1 * FROM Presupuestos")
    
    TxtPeticionario.MaxLength = RsPresupuesto!Peticionario.DefinedSize
    TxtNombreObra.MaxLength = RsPresupuesto!NombreObra.DefinedSize
    
    TxtNombre.MaxLength = RsPresupuesto!Nombre.DefinedSize
    TxtObservaciones.MaxLength = RsPresupuesto!Observaciones.DefinedSize
    TxtNota.MaxLength = RsPresupuesto!Nota.DefinedSize
    TxtHojaDatos.MaxLength = RsPresupuesto!HojaDatos.DefinedSize
    
    TxtTelefono.MaxLength = RsPresupuesto!Telefono.DefinedSize
    TxtFax.MaxLength = RsPresupuesto!Fax.DefinedSize
    TxtMovil.MaxLength = RsPresupuesto!movil.DefinedSize
    
    TxtDireccion.MaxLength = RsPresupuesto!direccion.DefinedSize
    TxtCP.MaxLength = RsPresupuesto!CP.DefinedSize
    TxtPoblacion.MaxLength = RsPresupuesto!Poblacion.DefinedSize
    TxtProvincia.MaxLength = RsPresupuesto!Provincia.DefinedSize
    
    TxtApellidos.MaxLength = RsPresupuesto!Apellidos.DefinedSize
    TxtAnyo.MaxLength = RsPresupuesto!Anyo.DefinedSize
    TxtImporteAval.MaxLength = RsPresupuesto!ImporteAval.DefinedSize
    txtPEM.MaxLength = RsPresupuesto!Pem.DefinedSize
    TxtDon.MaxLength = RsPresupuesto!Don.DefinedSize
    
    'Jose. 29 5 2006. Nueva opción del programa para indicar como ha sido aceptado el presupuesto
    TxtAceptadoPor.MaxLength = RsPresupuesto!AceptadoPor.DefinedSize
    
    
    CmbPConcepto.Tag = RsPresupuesto!pConcepto.DefinedSize
    If RsPresupuesto!ProvisionFondos > 0 And RsPresupuesto!Liquidado = 1 Then
       Label51.Caption = "S"
    Else
       Label51.Caption = ""
    End If
    PorcColaborador = RsPresupuesto!PorcColaborador
    Liquidado = RsPresupuesto!Liquidado
    
    
'    '2003/05    Jose.   14 10 2003.Presupuestos OCT. Añadido. --------------------------------------
'    Call CargarCombo(CmbProcedencia, "SELECT Nombre, IDOperario FROM Operarios ORDER BY Nombre")
'    CmbProcedencia.ListIndex = 0
'    '2003/05    -------------------------------------------------------------------------------------
    
    RsPresupuesto.Close
    'DBEngine.Idle dbFreeLocks
    
    Call CargarCombo(CmbSucursal, "SELECT Sucursal,IdSucursal FROM Sucursales")
    CmbSucursal.ListIndex = BuscaItemData(CmbSucursal, DameExpresion("Codigo", Val(m_CodigoEmpresa), "SUCURSALES", "IdSucursal"))
    CmbSucursal.Enabled = mp_Sucursales
    
    'Jose. 31 1 2006. Añadido TOP 1. Se puede dar el caso de que esta sentencia SQL devuelva hasta miles de registros (cuando m_IDPresupuesto = 0). Casi siempre es
    'conveniente usar la cláusula TOP. Top 1 en este caso.
    Call mClsPresupuestos.PueblaRecordset(RsPresupuesto, "SELECT TOP 1 IdHojaDatos, IdCliente FROM AgendaComercial WHERE IdPresupuesto=" & m_IDPresupuesto, True)
    If RsPresupuesto.RecordCount > 0 Then
        If VarType(RsPresupuesto!IDHojaDatos) <> vbNull Then
            m_IdHojaDatos = RsPresupuesto!IDHojaDatos
        Else
            m_IdHojaDatos = 0
        End If
    End If
    RsPresupuesto.Close
    
    'Jose. 26 5 2006. Nueva opción del programa. Indica como se ha aceptado el presupuesto.
    If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_L" Then
        FrmAceptadoPor.Visible = True
    Else
        FrmAceptadoPor.Visible = False
    End If
    '--------------------------------------------------------------------------------------
   
    MTab.Tab = 0
    SSTab1.Tab = 0

    'Indicamos que inicialmente no se está editando ningún registro
    EnEdicion = False
    'Desactivamos los controles de edición
    DesactivarControlesEdicion
    
     
    'Indicamos que no hay registro bloqueado
    RegistroBloqueado = False

End Sub


Private Sub LabelAceptado_Click()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba si el boton CmdAceptar esta deshabilitado y si es asi llama al formulario FrmMUnaObra, y activa la
'   primera solapa del control Tab
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If Not CmdAceptar.Enabled Then
        FrmMUnaObra.MTab.Tab = 0
        FrmMUnaObra.Show
        FrmMUnaObra.SetFocus
    End If

End Sub



Private Sub LblEstado_DblClick()
    If Not CmdAceptar.Enabled And m_IDPresupuesto > 0 Then
        FrmMGestion.Show
        Call FrmMGestion.ActivarFormulario(1)
        FrmMGestion.CmbBuscarPor.ListIndex = 1
        FrmMGestion.TxtBuscarDesde.Text = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "Codigo")
        FrmMGestion.ChkAnyo.Value = 1
        FrmMGestion.TxtAnyo.Text = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "Anyo")
        Dim ID As Long
        ID = DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "IdSucursal")
        FrmMGestion.CmbSucursal.ListIndex = BuscaItemData(FrmMGestion.CmbSucursal, Val(ID))

        'FrmMGestion.CmbSucursal.ListIndex = id - 1 'DameExpresion("IDPresupuesto", m_IDPresupuesto, "Presupuestos", "IdSucursal")
        'Call FrmMGestion.ActivarFormulario(1)
        FrmMGestion.SetFocus
    End If
End Sub

Private Sub LblMarca_DblClick()
    FrmMPresMarcas.Show 1
End Sub

Private Sub MTab_Click(PreviousTab As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Activa o desactiva controles del formulario según la ficha activa en ese momento.
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    On Error Resume Next ' Solo por el recordcount demasiado pronto.
    
    If Not Me.Visible Then
        Exit Sub
    End If

    'Esto activa los TabStop de los controles del Tab actual.
    'Basta con poner el valor del Tag = 1 para el primer Tab, 2, 3, ...
    Dim Ctx As Control
    For Each Ctx In Controls
        If Val(CStr(Ctx.Tag)) > 0 Then
            If Ctx.Tag = MTab.Tab + 1 Then
                Ctx.TabStop = True
            Else
                Ctx.TabStop = False
            End If
        End If
    Next
    
    'Si estamos en Edicion nada que hacer.
    If EnEdicion Then
        Exit Sub
    End If
    
    'Los botones cambian segun el Tab en el que estemos.
    Select Case MTab.Tab
        Case 0
            CmdNuevo(0).Enabled = True
            CmdModificar.Enabled = True
            CmdEliminar.Enabled = False
'            CmdBuscar.Enabled = True
            CmdAceptar.Visible = True
            CmdCancelar.Visible = True
        Case 1
            CmdNuevo(0).Enabled = True
            CmdModificar.Enabled = True
            CmdEliminar.Enabled = False
'            CmdBuscar.Enabled = True
            CmdAceptar.Visible = True
            CmdCancelar.Visible = True
        Case 2
            CmdNuevo(0).Enabled = True
            CmdModificar.Enabled = True
            CmdEliminar.Enabled = False
'            CmdBuscar.Enabled = True
            CmdAceptar.Visible = True
            CmdCancelar.Visible = True
        Case 3
        '' DESACTIVADO DIA 13 12 2000 POR ORDEN DE JUANJO
            MTab.Tab = PreviousTab
'            CmdNuevo.Enabled = True
'            '            CmdModificar.Enabled = False
'            '            CmdNuevo.Enabled = Not LabelAceptado.Visible
'            If RsMant(0).RecordCount > 0 Then
'                CmdModificar.Enabled = True
'                CmdEliminar.Enabled = True
'            '                CmdEliminar.Enabled = Not LabelAceptado.Visible
'            Else
'                CmdModificar.Enabled = False
'                CmdEliminar.Enabled = False
'            End If
'            '            CmdBuscar.Enabled = True
'            CmdAceptar.Visible = False
'            CmdCancelar.Visible = False
        Case 4
            CmdNuevo(0).Enabled = False
            CmdModificar.Enabled = False
            CmdEliminar.Enabled = False
            CmdAceptar.Visible = False
            CmdCancelar.Visible = False
        Case 5
            CmdNuevo(0).Enabled = False
            CmdModificar.Enabled = True
            CmdEliminar.Enabled = False
'            CmdBuscar.Enabled = True
            CmdAceptar.Visible = True
            CmdCancelar.Visible = True
        Case 6
            CmdNuevo(0).Enabled = False
            CmdModificar.Enabled = True
            CmdEliminar.Enabled = False
'            CmdBuscar.Enabled = True
            CmdAceptar.Visible = True
            CmdCancelar.Visible = True
        Case 7
            CmdNuevo(0).Enabled = True
            CmdModificar.Enabled = True
            CmdEliminar.Enabled = False
            CmdAceptar.Visible = True
            CmdCancelar.Visible = True
            'Crear el presupuesto de ampliación de unidades
'            If Not ExistenRegistros(RsMant(2)) And LabelAceptado.Visible = True And Not NoNumNulo(TxtPA(4)) > 0 Then
'                If CopiarAmpliacion(TxtNombreObra.Text, m_IDPresupuesto, 1) Then
'                    Call ActualizarDbGrid(2)
'                End If
'            End If
        'Jose.  14 10 2003. Presupuestos OCT. Añadido.
        Case 8:
'            CmdNuevo(0).Enabled = True
'            CmdModificar.Enabled = True
'            CmdEliminar.Enabled = False
''            CmdBuscar.Enabled = True
'            CmdAceptar.Visible = True
'            CmdCancelar.Visible = True
'            TxtFechaPedido.SetFocus
        
            CmdNuevo(0).Enabled = False
            CmdModificar.Enabled = False
            CmdEliminar.Enabled = False
            CmdAceptar.Visible = False
            CmdCancelar.Visible = False
            Call ActualizarDbGrid(4)
    End Select

End Sub


Private Sub Opt_Estandar_Click()
    MTab.TabVisible(6) = False
End Sub

Private Sub Opt_Oferta_Click()
    MTab.TabVisible(6) = True
 
End Sub

Private Sub Opt_PreciosUnitarios_Click()
    MTab.TabVisible(6) = False

End Sub

Private Sub OptAceptadoPor_Click(Index As Integer)
'Jose. 29 5 2006.
    If Index = 2 Then 'Con descripción
        TxtAceptadoPor.Locked = False
        If TxtAceptadoPor.Enabled Then TxtAceptadoPor.SetFocus 'Jose. 31 5 2006. Si no está 'Enabled' da error el SetFocus
    Else 'Por escrito ó No aceptado
        TxtAceptadoPor.Text = ""
        TxtAceptadoPor.Locked = True
    End If
End Sub


Private Sub OptOrden_Click(Index As Integer)
    'Call ActualizarFormulario
    Call ActualizarDbGrid(2)
End Sub

Private Sub SSTab1_GotFocus()
    'Jose. 22 8 2005. Despues de crear no se actualizaba al momento.
    Call ActualizarFormulario
End Sub

Private Sub TxtAnyo_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Then
    Else
        KeyAscii = 0
    End If

End Sub

Private Sub TxtAnyo_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Asigna a la caja de texto lo que devuelve la funcion PonNumero
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    TxtAnyo = PonNumero(TxtAnyo)

End Sub

Private Sub TxtDiasVto_KeyPress(KeyAscii As Integer)
'DOCF INICIO --------------------------------------------------------
'
'DESCRIPCION :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'PARAMETROS :
'   Ninguno.
'RETORNO :
'   Ninguno.
'PROCESO :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/10     Jose.   14 10 2003. Añadido para nuevo tipo de presupuestos OCT.

'DOCF FIN -----------------------------------------------------------
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Then
    
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub TxtFechaPedido_KeyPress(KeyAscii As Integer)
'DOCF INICIO --------------------------------------------------------
'
'DESCRIPCION :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'PARAMETROS :
'   Ninguno.
'RETORNO :
'   Ninguno.
'PROCESO :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/10     Jose.   14 10 2003. Añadido para nuevo tipo de presupuestos OCT.

'DOCF FIN -----------------------------------------------------------
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "-" Or Chr$(KeyAscii) = "/" Then
    
    Else
        KeyAscii = 0
    End If
    If Chr$(KeyAscii) = "-" Then KeyAscii = Asc("/") 'sustituye el guión por la barra.
End Sub

Private Sub TxtFechaSalida_KeyPress(KeyAscii As Integer)
'DOCF INICIO --------------------------------------------------------
'
'DESCRIPCION :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'PARAMETROS :
'   Ninguno.
'RETORNO :
'   Ninguno.
'PROCESO :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/10     Jose.   14 10 2003. Añadido para nuevo tipo de presupuestos OCT.

'DOCF FIN -----------------------------------------------------------
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "-" Or Chr$(KeyAscii) = "/" Then
    
    Else
        KeyAscii = 0
    End If
    If Chr$(KeyAscii) = "-" Then KeyAscii = Asc("/") 'sustituye el guión por la barra.
End Sub

Private Sub TxtFechaToma_KeyPress(KeyAscii As Integer)
'DOCF INICIO --------------------------------------------------------
'
'DESCRIPCION :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'PARAMETROS :
'   Ninguno.
'RETORNO :
'   Ninguno.
'PROCESO :
'   No permite introducir ningún carácter que no sea un dígito numérico, un guión o '/'.
'   Convierte además el guión por la barra '/' y no deja meter más de 10 caracteres.
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/10     Jose.   14 10 2003. Añadido para nuevo tipo de presupuestos OCT.

'DOCF FIN -----------------------------------------------------------
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "-" Or Chr$(KeyAscii) = "/" Then
    
    Else
        KeyAscii = 0
    End If
    If Chr$(KeyAscii) = "-" Then KeyAscii = Asc("/") 'sustituye el guión por la barra.
End Sub

Private Sub TxtImporteAval_Change()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Visualiza en el caption del Label la caja de texto en euros y con formato
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
   If TxtImporteAval = "" Then
   Else
      LblEuros.Caption = Val(CDbl(TxtImporteAval) * 166.386)
   End If
    
End Sub

Private Sub TxtImporteAval_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros, ","
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) >= "," Then
      If Chr$(KeyAscii) = "." Then KeyAscii = Asc(",")
    Else
        KeyAscii = 0
    End If

End Sub

Private Sub TxtImporteAval_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Asigna a la caja de texto lo que devuelve la funcion PonNumero
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    'TxtImporteAval = PonNumero(TxtImporteAval)

End Sub
Private Sub TxtBfoIndustrial_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros, ",", "."
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Or Chr$(KeyAscii) = "%" Then
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub TxtBfoIndustrial_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Sustituye de la caja de texto el "%" por ""
'   Comprueba que el numero de porcentage no supere el 99%
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
 
    Dim Num As Double

    TxtBfoIndustrial = SustituirPor(TxtBfoIndustrial, "%", "")
    Num = CadenaADouble(TxtBfoIndustrial)

    If Num > 99 Then
        Num = 0
        Call Informacion("El Beneficio Industrial no puede superar el 99%.")
    End If
    TxtBfoIndustrial = Num & "%"
End Sub

Private Sub TxtDescuento_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros, ",", "."
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Or Chr$(KeyAscii) = "%" Then
    Else
        KeyAscii = 0
    End If

End Sub

Private Sub TxtDescuento_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Sustituye de la caja de texto el "%" por ""
'   Comprueba que el numero de porcentage no supere el 99%
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim Num As Double

    TxtDescuento = SustituirPor(TxtDescuento, "%", "")
    Num = CadenaADouble(TxtDescuento)

    If Num > 99 Then
        Call Informacion("El descuento no puede superar el 99%.")
        Num = 0
    End If
    TxtDescuento = Num & "%"

End Sub

Private Sub TxtGastosGenerales_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros, ",", "."
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Or Chr$(KeyAscii) = "%" Then
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub TxtGastosGenerales_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Sustituye de la caja de texto el "%" por "" asigna el valor numerico a la variable
'   Comprueba que el numero de porcentage no supere el 99% y vuelve a dejar la caja como estaba.
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    Dim Num As Double

    TxtGastosGenerales = SustituirPor(TxtGastosGenerales, "%", "")
    Num = CadenaADouble(TxtGastosGenerales)

    If Num > 99 Then
        Call Informacion("Los gastos generales no pueden ser superiores al 99%.")
        Num = 0
    End If
    TxtGastosGenerales = Num & "%"
    
End Sub


Private Sub TxtIVA_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros, ",", "."
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Or Chr$(KeyAscii) = "%" Then
    Else
        KeyAscii = 0
    End If

End Sub

Private Sub TxtIVA_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Sustituye de la caja de texto el "%" por ""
'   Comprueba que el numero de porcentage no supere el 99%
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim Num As Double

    TxtIVA = SustituirPor(TxtIVA, "%", "")
    Num = CadenaADouble(TxtIVA)

    If Num > 99 Then
        Call Informacion("El IVA  no puede ser superior al 99%.")
        Num = 0
    End If
    TxtIVA = Num & "%"

End Sub

Private Sub TxtMeses_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Then
    Else
        KeyAscii = 0
    End If

End Sub

Private Sub TxtMeses_LostFocus()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Asigna a la caja de texto lo que devuelve la funcion PonNumero
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    TxtMeses = PonNumero(TxtMeses)

End Sub

Private Sub CmbTipo_Change()
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Hace una busqueda incremental en el Combo con lo que estamos escribiendo en el
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Static YaEstoy As Boolean

    On Local Error Resume Next

    If EnEdicion Then
        If Not YaEstoy Then
            YaEstoy = True
            unCombo_Change CmbTipo.Text, CmbTipo
            YaEstoy = False
        End If
        Err = 0
    End If

End Sub

Private Sub CmbTipo_KeyDown(KeyCode As Integer, Shift As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba la tecla presionada y realiza una operacion.
'
'PARAMETROS :
'   KeyCode  --> Codigo Ascii del caracter marcado
'   Shift    --> Si esta presionada la mayuscula
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    unCombo_KeyDown KeyCode

End Sub

Private Sub CmbTipo_KeyPress(KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba la tecla presionada y realiza una operacion
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii de la tecla presionada
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    unCombo_KeyPress KeyAscii

End Sub


Private Sub TxtPA_Change(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Guarda en una caja de texto el valor de la suma de otras
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

'Format(RsPyT!PrecioUnitario, "#,###")
    TxtPA(4) = Round(NoNumNulo(TxtPA(0)) + NoNumNulo(TxtPA(1)) + NoNumNulo(TxtPA(2)) + NoNumNulo(TxtPA(3)), 2) '"#,###"
    
End Sub

Private Sub TxtPA_KeyPress(Index As Integer, KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros, ",", "."
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Or Chr$(KeyAscii) = "%" Then
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub TxtPartidaAlzada_Change(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Da formato numerico al contenido del textbox (Está comentado, no hace nada)
'
'PARAMETROS :
'   Index  --> Identifica al control dentro del array al que pertenece
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    'TxtPartidaAlzada(Index) = Format(TxtPartidaAlzada(Index), "#,###,###,###")
End Sub

Private Sub TxtPartidaAlzada_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    Call Control_KeyDown(TxtPartidaAlzada(Index), KeyCode)
End Sub

Private Sub TxtPartidaAlzada_KeyPress(Index As Integer, KeyAscii As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Guarda en una caja de texto el valor de la suma de otras
'
'PARAMETROS :
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Or Chr$(KeyAscii) = "%" Then
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub TxtPEM_KeyPress(KeyAscii As Integer)
'Jose. 15 6 2005. Añadido para resolver un problema con las comas. Ahora solo quedan puntos.

    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Then
    Else
        KeyAscii = 0
    End If
    If Chr$(KeyAscii) = "," Then KeyAscii = Asc(".") 'sustituye el punto por la coma
    If Chr$(KeyAscii) = "." And InStr(1, Me.ActiveControl, ".") > 0 Then KeyAscii = 0
End Sub

Private Sub TxtPresupuesto_Change(Index As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Asigna al textbox TotalPresupuestado la suma de las distintas partidas del presupuesto
'
'PARAMETROS :
'   Index  --> Identifica al control dentro del array al que pertenece.
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    TxtPresupuesto(4) = Round(NoNumNulo(TxtPresupuesto(0)) + NoNumNulo(TxtPresupuesto(1)) + NoNumNulo(TxtPresupuesto(2)) + NoNumNulo(TxtPresupuesto(3)), 2)
    
End Sub

Private Sub TxtRiesgoConcedido_KeyPress(KeyAscii As Integer)
'DOCF INICIO --------------------------------------------------------
'
'DESCRIPCION :
'   No permite introducir ningún carácter que no sea un dígito numérico, un punto o una coma.
'   Convierte además el punto por una coma y no deja introducir más de una coma.
'PARAMETROS :
'   Ninguno.
'RETORNO :
'   Ninguno.
'PROCESO :
'   No permite introducir ningún carácter que no sea un dígito numérico, un punto o una coma.
'   Convierte además el punto por una coma y no deja introducir más de una coma.
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/10     Jose.   14 10 2003. Añadido para nuevo tipo de presupuestos OCT.

'DOCF FIN -----------------------------------------------------------
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Then
    
    Else
        KeyAscii = 0
    End If
    If Chr$(KeyAscii) = "." Then KeyAscii = Asc(",") 'sustituye el punto por la coma
    If Chr$(KeyAscii) = "," And InStr(1, Me.ActiveControl, ",") > 0 Then KeyAscii = 0 'No permite meter más de una coma.
End Sub

Private Sub TxtRiesgoSolicitado_KeyPress(KeyAscii As Integer)
'DOCF INICIO --------------------------------------------------------
'
'DESCRIPCION :
'   No permite introducir ningún carácter que no sea un dígito numérico, un punto o una coma.
'   Convierte además el punto por una coma y no deja introducir más de una coma.
'PARAMETROS :
'   Ninguno.
'RETORNO :
'   Ninguno.
'PROCESO :
'   No permite introducir ningún carácter que no sea un dígito numérico, un punto o una coma.
'   Convierte además el punto por una coma y no deja introducir más de una coma.
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2003/10     Jose.   14 10 2003. Añadido para nuevo tipo de presupuestos OCT.

'DOCF FIN -----------------------------------------------------------
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Then
    
    Else
        KeyAscii = 0
    End If
    If Chr$(KeyAscii) = "." Then KeyAscii = Asc(",") 'sustituye el punto por la coma
    If Chr$(KeyAscii) = "," And InStr(1, Me.ActiveControl, ",") > 0 Then KeyAscii = 0 'No permite meter más de una coma.
End Sub

Private Sub TxtValor_Change(Index As Integer)
    TxtTotalOfertaEconomica(0) = CadenaADouble(TxtValor(0)) + CadenaADouble(TxtValor(1)) + CadenaADouble(TxtValor(2)) + CadenaADouble(TxtValor(3)) + CadenaADouble(TxtValor(4)) _
         + CadenaADouble(TxtValor(11)) + CadenaADouble(TxtValor(10)) + CadenaADouble(TxtValor(14))
    TxtTotalOfertaEconomica(1) = CadenaADouble(TxtValor(16)) + CadenaADouble(TxtValor(18)) + CadenaADouble(TxtValor(20)) + CadenaADouble(TxtValor(22))
End Sub

Private Sub TxtValor_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Call Control_KeyDown(TxtValor(Index), KeyCode)

End Sub


Private Sub TxtValor_KeyPress(Index As Integer, KeyAscii As Integer)
    If (Chr$(KeyAscii) >= "0" And Chr$(KeyAscii) <= "9") Or KeyAscii = 8 Or Chr$(KeyAscii) = "," Or Chr$(KeyAscii) = "." Then
    Else
        KeyAscii = 0
    End If
    If KeyAscii = 13 Then
        Call TxtValor_LostFocus(Index)
    End If

End Sub


Private Sub TxtValor_LostFocus(Index As Integer)
    
    
    On Error Resume Next
    TxtValor(Index) = CadenaADouble(TxtValor(Index))
    If Val(txtPEM) > 0 Then
        Select Case Index
            Case 0
                TxtValor(5) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 1
                TxtValor(6) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 2
                TxtValor(7) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 3
                TxtValor(8) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 4
                TxtValor(9) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 11
                TxtValor(12) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 10
                TxtValor(13) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 14
                TxtValor(15) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 16
                TxtValor(17) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 18
                TxtValor(19) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 20
                TxtValor(21) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
            Case 22
                TxtValor(23) = Round(((100 * Val(TxtValor(Index))) / txtPEM), 2)
                
            Case 5
                TxtValor(0) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 6
                TxtValor(1) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 7
                TxtValor(2) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 8
                TxtValor(3) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 9
                TxtValor(4) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 12
                TxtValor(11) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 13
                TxtValor(10) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 15
                TxtValor(14) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 17
                TxtValor(16) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 19
                TxtValor(18) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 21
                TxtValor(20) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
            Case 23
                TxtValor(22) = Round(((txtPEM * Val(TxtValor(Index))) / 100), 2)
        End Select
        TxtValor(Index).Text = Round(CadenaADouble(TxtValor(Index)), 2)
    End If

End Sub

Private Sub TxtPA_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Call Control_KeyDown(TxtPA(Index), KeyCode)

End Sub
Private Sub TxtPresupuesto_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que solo se tecleen numeros
'
'PARAMETROS :
'   KeyAscii  --> Valor Ascii del caracter tecleado
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : EVENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Call Control_KeyDown(TxtPresupuesto(Index), KeyCode)

End Sub

'Eva:Nuevo 12 12 2001
Sub ArrImpresionPresup(frmOrigen As Form, _
                       vPreliminar As Boolean, _
                       pPresupuesto As String, _
                       pPeticionario As String, _
                       pNombreObra As String, _
                       pDon As String, _
                       pPersona As String, _
                       pFecha As String, _
                       pConcepto As String, _
                       pDescuento As Double, _
                       pIVA As Double, _
                       pMostrar As Boolean, _
                       Optional pImprimirTodo As Boolean = False, _
                       Optional Logotipo As Byte = 0)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un base de datos de Access con una tabla para lanzar un informe de CrystalReport
'
'PARAMETROS :
'   frmOrigen      --> Formulario de Origen
'   vPreliminar    --> Indica si se a mostrar una presentacion preliminar del listado
'   pPresupuesto   --> Cadena an la que se guardara un texto de la obra a imprimir
'   pPeticionario  --> No se utiliza
'   pNombreObra    --> No se utiliza
'   pDon           --> No se utiliza
'   pPersona       --> No se utiliza
'   pFecha         --> Valor que se utiliza para asignarselo a un campo Fecha de la tabla de Access creada
'   pConcepto      --> No se utiliza
'   pDescuento     --> Valor que se utiliza para asignarselo a un campo Descuento de la tabla de Access creada
'   pIVA           --> No se utiliza
'   pMostrar       --> No se utiliza
'
'RETORNO :
'
'PROCESO :
'   1) Crea un base de datos de Access llamada "Presup.mdb"
'   2) Dependiendo del Tab en el que estemos guarda valores
'      -Si el Tab es el de "Ampliaciones" guarda valores del recordset RsMant(2)
'      -Si es otro distinto lee de variables globales y cajas de texto
'   3) Si la variable pImprimirTodo es .T.
'      -Crea un tabla en Access llamada "Detalle" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de las obras que tengan el valor de la
'       variable global m_IdObra
'      -Sino, Crea un tabla en Access llamada "Detalle" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de los presupuestos que en su Id tengas
'       el valor de la variable IdPresu asignado anteriormente
'   4) Crea un recordset de "Presupuestos", "PresupuestosyTarifas", "Materiales", "Tarifas", "Titulos" de los
'      presupuestos no aceptados y de los presupuestos que en su Id tengas el valor de la variable global
'      m_IdPresupuestos
'   5) Recorre le recordset con un While y actualiza el campo Detalle!Titulos_DescLarga con el valor del campo al que
'      correspondencia en el recordset y lo hace en los registros que cumplan Titulos_Codigo = RsTitulos!Titulos_Codigo
'   6) Añade a la tabla de Access "Detalle" varios campos necesarios para la impresion
'   7) Crea un recordset de "Detalle" y selecciona los registros cuyo codigo de tarifa este entre 8000 y 9000
'   8) Actualiza el campo CondicionesGenerales de la tabla de Access con un 1 en todos los registros del recordset
'   9) Crea un recordset de "Detalle" con todos los registros actuliza los registros recorriendolos con un While
'      y modificando el campo Detalle!Orden
'  10) Actualiza varios campos mas de la tabla con valores de variables, cajas de texto y CheckBox del formulario
'  11) Prepara varias cadenas las cuales va a sacar en el listado y dependiendo del valor de la variable pImprimirTodo
'      y de varios controles del formulario lanza varios informes
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim ss As String
    Dim dbBFact As ClsTablaAccess
    Dim NomBase2 As String
    Dim Rs As New Recordset
    Dim Nombase As String
    Dim mTitulo As String
    Dim RsSucursales As New Recordset
    
    Nombase = m_Unidad & "\TEMP\Presup"
    Nombase = SufijoNombase(Nombase) & ".mdb"
    Set dbBFact = wsAplicacion.CreateDatabase(Nombase)
    dbBFact.CloseA

    Screen.MousePointer = 11

    If Not FrmOpciones.ActivarImpresora Then
        Exit Sub
    End If
    
    Screen.MousePointer = 11
    Dim IdPresu As Long
    Dim Obra As String

    If MTab.Tab = 7 And RsMant(2).RecordCount > 0 Then
        IdPresu = RsMant(2)!IdPresupuesto
        Obra = RsMant(2)!NombreObra
    Else
        IdPresu = m_IDPresupuesto
        Obra = TxtNombreObra
    End If
    
    If pConcepto <> "" Then
        mTitulo = "PROGRAMA - PRESUPUESTO PARA " & pConcepto
    Else
        mTitulo = "PROGRAMA - PRESUPUESTO PARA EL CONTROL DE CALIDAD"
    End If

    If pImprimirTodo Then
        Call dbPrincipal.ExecuteEx("SELECT Presupuestos.IdObra,PresupuestosYTarifas.Euros,Titulos.Codigo AS Titulos_Codigo, Titulos.DescLarga AS Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo AS Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto + PresupuestosyTarifas.Concepto2 + PresupuestosyTarifas.Concepto3 + PresupuestosyTarifas.Concepto4  else Tarifas.DescCorta end As Tarifas_DescLarga, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, PresupuestosyTarifas.PrecioUnitario as PrecioUnitario, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4" _
           & " FROM Presupuestos INNER JOIN (Titulos INNER JOIN ((Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial) INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Titulos.IDTitulo = Tarifas.IDTitulo) ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto" _
           & " WHERE  PresupuestosyTarifas.Aceptada = 1 And not(PresupuestosYTarifas.Imprimir=0) And Presupuestos.IDObra=" & m_IDObra & " and Presupuestos.Aceptado=1" _
           & " GROUP BY PresupuestosYTarifas.Euros,Presupuestos.IdObra,PresupuestosyTarifas.Concepto,Titulos.Codigo, Titulos.DescLarga, Materiales.DescMaterial, Tarifas.Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3,Tarifas.DescCorta, PresupuestosyTarifas.Concepto4" _
           & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Detalle", Nombase)

    Else
        'Modificacion----------------------------------------------------------------------------------
        'LCC
        Call dbPrincipal.ExecuteEx("SELECT Titulos.Codigo AS Titulos_Codigo,PresupuestosYTarifas.Euros,PresupuestosyTarifas.IdPresupuesto, Titulos.DescLarga AS Titulos_DescLarga, Materiales.DescMaterial,Materiales.IdMaterial,Tarifas.IdTarifa, Tarifas.Codigo AS Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto + PresupuestosyTarifas.Concepto2 + PresupuestosyTarifas.Concepto3 + PresupuestosyTarifas.Concepto4  else Tarifas.DescCorta end As Tarifas_DescLarga, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4" _
           & " FROM Titulos INNER JOIN ((Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial) INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Titulos.IDTitulo = Tarifas.IDTitulo" _
           & " WHERE  PresupuestosyTarifas.Aceptada = 1 And not(PresupuestosYTarifas.Imprimir=0) and (((PresupuestosyTarifas.IDPresupuesto)=" & IdPresu & "))" _
           & " GROUP BY Materiales.IdMAterial,Tarifas.IdTarifa,Tarifas.DescCorta,PresupuestosYTarifas.Imprimir,PresupuestosYTarifas.Euros,PresupuestosyTarifas.IdPresupuesto,PresupuestosyTarifas.PrecioUnitario,PresupuestosyTarifas.Concepto3,PresupuestosyTarifas.Concepto4,PresupuestosyTarifas.Concepto2,Titulos.Codigo,Titulos.DescLarga,PresupuestosyTarifas.Concepto ,Materiales.DescMaterial, Tarifas.Codigo  ORDER BY Titulos.Codigo, Tarifas.Codigo", "Detalle", Nombase)
        
    End If
    
    Dim RsTitulos As New Recordset
    Call mClsPresupuestos.PueblaRecordset(RsTitulos, "SELECT Titulos.Codigo As Titulos_Codigo,PresupuestosYTarifas.Euros, Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial,Materiales.IdMaterial,Tarifas.IdTarifa, Tarifas.Codigo As Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4" _
       & " FROM Titulos INNER JOIN ((Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial) INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Titulos.IDTitulo = Tarifas.IDTitulo" _
       & " WHERE PresupuestosyTarifas.Aceptada = 0  And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & ")) and right(Tarifas.Codigo,3)='000'" _
       & " ORDER BY  Titulos.Codigo, Tarifas.Codigo")
    
    While Not RsTitulos.EOF
        Call dbBFact.Execute("Update Detalle set Titulos_DescLarga='" & RsTitulos!tarifas_desclarga & "' WHERE Titulos_Codigo=" & RsTitulos!Titulos_Codigo & "")
        RsTitulos.MoveNext
    Wend
    RsTitulos.Close
    Set RsTitulos = Nothing
    
    'Insertar la fecha de emisión del presupuesto
    Dim tbDetalle As ADOX.Table
    Dim Campo As ADOX.Column
    Set dbBFact = wsAplicacion.OpenDatabase(Nombase, True)
    
    Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("Fecha", adVarChar)
    tbDetalle.Columns.Append Campo
    Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("Descuento", adDouble)
    tbDetalle.Columns.Append Campo
    dbBFact.Execute "Update Detalle Set Descuento='" & pDescuento & "' "
    'Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("TotalPresupuesto", adInteger)
    tbDetalle.Columns.Append Campo
    Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("Nota", adLongVarChar)
    tbDetalle.Columns.Append Campo
    Set Campo = dbBFact.CreateField("Orden", adInteger)
    tbDetalle.Columns.Append Campo
    ''Eva 6 2 2002
    Set Campo = dbBFact.CreateField("CondicionesGenerales", adInteger)
    tbDetalle.Columns.Append Campo
    dbBFact.Execute "Update Detalle Set CondicionesGenerales=0 "
    Dim RsCondiciones As New Recordset
    Call dbBFact.PueblaRecordset(RsCondiciones, "SELECT * FROM Detalle WHERE Tarifas_Codigo>=8000 and Tarifas_Codigo<9000")

    If Not RsCondiciones.EOF Then
        dbBFact.Execute "Update Detalle Set CondicionesGenerales=1 "
    End If

    RsCondiciones.Close
    Set RsCondiciones = Nothing
    'Ordenar Tarifas
    Dim Cont As Integer
    Dim Material As String
    
    Call dbBFact.PueblaRecordset(RsCondiciones, "SELECT * FROM Detalle ORDER BY Tarifas_Codigo")

    If Not RsCondiciones.EOF Then
        Cont = 1
        Material = RsCondiciones!DescMaterial
        While Not RsCondiciones.EOF

            If Material <> RsCondiciones!DescMaterial Then
                Cont = Cont + 1
            End If

            If Not RsCondiciones.EOF Then Material = RsCondiciones!DescMaterial
            dbBFact.Execute "Update Detalle Set Orden=" & Cont & " WHERE Titulos_Codigo=" & RsCondiciones!Titulos_Codigo & " and Tarifas_Codigo=" & RsCondiciones!Tarifas_Codigo & " and DescMaterial='" & RsCondiciones!DescMaterial & "'"
            RsCondiciones.MoveNext
        Wend
    End If

    RsCondiciones.Close
    Set RsCondiciones = Nothing
    ''Fin 6 2 2002
    dbBFact.Execute "Update Detalle Set Fecha='" & pFecha & "'"
    dbBFact.Execute "Update Detalle Set TotalPresupuesto = " & ChkTotalPresupuesto.Value
    dbBFact.Execute "Update Detalle Set Nota = '" & TxtNota & "'"

    '''''''
    ''Fin Títulos
    If dbPrincipal.RecordsAffected = 0 Then
        Screen.MousePointer = 0
        Alerta ("El presupuesto o plantilla no tiene detalle de tarifas.")
        Exit Sub
    Else
        Screen.MousePointer = 0
        On Error GoTo Errorimprimir
        Call TitulosCorreo("Presupuestos")
        Dim Descripcion As String
        Dim UsuarioCreacion As String, Persona1 As String, Persona2 As String
        UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        
        Persona1 = "Iván del Castillo García"
        Descripcion = "Jefe de Contratación"
        Dim Preeliminar As Integer

        If vPreliminar = True Then
            Preeliminar = 1
        Else
            Preeliminar = 0
        End If

        Dim I As Integer
        Dim Salir As Boolean
        Dim Cad As String, CadObra As String
        Cad = ""
       
        If MTab.Tab = 7 And pImprimirTodo = False Then 'AMPLIACIONES
            Dim RsAmpliar As New Recordset
            Call mClsPresupuestos.PueblaRecordset(RsAmpliar, "SELECT Presupuestos.AmpliarUnidades FROM Presupuestos INNER JOIN  PresupuestosAmpliacion ON   Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo WHERE (Presupuestos.Ampliacion = 1) and (IdPresupuestoHijo=" & RsMant(2)!IdPresupuesto & ") and (IdPresupuestoPadre=" & m_IDPresupuesto & ") ")
            Dim k As Integer

            If RsAmpliar.EOF Then
                CadObra = TxtNombreObra
                pPresupuesto = Obra '+ pPresupuesto 'Jose. 7 9 2004. Comentado
            Else

                If RsAmpliar!AmpliarUnidades = 1 Then

                    'Si Ampliar Unidades
                    For I = 1 To Len(Obra)

                        If Mid(Obra, I, 1) <> ":" Then
                            Cad = Cad + Mid(Obra, I, 1)
                        Else

                            For k = I To Len(Obra)

                                If Mid(Obra, k, 1) = ":" Then
                                    Salir = True
                                End If

                                If Salir Then
                                    Exit For
                                End If

                            Next

                        End If

                        If Salir Then
                            CadObra = TxtNombreObra
                            pPresupuesto = Cad + "  : " + pPresupuesto
                            Exit For
                        End If

                    Next

                Else

                    For I = 1 To Len(Obra)

                        If Mid(Obra, I, 1) <> ":" Then
                            Cad = Cad + Mid(Obra, I, 1)
                        Else
                            Salir = True
                        End If

                        If Salir Then
                            CadObra = TxtNombreObra
                            pPresupuesto = Cad + " inicial " + pPresupuesto
                            Exit For
                        End If

                    Next
                
                End If
                
                If CadObra = "" Then
                    CadObra = Obra
                End If

                RsAmpliar.Close
                Set RsAmpliar = Nothing
            End If

        Else
            CadObra = TxtNombreObra
        End If

        Dim FormasPago As String

        If FrmMUnPresupuesto.ChkFormaPago.Value = 0 Then

            FormasPago = ""
        Else

            FormasPago = FrmMUnPresupuesto.CmbFormaPago
        End If

        If FormasPago = "" Then FormasPago = "  A convenir por ambas partes."
        Call mClsSucursales.PueblaRecordset(RsSucursales, "SELECT codigo FROM sucursales") 'Coge todas y en el orden de la BD.

        'Antonio 25/6/03 ----------------------------------------------------------------------------
        If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_G" Then 'Jose. 20 7 2006. Joer, faltaba UCase(left(....)). Ahora hay 4 dominios DOMINIO_Gx.
                
            If ChkLogotipoAmpl.Value Then
                Logotipo = 1
            ElseIf ChkLogotipo.Value Then
                Logotipo = 1
            Else
                Logotipo = 0
            End If
                
            'Al loro a la tontería, estamos en el primer registro del rs y nunca nos movemos de ahí. El 1º registro en la BD tiene Codigo 1.
            If RsSucursales!Codigo = 3 Then 'Ronda
                If pImprimirTodo Then
                    
                    pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                    If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", , "Logotipo", "'" & Logotipo & "'")
                        Else
                            Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If

                    Else

                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInforme("PresupuestosEurosGotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        Else
                            Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If
                    End If

                ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
    
                    End If

                Else

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "' PROGRAMA - PRESUPUESTO PARA EL " & pConcepto & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "' PROGRAMA - PRESUPUESTO PARA EL " & pConcepto & "'", "Logotipo", "'" & Logotipo & "'")
                    End If
                End If

            ElseIf RsSucursales!Codigo = 1 Then 'Málaga

                If pImprimirTodo Then
                    pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                    If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If

                        Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else

                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        Else
                            Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If
                    End If

                ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    End If

                Else

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInforme("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInforme("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    End If
                End If
            End If
            
        ElseIf InStr(m_NombreDominio, "DOMINIO_LCalidad") > 0 Then
        
            Dim postPresupuesto As String
            
            postPresupuesto = ""
            'Chapuza
            If CmbFirma.ItemData(CmbFirma.ListIndex) = 3 Then
                postPresupuesto = "a"
            End If
            If CmbFirma.ItemData(CmbFirma.ListIndex) = 4 Then
                postPresupuesto = "b"
            End If

            If pImprimirTodo Then
                If CadObra & "" = "" Then
                End If

                pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                    Call LanzarInforme("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                Else
                    Call LanzarInforme("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'")
               
                End If

            ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                Call LanzarInforme("PresupuestosEuros3" + postPresupuesto + ".rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")

            Else

'                    If UCase(m_NombreDominio) <> "DOMINIO_LCALIDAD" Then
                    Call LanzarInforme("PresupuestosEuros1" + postPresupuesto + ".rpt", Nombase, Preeliminar, Me.Caption, 1, False, _
                        "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", _
                        "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", _
                        "TxtAntecedentes", "'       " & TxtPeticionario & _
                        ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente presupuesto para la realización" _
                        & " de la obra de referencia.'", _
                        "Firma1", "'" & Persona1 & "'", _
                        "Firma11", "'" & Descripcion & "'", _
                        "FormaPago", "'" & FormasPago & "'", _
                        "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
'                    Else
'                        Call LanzarInforme("PresupuestosEuros1.rpt", Nombase, Preeliminar, Me.Caption, 1, False, _
'                            "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", _
'                            "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", _
'                            "TxtAntecedentes", "'       " & TxtPeticionario & _
'                            ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " _
'                            & pConcepto & " de la obra de referencia.'", _
'                            "Firma1", "'" & Persona1 & "'", _
'                            "Firma11", "'" & Descripcion & "'", _
'                            "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", _
'                            "Logotipo", "'" & Logotipo & "'")
'                    End If
            End If

        Else 'Es cualquier otro dominio

            If pImprimirTodo Then
               
                pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                    Call LanzarInforme("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                Else
                    Call LanzarInforme("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'")
               
                End If

            ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                Call LanzarInforme("PresupuestosEuros3.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        
            Else
                Call LanzarInforme("PresupuestosEuros1.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "' PROGRAMA - PRESUPUESTO PARA EL " & pConcepto & "'", "Logotipo", "'" & Logotipo & "'")
            End If
        End If

        Me.Enabled = True
        Screen.MousePointer = 0
    End If

    ' Hecho por alberto y Jose el dia 24/09/03
    RsSucursales.Close
    dbBFact.CloseA
    Exit Sub
Errorimprimir:
    Alerta ("Se ha producido un error al imprimir, aseguresé de que la impresora está configurada correctamente.")

End Sub

'Eva:Nuevo 12 12 2001
Sub ArrImpresionPresupPDF(frmOrigen As Form, _
                          vPreliminar As Boolean, _
                          pPresupuesto As String, _
                          pPeticionario As String, _
                          pNombreObra As String, _
                          pDon As String, _
                          pPersona As String, _
                          pFecha As String, _
                          pConcepto As String, _
                          pDescuento As Double, _
                          pIVA As Double, _
                          pMostrar As Boolean, _
                          Optional pImprimirTodo As Boolean = False, _
                          Optional Logotipo As Byte = 0)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un base de datos de Access con una tabla para generar un fichero PDF apartir de un informe de CrystalReport
'
'PARAMETROS :
'   frmOrigen      --> Formulario de Origen
'   vPreliminar    --> Indica si se a mostrar una presentacion preliminar del listado
'   pPresupuesto   --> Cadena an la que se guardara un texto de la obra a imprimir
'   pPeticionario  --> No se utiliza
'   pNombreObra    --> No se utiliza
'   pDon           --> No se utiliza
'   pPersona       --> No se utiliza
'   pFecha         --> Valor que se utiliza para asignarselo a un campo Fecha de la tabla de Access creada
'   pConcepto      --> No se utiliza
'   pDescuento     --> Valor que se utiliza para asignarselo a un campo Descuento de la tabla de Access creada
'   pIVA           --> No se utiliza
'   pMostrar       --> No se utiliza
'
'RETORNO :
'
'PROCESO :
'   1) Crea un base de datos de Access llamada "Presup.mdb"
'   2) Dependiendo del Tab en el que estemos guarda valores
'      -Si el Tab es el de "Ampliaciones" guarda valores del recordset RsMant(2)
'      -Si es otro distinto lee de variables globales y cajas de texto
'   3) Si la variable pImprimirTodo es .T.
'      -Crea un tabla en Access llamada "Detalle" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de las obras que tengan el valor de la
'       variable global m_IdObra
'      -Sino, Crea un tabla en Access llamada "Detalle" con las tabla de Sql "Presupuestos", "PresupuestosyTarifas",
'       "Materiales", "Tarifas", "Titulos" de los presupuestos aceptados y de los presupuestos que en su Id tengas
'       el valor de la variable IdPresu asignado anteriormente
'   4) Crea un recordset de "Presupuestos", "PresupuestosyTarifas", "Materiales", "Tarifas", "Titulos" de los
'      presupuestos no aceptados y de los presupuestos que en su Id tengas el valor de la variable global
'      m_IdPresupuestos
'   5) Recorre le recordset con un While y actualiza el campo Detalle!Titulos_DescLarga con el valor del campo al que
'      correspondencia en el recordset y lo hace en los registros que cumplan Titulos_Codigo = RsTitulos!Titulos_Codigo
'   6) Añade a la tabla de Access "Detalle" varios campos necesarios para la impresion
'   7) Crea un recordset de "Detalle" y selecciona los registros cuyo codigo de tarifa este entre 8000 y 9000
'   8) Actualiza el campo CondicionesGenerales de la tabla de Access con un 1 en todos los registros del recordset
'   9) Crea un recordset de "Detalle" con todos los registros actuliza los registros recorriendolos con un While
'      y modificando el campo Detalle!Orden
'  10) Actualiza varios campos mas de la tabla con valores de variables, cajas de texto y CheckBox del formulario
'  11) Prepara varias cadenas las cuales va a sacar en el listado y dependiendo del valor de la variable pImprimirTodo
'      y de varios controles del formulario lanza varios informes
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim ss As String
    Dim dbBFact As ClsTablaAccess
    Dim NomBase2 As String
    Dim Rs As New Recordset
    Dim Nombase As String
    Dim mTitulo As String
    Dim RsSucursales As New Recordset
    
    Nombase = m_Unidad & "\TEMP\Presup"
    Nombase = SufijoNombase(Nombase) & ".mdb"
    Set dbBFact = wsAplicacion.CreateDatabase(Nombase)
    dbBFact.CloseA

    Screen.MousePointer = 11

    If Not FrmOpciones.ActivarImpresora Then
        Exit Sub
    End If
    
    Screen.MousePointer = 11
    Dim IdPresu As Long
    Dim Obra As String

    If MTab.Tab = 7 Then
        IdPresu = RsMant(2)!IdPresupuesto
        Obra = RsMant(2)!NombreObra
    Else
        IdPresu = m_IDPresupuesto
        Obra = TxtNombreObra
    End If
    
    If pConcepto <> "" Then
        mTitulo = "PROGRAMA - PRESUPUESTO PARA " & pConcepto
    Else
        mTitulo = "PROGRAMA - PRESUPUESTO PARA EL CONTROL DE CALIDAD"
    End If

    If pImprimirTodo Then
        Call dbPrincipal.ExecuteEx("SELECT Presupuestos.IdObra,PresupuestosYTarifas.Euros,Titulos.Codigo AS Titulos_Codigo, Titulos.DescLarga AS Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo AS Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto + PresupuestosyTarifas.Concepto2 + PresupuestosyTarifas.Concepto3 + PresupuestosyTarifas.Concepto4  else Tarifas.DescCorta end As Tarifas_DescLarga, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, PresupuestosyTarifas.PrecioUnitario as PrecioUnitario, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4" _
           & " FROM Presupuestos INNER JOIN (Titulos INNER JOIN ((Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial) INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Titulos.IDTitulo = Tarifas.IDTitulo) ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto" _
           & " WHERE  PresupuestosyTarifas.Aceptada = 1 And not(PresupuestosYTarifas.Imprimir=0) And Presupuestos.IDObra=" & m_IDObra & " and Presupuestos.Aceptado=1" _
           & " GROUP BY PresupuestosYTarifas.Euros,Presupuestos.IdObra,PresupuestosyTarifas.Concepto,Titulos.Codigo, Titulos.DescLarga, Materiales.DescMaterial, Tarifas.Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3,Tarifas.DescCorta, PresupuestosyTarifas.Concepto4" _
           & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Detalle", Nombase)

    Else
        'Modificacion----------------------------------------------------------------------------------
        'LCC
        Call dbPrincipal.ExecuteEx("SELECT Titulos.Codigo AS Titulos_Codigo,PresupuestosYTarifas.Euros,PresupuestosyTarifas.IdPresupuesto, Titulos.DescLarga AS Titulos_DescLarga, Materiales.DescMaterial,Materiales.IdMaterial,Tarifas.IdTarifa, Tarifas.Codigo AS Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto + PresupuestosyTarifas.Concepto2 + PresupuestosyTarifas.Concepto3 + PresupuestosyTarifas.Concepto4  else Tarifas.DescCorta end As Tarifas_DescLarga, Sum(PresupuestosyTarifas.NumeroUnidades) AS NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, Sum(PresupuestosyTarifas.PrecioTotal) AS PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4" _
           & " FROM Titulos INNER JOIN ((Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial) INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Titulos.IDTitulo = Tarifas.IDTitulo" _
           & " WHERE  PresupuestosyTarifas.Aceptada = 1 And not(PresupuestosYTarifas.Imprimir=0) and (((PresupuestosyTarifas.IDPresupuesto)=" & IdPresu & "))" _
           & " GROUP BY Materiales.IdMAterial,Tarifas.IdTarifa,Tarifas.DescCorta,PresupuestosYTarifas.Imprimir,PresupuestosYTarifas.Euros,PresupuestosyTarifas.IdPresupuesto,PresupuestosyTarifas.PrecioUnitario,PresupuestosyTarifas.Concepto3,PresupuestosyTarifas.Concepto4,PresupuestosyTarifas.Concepto2,Titulos.Codigo,Titulos.DescLarga,PresupuestosyTarifas.Concepto ,Materiales.DescMaterial, Tarifas.Codigo  ORDER BY Titulos.Codigo, Tarifas.Codigo", "Detalle", Nombase)
            
        'INTEC
        '        dbPrincipal.ExecuteEx "SELECT Distinct Clientes.CIF,Clientes.Direccion, Presupuestos.Peticionario as Cliente, Presupuestos.NombreObra,Presupuestos.PEM,Presupuestos.Tipo,Presupuestos.Oferta,Presupuestos.Plazo,Presupuestos.EstanquidadFachada,Presupuestos.EstanquidadCubierta,Presupuestos.ControlAcabado,Presupuestos.Otro,Titulos.Codigo As Titulos_Codigo,PresupuestosyTarifas.IDPresupuesto, " _
        '            & " Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial, Tarifas.Codigo As Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4, Presupuestos.CoberturaBasica,Presupuestos.EstanquidadFachadas,Presupuestos.EstanquidadCubiertas,Presupuestos.ControlAcabados,Presupuestos.Otros, Presupuestos.Don + ' ' + Presupuestos.Nombre + ' ' + Presupuestos.Apellidos As NombreCompleto,Presupuestos.CondicionesParticulares2, " & _
        '            "Presupuestos.CondicionesParticulares, Presupuestos.IdCondicionesPago, Presupuestos.IdFormaPago, CondicionesPago.CondicionesPago, CondicionesPago.CondicionesPago2, FormasPago.FormaPago, Presupuestos.FechaEmision " _
        '            & " FROM FormasPago FULL OUTER JOIN CondicionesPago RIGHT OUTER JOIN Titulos INNER JOIN Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa ON Titulos.IDTitulo = Tarifas.IDTitulo INNER JOIN Presupuestos ON PresupuestosyTarifas.IdPresupuesto = Presupuestos.IdPresupuesto ON CondicionesPago.IdCondicionesPago = Presupuestos.IdCondicionesPago ON FormasPago.IDFormaPago = Presupuestos.IdFormaPago FULL OUTER Join Clientes INNER JOIN Obras ON Clientes.IDCliente = Obras.IDCliente ON Presupuestos.IdObra = Obras.IdObra " _
        '            & " WHERE PresupuestosyTarifas.Aceptada = 1 And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & "))" _
        '            & " ORDER BY Titulos.Codigo, Tarifas.Codigo", "Presupuestos", NomBase
        '
        '-----------------------------------------------------------------------------------------------
    End If
    
    Dim RsTitulos As New Recordset
    Call mClsPresupuestos.PueblaRecordset(RsTitulos, "SELECT Titulos.Codigo As Titulos_Codigo,PresupuestosYTarifas.Euros, Titulos.DescLarga As Titulos_DescLarga, Materiales.DescMaterial,Materiales.IdMaterial,Tarifas.IdTarifa, Tarifas.Codigo As Tarifas_Codigo, case when PresupuestosyTarifas.Concepto + '' <> '' then PresupuestosyTarifas.Concepto else Tarifas.DescCorta end As Tarifas_DescLarga, PresupuestosyTarifas.NumeroUnidades, PresupuestosyTarifas.PrecioUnitario, PresupuestosyTarifas.PrecioTotal, PresupuestosyTarifas.Concepto2, PresupuestosyTarifas.Concepto3, PresupuestosyTarifas.Concepto4" _
       & " FROM Titulos INNER JOIN ((Materiales INNER JOIN Tarifas ON Materiales.IDMaterial = Tarifas.IDMaterial) INNER JOIN PresupuestosyTarifas ON Tarifas.IDTarifa = PresupuestosyTarifas.IDTarifa) ON Titulos.IDTitulo = Tarifas.IDTitulo" _
       & " WHERE PresupuestosyTarifas.Aceptada = 0  And (((PresupuestosyTarifas.IDPresupuesto)=" & m_IDPresupuesto & ")) and right(Tarifas.Codigo,3)='000'" _
       & " ORDER BY  Titulos.Codigo, Tarifas.Codigo")
    While Not RsTitulos.EOF
        Call dbBFact.Execute("Update Detalle set Titulos_DescLarga='" & RsTitulos!tarifas_desclarga & "' WHERE Titulos_Codigo=" & RsTitulos!Titulos_Codigo & "")
        RsTitulos.MoveNext
    Wend
    RsTitulos.Close
    Set RsTitulos = Nothing
    
    'Insertar la fecha de emisión del presupuesto
    Dim tbDetalle As ADOX.Table
    Dim Campo As ADOX.Column
    Set dbBFact = wsAplicacion.OpenDatabase(Nombase, True)
    
    Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("Fecha", adVarChar)
    tbDetalle.Columns.Append Campo
    Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("Descuento", adDouble)
    tbDetalle.Columns.Append Campo
    dbBFact.Execute "Update Detalle Set Descuento='" & pDescuento & "' "
    'Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("TotalPresupuesto", adInteger)
    tbDetalle.Columns.Append Campo
    Set tbDetalle = dbBFact.TableDefs("Detalle")
    Set Campo = dbBFact.CreateField("Nota", adLongVarChar)
    tbDetalle.Columns.Append Campo
    Set Campo = dbBFact.CreateField("Orden", adInteger)
    tbDetalle.Columns.Append Campo
    ''Eva 6 2 2002
    Set Campo = dbBFact.CreateField("CondicionesGenerales", adInteger)
    tbDetalle.Columns.Append Campo
    dbBFact.Execute "Update Detalle Set CondicionesGenerales=0 "
    Dim RsCondiciones As New Recordset
    Call dbBFact.PueblaRecordset(RsCondiciones, "SELECT * FROM Detalle WHERE Tarifas_Codigo>=8000 and Tarifas_Codigo<9000")

    If Not RsCondiciones.EOF Then
        dbBFact.Execute "Update Detalle Set CondicionesGenerales=1 "
    End If

    RsCondiciones.Close
    Set RsCondiciones = Nothing
    'Ordenar Tarifas
    Dim Cont As Integer
    Dim Material As String
    
    Call dbBFact.PueblaRecordset(RsCondiciones, "SELECT * FROM Detalle ORDER BY Tarifas_Codigo")

    If Not RsCondiciones.EOF Then
        Cont = 1
        Material = RsCondiciones!DescMaterial
        While Not RsCondiciones.EOF

            If Material <> RsCondiciones!DescMaterial Then
                Cont = Cont + 1
            End If

            If Not RsCondiciones.EOF Then Material = RsCondiciones!DescMaterial
            dbBFact.Execute "Update Detalle Set Orden=" & Cont & " WHERE Titulos_Codigo=" & RsCondiciones!Titulos_Codigo & " and Tarifas_Codigo=" & RsCondiciones!Tarifas_Codigo & " and DescMaterial='" & RsCondiciones!DescMaterial & "'"
            RsCondiciones.MoveNext
        Wend
    End If

    RsCondiciones.Close
    Set RsCondiciones = Nothing
    ''Fin 6 2 2002
    dbBFact.Execute "Update Detalle Set Fecha='" & pFecha & "'"
    dbBFact.Execute "Update Detalle Set TotalPresupuesto = " & ChkTotalPresupuesto.Value
    dbBFact.Execute "Update Detalle Set Nota = '" & TxtNota & "'"

    '''''''
    ''Fin Títulos
    If dbPrincipal.RecordsAffected = 0 Then
        Screen.MousePointer = 0
        Alerta ("El presupuesto o plantilla no tiene detalle de tarifas.")
        Exit Sub
    Else
        Screen.MousePointer = 0
        On Error GoTo Errorimprimir
        Call TitulosCorreo("Presupuestos")
        Dim Descripcion As String
        Dim UsuarioCreacion As String, Persona1 As String, Persona2 As String
        UsuarioCreacion = NoNulo(DameExpresion("IdPresupuesto", m_IDPresupuesto, "Presupuestos", "UsuarioCreacion"))
        
        Persona1 = "Iván del Castillo García"
        Descripcion = "Jefe de Contratación"
        Dim Preeliminar As Integer

        If vPreliminar = True Then
            Preeliminar = 1
        Else
            Preeliminar = 0
        End If

        Dim I As Integer
        Dim Salir As Boolean
        Dim Cad As String, CadObra As String
        Cad = ""
       
        If MTab.Tab = 7 And pImprimirTodo = False Then
            Dim RsAmpliar As New Recordset
            Call mClsPresupuestos.PueblaRecordset(RsAmpliar, "SELECT Presupuestos.AmpliarUnidades FROM Presupuestos INNER JOIN  PresupuestosAmpliacion ON   Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo WHERE (Presupuestos.Ampliacion = 1) and (IdPresupuestoHijo=" & RsMant(2)!IdPresupuesto & ") and (IdPresupuestoPadre=" & m_IDPresupuesto & ") ")
            Dim k As Integer

            If RsAmpliar.EOF Then
                CadObra = TxtNombreObra
                pPresupuesto = Obra + pPresupuesto
            Else

                If RsAmpliar!AmpliarUnidades = 1 Then

                    'Si Ampliar Unidades
                    For I = 1 To Len(Obra)

                        If Mid(Obra, I, 1) <> ":" Then
                            Cad = Cad + Mid(Obra, I, 1)
                        Else

                            For k = I To Len(Obra)

                                If Mid(Obra, k, 1) = ":" Then
                                    Salir = True
                                End If

                                If Salir Then
                                    Exit For
                                End If

                            Next

                        End If

                        If Salir Then
                            CadObra = TxtNombreObra
                            pPresupuesto = Cad + "  : " + pPresupuesto
                            Exit For
                        End If

                    Next

                Else

                    For I = 1 To Len(Obra)

                        If Mid(Obra, I, 1) <> ":" Then
                            Cad = Cad + Mid(Obra, I, 1)
                        Else
                            Salir = True
                        End If

                        If Salir Then
                            CadObra = TxtNombreObra
                            pPresupuesto = Cad + " inicial " + pPresupuesto
                            Exit For
                        End If

                    Next
                
                End If

                RsAmpliar.Close
                Set RsAmpliar = Nothing
            End If

        Else
            CadObra = TxtNombreObra
        End If

        Dim FormasPago As String

        If FrmMUnPresupuesto.ChkFormaPago.Value = 0 Then

            FormasPago = ""
        Else

            FormasPago = FrmMUnPresupuesto.CmbFormaPago
        End If

        If FormasPago = "" Then FormasPago = "  A convenir por ambas partes."
        Call mClsSucursales.PueblaRecordset(RsSucursales, "SELECT codigo FROM sucursales")

        'Antonio 25/6/03 ----------------------------------------------------------------------------
        If UCase(Left(m_NombreDominio, 9)) = "DOMINIO_G" Then
            If RsSucursales!Codigo = 3 Then
                If pImprimirTodo Then
                    If CadObra & "" = "" Then
                    End If

                    pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                    If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        Else
                            Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If

                    Else

                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInformePDF("PresupuestosEurosGotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        Else
                            Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If
                    End If

                ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
    
                    End If

                Else

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "' PROGRAMA - PRESUPUESTO PARA EL " & pConcepto & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "' PROGRAMA - PRESUPUESTO PARA EL " & pConcepto & "'", "Logotipo", "'" & Logotipo & "'")
                    End If
                End If

            ElseIf RsSucursales!Codigo = 1 Then

                If pImprimirTodo Then
                    If CadObra & "" = "" Then
                    End If

                    pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                    If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If

                        Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else

                        If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                            Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        Else
                            Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                        End If
                    End If

                ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    End If

                Else

                    If pConcepto = "ESTUDIO GEOTECNICO" Or pConcepto = "ESTUDIO GEOTÉCNICO" Then
                        Call LanzarInformePDF("PresupuestosEurosGeotecnico.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInformePDF("PresupuestosCalidad.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    End If
                End If
            End If

        Else 'Es cualquier otro dominio

            If RsSucursales!Codigo = 3 Then
                If pImprimirTodo Then
                    If CadObra & "" = "" Then
                    End If

                    pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                    If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                        Call LanzarInformePDF("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInformePDF("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                   
                    End If

                ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                    Call LanzarInformePDF("PresupuestosEuros3.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                            
                Else
                    Call LanzarInformePDF("PresupuestosEuros1.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita de LCC S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "' PROGRAMA - PRESUPUESTO PARA EL " & pConcepto & "'", "Logotipo", "'" & Logotipo & "'")
                End If

            ElseIf RsSucursales!Codigo = 1 Then

                If pImprimirTodo Then
                    If CadObra & "" = "" Then
                    End If

                    pPresupuesto = pPresupuesto & " (Presupuesto Global)"

                    If (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                        Call LanzarInformePDF("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                    Else
                        Call LanzarInformePDF("PresupuestosGlobal.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FrmMUnPresupuesto.CmbFormaPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
                   
                    End If

                ElseIf (TxtNombre & "" <> "" Or TxtApellidos & "" <> "") And ChkOcultar.Value = 0 Then
                    Call LanzarInformePDF("PresupuestosEuros3.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'      " & TxtDon & Trim(TxtNombre & " " & TxtApellidos) & " en nombre de " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
    
                Else
                    Call LanzarInformePDF("PresupuestosEuros1.rpt", Nombase, Preeliminar, Me.Caption, 1, False, "TxtPresupuesto", "'" & pPresupuesto & "'", "TxtPeticionario", "'" & TxtPeticionario & "'", "TxtObra", "'" & CadObra & "'", "TxtAntecedentes", "'       " & TxtPeticionario & ", solicita a LCC CALIDAD Y CONTROL MEDIOAMBIENTAL S.A. el presente programa-presupuesto para la realización del " & pConcepto & " de la obra de referencia.'", "Firma1", "'" & Persona1 & "'", "Firma11", "'" & Descripcion & "'", "FormaPago", "'" & FormasPago & "'", "Titulo", "'" & mTitulo & "'", "Logotipo", "'" & Logotipo & "'")
    
                End If
            End If
        End If

        Me.Enabled = True
        Screen.MousePointer = 0
    End If

    RsSucursales.Close
    dbBFact.CloseA
    Exit Sub
Errorimprimir:
    Alerta ("Se ha producido un error al imprimir, aseguresé de que la impresora está configurada correctamente.")

End Sub


''Fin 12 12 2001
Function CopiarAmpliacion(TxtNombreNuevaObra As String, IDPresupuestoSeleccionado As Long, Indice As Integer) As Boolean
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un registro en la tabla "Presupuestos" con datos del recordset de las misma tabla. Creando una ampliacion del
'   presupuesto que trae como segundo parametro
'
'PARAMETROS :
'   TxtNombreNuevaObra         --> Nombre de la obra
'   IDPresupuestoSeleccionado  --> Presupuesto al que pertenece la Ampliacion
'   Indice                     --> Indice para saber cual es el tipo de Obra a la que pertenece la Ampliacion
'
'RETORNO :
'   .T. Si ha creado bien la copia
'   .T. Si no ha creado bien la copia
'
'PROCESO :
'   1) Crea dos recordset de la tabla "Presupuestos"
'      -RsPresOrigen con todos los registros que cumplan IDPresupuesto = IDPresupuestoSeleccionado
'      -RsPresDestino con el primer registro de la tabla
'   2) Crea un registro en la tabla del recordset RsPresDestino
'   3) Crea un recordset de "Presupuestos" con el valor del Codigo mas alto y de este año
'   4) Si encuentra lagun registro nos asigna como codigo del nuevo registro el conseguido mas 1 y sino hay registros
'      comienza a partir de 7001
'   5) Asigna al registro nuevo valores del recordset RsPresOrigen
'   6) Dependiendo del valor de la variable Indice
'      -Si Indice = 1 crea un recordset de la tabla de "Presupuestos","PresupuestosAmpliacion" y asigna a unos de los
'       campos del nuevo registro una cadena que indica el numero de unidades de presupuesto
'      -Si Indice = 2 crea un recordset de la tabla de "Presupuestos","PresupuestosAmpliacion" y asigna a unos de los
'       campos del nuevo registro una cadena que indica el numero de Tarifas de presupuesto
'      -Si Indice es distinto a los anteriores crea una cadena mista con el numero de unidades y de tarifas
'   7) Sigue asignando valores al nuevo registro y llama al procedimiento CrearAmpliacion
'   8) Cierra los recordset creados al principio
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim RsPresOrigen As New Recordset
    Dim RsPresDestino As New Recordset
    Dim RsLineasOrigen As New Recordset
    Dim RsLineasDestino As New Recordset
    Dim CodigoPresupuesto As Long
    
    Dim DocOrigen As String
    Dim DocDestino As String
    Dim RsMixta As New Recordset
    CopiarAmpliacion = False
    
    On Error GoTo ErrorAlCrearPresupuesto
    
    dbPrincipal.BeginTrans
    Call mClsPresupuestos.PueblaRecordset(RsPresOrigen, "SELECT * FROM Presupuestos WHERE IDPresupuesto = " & IDPresupuestoSeleccionado)
    Call mClsPresupuestos.PueblaRecordset(RsPresDestino, "SELECT Top 1 * FROM Presupuestos", False)
    
    RsPresDestino.AddNew
    'eva 15 1 2002, hay que coger un nuevo código de Ampliaciones: a partir del 7000
    'RsPresDestino!Codigo = DameCodigoNuevoConf("UltimoPresupuesto", 1, "PRESUPUESTOS", "CODIGO", " And ANYO = " & CStr(Year(Date)))
    Dim Rs As New Recordset
    Call mClsPresupuestos.PueblaRecordset(Rs, "SELECT max(codigo) as codigo FROM presupuestos WHERE left(codigo,1)>='7' and len(codigo)=4 and anyo=" & CStr(Year(Date)))
    If Rs.EOF Then
        RsPresDestino!Codigo = 7001
    ElseIf NoNumNulo(Rs!Codigo) > 0 Then
        RsPresDestino!Codigo = Rs!Codigo + 1
    Else
        RsPresDestino!Codigo = 7001
    End If
    Rs.Close
    Set Rs = Nothing
    RsPresDestino!Anyo = CStr(Year(Date))
    CodigoPresupuesto = RsPresDestino!Codigo
    RsPresDestino!IdCliente.Value = NoNumNulo(RsPresOrigen!IdCliente)  '0
    RsPresDestino!IdObra.Value = NoNumNulo(RsPresOrigen!IdObra)
    RsPresDestino!Peticionario.Value = (RsPresOrigen!Peticionario) & ""
    RsPresDestino!UsuarioCreacion = m_LoginUsuario
       
            

'   2004/03     Jose. Nueva nomenclatura de ampliaciones. ---------------------------------------------------------------------------
    Call mClsPresupuestos.PueblaRecordset(RsMixta, "SELECT COUNT(PresupuestosAmpliacion.IdPresupuestoPadre) as Total " _
            & " FROM Presupuestos INNER JOIN PresupuestosAmpliacion ON Presupuestos.IDPresupuesto = PresupuestosAmpliacion.IdPresupuestoHijo " _
            & " GROUP BY IdPresupuestoPadre,Presupuestos.Ampliacion HAVING (Presupuestos.Ampliacion = 1) AND (PresupuestosAmpliacion.IdPresupuestoPadre = " & m_IDPresupuesto & ")")
    If Indice = 1 Then
        If RsMixta.EOF Then
            RsPresDestino!NombreObra.Value = "Ampliación 1. unidades tarifas presupuesto inicial:"
        Else
            RsPresDestino!NombreObra.Value = "Ampliación " & RsMixta!Total + 1 & ". unidades tarifas presupuesto inicial:"
        End If

        RsPresDestino!Observaciones = "Presupuesto de ampliación de unidades."
        RsPresDestino!AmpliarUnidades = 1
        RsMixta.Close
    ElseIf Indice = 2 Then
        If RsMixta.RecordCount = 0 Then
            RsPresDestino!NombreObra.Value = "Ampliación 1. de tarifas del presupuesto: " & TxtNombreNuevaObra  'TxtNombreObra
        Else
            RsPresDestino!NombreObra.Value = "Ampliación " & RsMixta!Total + 1 & ". de tarifas del presupuesto: M-" & sTxtCodigo & "-" & Right(TxtAnyo, 2) 'TxtNombreNuevaObra  'TxtNombreObra
        End If
        RsPresDestino!AmpliacionTarifa = 1
        RsMixta.Close
    Else
        If RsMixta.EOF Then
            RsPresDestino!NombreObra.Value = "Ampliación 1. unidades y tarifas presupuesto inicial:"
        Else
            RsPresDestino!NombreObra.Value = "Ampliación " & RsMixta!Total + 1 & ". unidades y tarifas presupuesto inicial:"
        End If
        RsPresDestino!Observaciones = "Presupuesto MIXTO de ampliación de unidades y tarifas."
        RsPresDestino!AmpliacionMixta = 1
        RsMixta.Close
    End If
    Set RsMixta = Nothing
'   2004/03     ---------------------------------------------------------------------------------------------------------------------

    'Paco. 7-8-2007. Corregido.
    RsPresDestino!IdSucursal = RsPresOrigen!IdSucursal
    
    RsPresDestino!FechaEmision.Value = Date
    RsPresDestino!IdTipoPresupuesto.Value = RsPresOrigen!IdTipoPresupuesto.Value
    RsPresDestino!Subtipo.Value = RsPresOrigen!Subtipo.Value & ""
    RsPresDestino!Aceptado.Value = 0
    RsPresDestino!UsuarioCreacion = DameExpresion("Codigo", m_IDUsuario, "Usuarios", "Login")
    'RsPresDestino!AmpliarUnidades = Indice
    ' Para que copie documentos solo word:
    'RsPresDestino!WordDoc.Value = Format(RsPresDestino!Codigo, "0000") & "-" & RsPresDestino!Anyo & ".doc"
    ' Modificacion 9 11 2000: Copia documento word y excel:
    
'    If Trim(RsPresOrigen!worddoc) <> "" Then
'        If Mid(RsPresOrigen!worddoc, Len(RsPresOrigen!worddoc.Value) - 2) = "doc" Then
'            RsPresDestino!worddoc.Value = Format(RsPresDestino!Codigo, "0000") & "-" & RsPresDestino!Anyo & ".doc"
'        ElseIf Mid(RsPresOrigen!worddoc.Value, Len(RsPresOrigen!worddoc.Value) - 2) = "xls" Then
'            RsPresDestino!worddoc.Value = Format(RsPresDestino!Codigo, "0000") & "-" & RsPresDestino!Anyo & ".xls"
'        Else
'            Call Informacion("La extensión " & Mid(RsPresOrigen!worddoc.Value, Len(RsPresOrigen!worddoc.Value) - 3) & "del documento origen no es ni 'doc' ni 'xls' se pondrá 'doc' por defecto. ")
'            RsPresDestino!worddoc.Value = Format(RsPresDestino!Codigo, "0000") & "-" & RsPresDestino!Anyo & ".doc"
'        End If
'    'Else
'       ' RsPresDestino!worddoc.Value = ""
'    End If
'    DocDestino = m_DirPresupuestos & "-" & RsPresDestino!Anyo & "\" & RsPresDestino!worddoc.Value
    'Marcamos el registro como no bloqueado.
    RsPresDestino!RegistroBloqueado = False
    RsPresDestino!ESPLANTILLA = 0
    RsPresDestino!pConcepto.Value = RsPresOrigen!pConcepto.Value
    RsPresDestino!Ampliacion = 1
    RsPresDestino.Update
    Call CrearAmpliacion(IDPresupuestoSeleccionado, RsPresDestino!IdPresupuesto)

    'm_IDPresupuesto = RsPresDestino!IDPresupuesto
    RsPresDestino.Close
    Set RsPresDestino = Nothing
    
'    If RsPresOrigen!worddoc.Value & "" <> "" Then
'        If RsPresOrigen!ESPLANTILLA Then
'            DocOrigen = m_DirPlantillas & "\" & RsPresOrigen!worddoc.Value
'        Else
'            DocOrigen = m_DirPresupuestos & "-" & RsPresOrigen!Anyo & "\" & RsPresOrigen!worddoc.Value
'        End If
'
'        If Dir(DocOrigen) <> "" Then
'            FileCopy DocOrigen, DocDestino


'        End If
'    End If
    
    RsPresOrigen.Close
    Set RsPresOrigen = Nothing
    
    'Terminamos la transacción.
    dbPrincipal.CommitTrans
    'DBEngine.Idle dbFreeLocks

    'Informacion ("La ampliación " & CompletaCon(CStr(CodigoPresupuesto), 4, "0", 0) & " se ha creado con éxito.")
    
    CopiarAmpliacion = True

    Exit Function

ErrorAlCrearPresupuesto:
    
    Dim MensajeError As String
    If Err.Number = 70 Then
        MensajeError = "Error al crear el presupuesto. DEBE CERRAR EL DOCUMENTO WORD DEL PRESUPUESTO ORIGEN." & vbCrLf & Err.Description
    Else
        MensajeError = "Error al crear el presupuesto." & vbCrLf & Err.Description
    End If
    'Deshacemos la transacción. Si el error es posterior a CommitTrans no pasa nada.
    On Error Resume Next
    RsPresOrigen.Close
    dbPrincipal.RollbackTrans
    On Error GoTo 0
    Err.Clear
    
    Alerta (MensajeError)

End Function
Private Sub CrearAmpliacion(IdPresupuestoPadre As Long, IdPresupuestoHijo As Long)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Crea un registro en la tabla "PresupuestoAmpliacion" con los parametro que trae
'
'PARAMETROS :
'   IDPresupuestoPadre  --> Valor de unos de los campos del registro a dar de alta
'   IDPresupuestoHijo   --> Valor de unos de los campos del registro a dar de alta
'
'RETORNO :
'
'PROCESO :
'   1) Crea dos recordset de la tabla "Presupuestos"
'   2) Crea un registro en la tabla del recordset RsPresDestino
'   3) Crea un recordset de "Presupuestos" con el valor del Codigo mas alto y de este año
'   4) Si encuentra lagun registro nos asigna como codigo del nuevo registro el conseguido mas 1 y sino hay registros
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    Dim RsPres As New Recordset
    Call mClsPresupuestos.PueblaRecordset(RsPres, "SELECT Top 1 * FROM PresupuestosAmpliacion", False)
    RsPres.AddNew
    RsPres!IdPresupuestoPadre = IdPresupuestoPadre
    RsPres!IdPresupuestoHijo = IdPresupuestoHijo
    RsPres.Update
    RsPres.Close
    Set RsPres = Nothing
End Sub
Public Function ExistenRegistros(Rg As Recordset) As Boolean
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Devuelve un .T. o .F. que indica si tiene registros o no el recordset
'
'PARAMETROS :
'   Rg  --> Recordset a comprobar
'
'RETORNO :
'   .T. Si tiene registros
'   .F. Si no tiene registros o esta cerrado el recordset
'
'PROCESO :
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    'ExistenRegistros = IIf(Rg.State <> 0, Not Rg.EOF, False) ' no se puede
    If Rg.State <> 0 Then
        ExistenRegistros = Not Rg.EOF
    Else
        ExistenRegistros = False
    End If
End Function


Private Function PosInicialRecordset(Rg As Recordset, CadClave As String) As Long
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Comprueba que un recordset tenga registros y devuelve el valor del campoa buscar
'
'PARAMETROS :
'   Rg        --> Recordset en el que buscar
'   CadClave  --> Campo a buscar
'
'RETORNO :
'   Un numero distinto de 0 si encuentra el registro que es el valor del campo
'   0 si el recordset no tiene registros o esta cerrado
'
'PROCESO :
'
'CATEGORIA : FUNCION
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    If ExistenRegistros(Rg) Then
        PosInicialRecordset = Rg.Fields(CadClave).Value
    Else
        PosInicialRecordset = 0
    End If
End Function
Private Sub PosFinalRecordset(ByVal Rg As Recordset, IdClave As Long, CadClave As String)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Hace una busqueda de un registro en un recordset
'
'PARAMETROS :
'   Rg        --> Recordset en el que buscar
'   IdClave   --> Valor a buscar
'   CadClave  --> Campo a buscar
'
'RETORNO :
'
'PROCESO :
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------
    
    Rg.MoveFirst
    If IdClave > 0 Then Rg.Find CadClave & " = " & IdClave
    If Rg.EOF Then Rg.MoveFirst
End Sub

Private Sub CalcularFormaPago(IdPresupuesto As Long)
'DOCF INICIO ----------------------------------------------------------
'
'DESCRIPCION :
'   Actualiza las formas de pago de la tabla de "Clientes" y selecciona un item en el combo de Formas de pago
'   dependiendo de la suma del precio total de todos los presupuesto que IdPresupuesto = m_IdPresupuesto
'
'PARAMETROS :
'   IDPresupuesto  --> No se utiliza
'
'RETORNO :
'
'PROCESO :
'   1) Crea un recordset de la tabla "Clientes" con los registros que cumplan Clientes!IDCliente = m_IDCliente
'   2) Si hay datos
'      -Si Clientes!IDFormaPago > 1 selecciona del combo de FormasPago el item que tenga el valor de Cliente!IDFormaPago
'      -Sino, crea un recordset "Presupuestos" y "PresupuestosyTarifas" con los registros que IdPresupuesto =
'       m_IDPresupuesto.
'       -Actualiza el campo IdFormaPago dependiendo del valor de la variable "Suma" que es la suma de todos los precios
'        totales de los registros del recordset
'   3) Si no hay datos
'     -Crea un recordset "Presupuestos" y "PresupuestosyTarifas" con los registros que IdPresupuesto = m_IDPresupuesto
'       -Selecciona en el combo de FormasPago el item correspondiente al valor de la variable "Suma" que es la suma de
'        todos los precios totales de los registros del recordset
'
'CATEGORIA : PROCEDIMIENTO
'
'HISTORIA :
'   2002/11     HDT     Documentado.
'   2003/02     HDT     Ultima Documentación.
'   2003/02     EDE     Documentación de Modificaciones.
'
'DOCF FIN -------------------------------------------------------------

    Dim RsCliente As New Recordset
    Dim Rs As New Recordset
    Call mClsClientes.PueblaRecordset(RsCliente, "SELECT * FROM Clientes WHERE IDCliente = " & m_IDCliente)

    If Not RsCliente.EOF Then
        If RsCliente!IDFormaPago > 1 Then
            'CmbFormaPago.ListIndex = RsCliente!idFormaPago
            CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, RsCliente!IDFormaPago)
            Call dbPrincipal.Execute("Update Presupuestos set IdFormaPago=" & RsCliente!IDFormaPago & " WHERE IdPresupuesto=" & m_IDPresupuesto)
        Else
        
            Call mClsPresupuestos.PueblaRecordset(Rs, "SELECT sum(PresupuestosyTarifas.PrecioTotal) as Suma FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto WHERE Presupuestos.IdPresupuesto=" & m_IDPresupuesto & "")

            If Rs!suma <= 300 Then
                'CmbFormaPago.ListIndex = 48 '30
                CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 48)
                Call dbPrincipal.Execute("Update Presupuestos set IdFormaPago=48 WHERE IdPresupuesto=" & m_IDPresupuesto)
            ElseIf Rs!suma > 300 And Rs!suma <= 500 Then
                'CmbFormaPago.ListIndex = 65 '27
                CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 65)
                Call dbPrincipal.Execute("Update Presupuestos set IdFormaPago=65 WHERE IdPresupuesto=" & m_IDPresupuesto)
            ElseIf Rs!suma > 500 And Rs!suma <= 1000 Then
                'CmbFormaPago.ListIndex = 55 '19
                CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 55)
                Call dbPrincipal.Execute("Update Presupuestos set IdFormaPago=55 WHERE IdPresupuesto=" & m_IDPresupuesto)
            ElseIf Rs!suma > 1000 Then
                'CmbFormaPago.ListIndex = 32 '20
                CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 32)
                Call dbPrincipal.Execute("Update Presupuestos set IdFormaPago=32 WHERE IdPresupuesto=" & m_IDPresupuesto)
            End If

            Rs.Close
            Set Rs = Nothing
        End If

        RsCliente.Close
        Set RsCliente = Nothing
    Else
    
        Call mClsPresupuestos.PueblaRecordset(Rs, "SELECT sum(PresupuestosyTarifas.PrecioTotal) as Suma FROM Presupuestos INNER JOIN  PresupuestosyTarifas ON Presupuestos.IDPresupuesto = PresupuestosyTarifas.IDPresupuesto WHERE Presupuestos.IdPresupuesto=" & m_IDPresupuesto & "")

        If Rs!suma <= 300 Then
            'CmbFormaPago.ListIndex = 48 '30
            CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 48)
        ElseIf Rs!suma > 300 And Rs!suma <= 500 Then
            CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 65)
            'CmbFormaPago.ListIndex = 65 '27
        ElseIf Rs!suma > 500 And Rs!suma <= 1000 Then
            'CmbFormaPago.ListIndex = 55 '19
            CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 55)
        ElseIf Rs!suma > 1000 Then
            'CmbFormaPago.ListIndex = 32 '20
            CmbFormaPago.ListIndex = BuscaItemData(CmbFormaPago, 32)
        End If

        Rs.Close
        Set Rs = Nothing
    End If

End Sub
