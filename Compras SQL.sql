USE [Compras]
GO
/****** Object:  Table [Acceso].[CentroCosto]    Script Date: 31/01/2023 16:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acceso].[CentroCosto](
	[IdCentroCosto] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdUsuario] [numeric](18, 0) NOT NULL,
	[IdDepartamento] [numeric](18, 0) NOT NULL,
	[Descripcion] [nvarchar](500) NOT NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
	[AATrxDimCodeID] [int] NULL,
	[AATrxDimID] [int] NULL,
 CONSTRAINT [PK_CentroCosto] PRIMARY KEY CLUSTERED 
(
	[IdCentroCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acceso].[Usuario]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acceso].[Usuario](
	[IdUsuario] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdCargo] [numeric](18, 0) NULL,
	[IdDepartamento] [numeric](18, 0) NULL,
	[IdPerfil] [numeric](18, 0) NULL,
	[Username] [varchar](50) NOT NULL,
	[Contrasenia] [varchar](500) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[IDPerfil_] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[TieneMonto] [bit] NULL,
	[Monto] [numeric](19, 5) NULL,
	[Acumula] [bit] NULL,
	[Telefono] [varchar](15) NULL,
	[EnviarMailEstados] [bit] NULL,
	[Director] [varchar](30) NULL,
	[Departamento] [int] NULL,
	[IDCampus] [varchar](30) NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Catalagos].[Articulo]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalagos].[Articulo](
	[IdArticulo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdUnidadMedida] [numeric](18, 0) NOT NULL,
	[IdArticuloClasificacion] [numeric](18, 0) NOT NULL,
	[IdVarianteCompra] [numeric](18, 0) NOT NULL,
	[CodigoArticulo] [varchar](100) NULL,
	[Unidad] [varchar](30) NULL,
	[Descripcion] [varchar](100) NULL,
	[ItemGasto] [varchar](31) NULL,
	[PrecioReferencial] [numeric](19, 5) NULL,
	[ActivarCupoGasto] [bit] NULL,
	[ItemActivo] [varchar](31) NULL,
	[CupoGasto] [numeric](19, 5) NULL,
	[Impuesto] [numeric](19, 5) NULL,
	[Contrato] [bit] NULL,
	[Generico] [bit] NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
	[UnidadDeCompra] [varchar](15) NULL,
	[LineaNegocio] [varchar](100) NULL,
	[ProveedorNombre] [varchar](100) NULL,
	[StockAr] [numeric](19, 5) NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Catalagos].[CausaCompra]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalagos].[CausaCompra](
	[IdCausaCompra] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CausaCompras] PRIMARY KEY CLUSTERED 
(
	[IdCausaCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Catalogo].[AreaNegocio]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Catalogo].[AreaNegocio](
	[IdAreaNegocio] [bigint] NOT NULL,
	[Division] [varchar](50) NULL,
	[AreaNegocio] [varchar](50) NOT NULL,
	[UnidadNegocio] [varchar](50) NOT NULL,
	[GerenteUnidadNegocio] [varchar](50) NOT NULL,
	[Linea] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Familia] [varchar](50) NOT NULL,
	[GerenteLinea] [varchar](50) NOT NULL,
	[PorPedido] [bit] NULL,
	[PorDemanda] [bit] NULL,
	[TiempoImportacion] [int] NULL,
	[Objetivorentabilidad] [decimal](18, 2) NULL,
	[PorcentajeRepuesto] [decimal](18, 6) NULL,
	[UsuarioGerente] [varchar](50) NULL,
	[idLineaSAT] [int] NULL,
 CONSTRAINT [PK_AreaNegocios] PRIMARY KEY CLUSTERED 
(
	[GerenteUnidadNegocio] ASC,
	[Linea] ASC,
	[Marca] ASC,
	[Familia] ASC,
	[GerenteLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Cotizacion].[Documentos]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Cotizacion].[Documentos](
	[IdDocumento] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdRequisicion] [int] NOT NULL,
	[Documento] [varchar](max) NULL,
	[Activo] [bit] NOT NULL,
	[Eliminado] [bit] NOT NULL,
	[FilaID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentroCosto]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentroCosto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[aaTrxDimCodeID] [int] NULL,
	[aaTrxDimCode] [varchar](50) NULL,
	[aaTrDimCodeDesc] [varchar](200) NULL,
	[FilaID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[failed_jobs](
	[id] [bigint] NOT NULL,
	[uuid] [nvarchar](255) NOT NULL,
	[connection] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](max) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[exception] [nvarchar](max) NOT NULL,
	[failed_at] [smalldatetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menus](
	[menu_id] [bigint] NOT NULL,
	[menu_name] [nvarchar](255) NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[parent] [int] NOT NULL,
	[orden] [int] NOT NULL,
	[disponible] [int] NULL,
	[modulo] [nvarchar](255) NOT NULL,
	[icons] [nvarchar](255) NOT NULL,
	[created_at] [smalldatetime] NULL,
	[updated_at] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_has_permissions]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_has_permissions](
	[permission_id] [bigint] NOT NULL,
	[model_type] [nvarchar](191) NOT NULL,
	[model_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_has_roles]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_has_roles](
	[role_id] [bigint] NOT NULL,
	[model_type] [nvarchar](191) NOT NULL,
	[model_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[id] [bigint] NOT NULL,
	[name] [nvarchar](191) NOT NULL,
	[guard_name] [nvarchar](191) NOT NULL,
	[created_at] [smalldatetime] NULL,
	[updated_at] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prerequisicions]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prerequisicions](
	[id] [bigint] NOT NULL,
	[numero] [nvarchar](255) NOT NULL,
	[userIdGP] [nvarchar](255) NOT NULL,
	[detalle] [nvarchar](255) NOT NULL,
	[variante] [nvarchar](255) NOT NULL,
	[causa] [nvarchar](255) NULL,
	[fechaSolicita] [date] NOT NULL,
	[fechaEntrega] [date] NOT NULL,
	[created_at] [smalldatetime] NULL,
	[updated_at] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_has_permissions]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_has_permissions](
	[permission_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [bigint] NOT NULL,
	[name] [nvarchar](191) NOT NULL,
	[guard_name] [nvarchar](191) NOT NULL,
	[created_at] [smalldatetime] NULL,
	[updated_at] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[email_verified_at] [smalldatetime] NULL,
	[password] [nvarchar](255) NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [smalldatetime] NULL,
	[updated_at] [smalldatetime] NULL,
	[guid] [nvarchar](191) NULL,
	[domain] [nvarchar](191) NULL,
	[objectguid] [nvarchar](191) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PreOrden].[Adjudicacion]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PreOrden].[Adjudicacion](
	[IdAdjudicacion] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdAdjudicacionEstado] [numeric](18, 0) NULL,
	[IdPreOrden] [numeric](18, 0) NULL,
	[IdBodega] [numeric](18, 0) NULL,
	[Adjunto] [varchar](150) NULL,
	[Total] [numeric](19, 5) NULL,
	[TiempoEntrega] [varchar](100) NULL,
	[Comentario] [varchar](1000) NULL,
	[Comentario_Aprobacion] [varchar](1000) NULL,
	[Usuario] [varchar](50) NULL,
	[Fecha_INS] [datetime] NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
	[Comentario_Presupuesto] [varchar](1000) NULL,
 CONSTRAINT [PK_ADJUDICACION] PRIMARY KEY CLUSTERED 
(
	[IdAdjudicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PreOrden].[PreOrden]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PreOrden].[PreOrden](
	[IdPreOrden] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdRequisicion] [numeric](18, 0) NOT NULL,
	[ID] [varchar](17) NULL,
	[FechaSolicitada] [datetime] NULL,
	[FechaRequerida] [datetime] NULL,
	[ProveedorSugerido] [varchar](15) NULL,
	[RazonDeCompra] [varchar](100) NULL,
	[SeccionDepartamento] [varchar](200) NULL,
	[IdSolicita] [varchar](30) NULL,
	[IdAprueba] [varchar](30) NULL,
	[Total] [numeric](19, 5) NULL,
	[ObservacionCierre] [varchar](1000) NULL,
	[Editado] [bit] NULL,
	[FechaUltimaEdicion] [datetime] NULL,
	[Observacion] [varchar](1000) NULL,
	[FechaCreacion] [datetime] NULL,
	[ObservacionParaProveedor] [varchar](1000) NULL,
	[Factura] [varchar](300) NULL,
	[Adjunto] [varchar](100) NULL,
	[CompraDirecta] [bit] NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PreOrdenNew] PRIMARY KEY CLUSTERED 
(
	[IdPreOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[Archivos]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[Archivos](
	[IdArchivo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdRequisicion] [int] NOT NULL,
	[Documento] [varchar](max) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Eliminado] [bit] NOT NULL,
	[FilaID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Archivo] PRIMARY KEY CLUSTERED 
(
	[IdArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[Detalle]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[Detalle](
	[IdDetalle] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdRequisicion] [numeric](18, 0) NULL,
	[Linea] [numeric](18, 0) NULL,
	[IdArticulo] [varchar](30) NULL,
	[IdBodega] [numeric](18, 0) NOT NULL,
	[CentroCosto] [varchar](100) NULL,
	[Descripcion] [varchar](1000) NULL,
	[Cantidad] [numeric](19, 5) NULL,
	[CantidadSol] [numeric](19, 5) NULL,
	[Proveedor] [varchar](15) NULL,
	[Precio] [numeric](19, 5) NULL,
	[Total] [numeric](19, 5) NULL,
	[CodigoArticulo] [varchar](100) NULL,
	[Unidad] [varchar](30) NULL,
	[IDCampus] [varchar](30) NULL,
	[Observacion] [varchar](50) NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
	[IdCentroCosto] [numeric](18, 0) NULL,
	[IdContrato] [numeric](18, 0) NULL,
	[IdContratoDimId] [numeric](18, 0) NULL,
	[ReqDividida] [bit] NULL,
 CONSTRAINT [PK_Detalles] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[Documentos]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[Documentos](
	[IdDocumento] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdRequisicion] [int] NOT NULL,
	[idDetalle] [numeric](18, 0) NULL,
	[Documento] [varchar](max) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Eliminado] [bit] NOT NULL,
	[FilaID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[Estado]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[Estado](
	[IdEstado] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[OpcionCompra]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[OpcionCompra](
	[IdOpcionCompra] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdTipoCompra] [numeric](18, 0) NULL,
	[Descripcion] [varchar](50) NULL,
	[ctivo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_OpcionCompra] PRIMARY KEY CLUSTERED 
(
	[IdOpcionCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[Requisicion]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[Requisicion](
	[IdRequisicion] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdCausaCompra] [numeric](18, 0) NULL,
	[IdVarianteCompra] [numeric](18, 0) NULL,
	[IdEstado] [numeric](18, 0) NULL,
	[IdUsuario] [numeric](18, 0) NULL,
	[IdOpcionCompra] [numeric](18, 0) NULL,
	[IdSeccion] [numeric](18, 0) NULL,
	[SeccionDepartamento] [varchar](100) NULL,
	[IdAprobador] [numeric](18, 0) NULL,
	[CausaDeCompra] [varchar](1000) NULL,
	[ID] [varchar](21) NULL,
	[IdSolicitado] [varchar](50) NULL,
	[FechaSolicitada] [datetime] NULL,
	[FechaEntregaRequerida] [datetime] NULL,
	[IdProveedorSugerido] [numeric](18, 0) NULL,
	[IdDirector] [varchar](30) NULL,
	[AprobadoPorDirectorFinanciero] [varchar](30) NULL,
	[Comentario] [varchar](1000) NULL,
	[Total] [numeric](19, 5) NULL,
	[UltimaLinea] [int] NULL,
	[FechaSistemaRegistro] [datetime] NULL,
	[FechaSistemaEnvio] [datetime] NULL,
	[ObservacionCierre] [varchar](1000) NULL,
	[OtroMotivoDeCompra] [varchar](1000) NULL,
	[Urgente] [bit] NULL,
	[FechaUltimaEdicion] [datetime] NULL,
	[IDCampus] [varchar](30) NULL,
	[IdTipoCompra] [numeric](18, 0) NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
	[FechaRechazada] [datetime] NULL,
	[FechaAprobacion] [datetime] NULL,
	[ObservacionRechazada] [nvarchar](max) NULL,
	[ObservacionAprobada] [nvarchar](max) NULL,
	[IdRequisicionPadre] [numeric](18, 0) NULL,
	[Observacion] [nvarchar](max) NULL,
	[FechaEnvio] [datetime] NULL,
	[FechaHomologacion] [datetime] NULL,
	[EntregasParciales] [bit] NULL,
	[IdContrato] [int] NULL,
	[Documento] [varchar](50) NULL,
 CONSTRAINT [PK_Requisicions] PRIMARY KEY CLUSTERED 
(
	[IdRequisicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[TipoCompra]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[TipoCompra](
	[IdTipoCompra] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TiposCompra] PRIMARY KEY CLUSTERED 
(
	[IdTipoCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Requisicion].[VarianteCompra]    Script Date: 31/01/2023 16:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Requisicion].[VarianteCompra](
	[IdVarianteCompra] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdOpcionCompra] [numeric](18, 0) NULL,
	[Descripcion] [varchar](50) NULL,
	[Solicitud] [int] NULL,
	[Valor_Solicitud] [int] NULL,
	[Aprobacion_Solicitud] [int] NULL,
	[Genera_PreOrden] [int] NULL,
	[Mail_PACO] [int] NULL,
	[Asigna_Proveedores] [int] NULL,
	[Mail_Proveedores] [int] NULL,
	[Cotizaciones] [int] NULL,
	[Adjudicacion] [int] NULL,
	[Aprobacion_Final] [int] NULL,
	[Genera_OC] [int] NULL,
	[Activo] [bit] NULL,
	[Eliminado] [bit] NULL,
	[Visible] [bit] NULL,
	[FilaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_VarianteCompraNew] PRIMARY KEY CLUSTERED 
(
	[IdVarianteCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
