USE [EFCoreDemo]
GO
/****** Object:  Table [dbo].[Commands]    Script Date: 6/2/2021 2:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HowTo] [nvarchar](max) NOT NULL,
	[CommandLine] [nvarchar](max) NOT NULL,
	[PlatformId] [int] NOT NULL,
 CONSTRAINT [PK_Commands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 6/2/2021 2:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platforms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LicenseKey] [nvarchar](max) NULL,
 CONSTRAINT [PK_Platforms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Commands] ON 
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (1, N'Build a Project', N'dotnet build', 1)
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (2, N'Run a Project', N'dotnet run', 1)
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (3, N'Start a docker compose file', N'docker-compose up -d', 2)
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (4, N'Stop a docker compose file', N'docker-compose stop', 2)
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (5, N'Perform directory listing', N'ls', 3)
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (6, N'Change Directory', N'cd', 2)
GO
INSERT [dbo].[Commands] ([Id], [HowTo], [CommandLine], [PlatformId]) VALUES (7, N'Get Directory Listing', N'ls', 5)
GO
SET IDENTITY_INSERT [dbo].[Commands] OFF
GO
SET IDENTITY_INSERT [dbo].[Platforms] ON 
GO
INSERT [dbo].[Platforms] ([Id], [Name], [LicenseKey]) VALUES (1, N'.NET', NULL)
GO
INSERT [dbo].[Platforms] ([Id], [Name], [LicenseKey]) VALUES (2, N'Docker', NULL)
GO
INSERT [dbo].[Platforms] ([Id], [Name], [LicenseKey]) VALUES (3, N'Windows', NULL)
GO
INSERT [dbo].[Platforms] ([Id], [Name], [LicenseKey]) VALUES (4, N'OSX', NULL)
GO
INSERT [dbo].[Platforms] ([Id], [Name], [LicenseKey]) VALUES (5, N'Ubuntu', NULL)
GO
INSERT [dbo].[Platforms] ([Id], [Name], [LicenseKey]) VALUES (6, N'kubernetes', NULL)
GO
SET IDENTITY_INSERT [dbo].[Platforms] OFF
GO
ALTER TABLE [dbo].[Commands]  WITH CHECK ADD  CONSTRAINT [FK_Commands_Platforms_PlatformId] FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platforms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Commands] CHECK CONSTRAINT [FK_Commands_Platforms_PlatformId]
GO
