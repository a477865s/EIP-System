/****** Object:  Database [EIP_DB]    Script Date: 2020/10/17 下午 11:16:40 ******/
CREATE DATABASE [EIP_DB]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [EIP_DB] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [EIP_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EIP_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EIP_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EIP_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EIP_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EIP_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EIP_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EIP_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EIP_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EIP_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EIP_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EIP_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EIP_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EIP_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EIP_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EIP_DB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EIP_DB] SET  MULTI_USER 
GO
ALTER DATABASE [EIP_DB] SET ENCRYPTION ON
GO
ALTER DATABASE [EIP_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [EIP_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Table [dbo].[tApplypunch]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tApplypunch](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fPunchTimeId] [int] NOT NULL,
	[fSort] [nvarchar](50) NOT NULL,
	[fApplyDate] [datetime] NOT NULL,
	[fReason] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_tApplypunch] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBillboard]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBillboard](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fTitle] [nvarchar](50) NULL,
	[fContent] [nvarchar](1000) NULL,
	[fType] [nvarchar](50) NULL,
	[fEmployeeId] [int] NULL,
	[fPostTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_tBillboard] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBudget]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBudget](
	[fBudgetId] [int] IDENTITY(1,1) NOT NULL,
	[fProjectId] [int] NOT NULL,
	[fSalaryHour] [int] NULL,
	[fManagementFeePct] [float] NULL,
	[fBudget] [int] NULL,
	[fApplydate] [datetime] NULL,
	[fPassdate] [datetime] NULL,
	[fagree] [nvarchar](50) NULL,
 CONSTRAINT [PK_tBudget] PRIMARY KEY CLUSTERED 
(
	[fBudgetId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tCalendar]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCalendar](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fTitle] [nvarchar](50) NULL,
	[fContent] [nvarchar](100) NULL,
	[fStart] [nvarchar](50) NULL,
	[fEnd] [nvarchar](50) NULL,
	[fEmployeeId] [int] NULL,
	[fSort] [nvarchar](50) NULL,
	[fProjectId] [int] NULL,
 CONSTRAINT [PK_tCalendar] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tEmployee]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tEmployee](
	[fEmployeeId] [int] IDENTITY(100,1) NOT NULL,
	[fName] [nvarchar](20) NOT NULL,
	[fIdent] [varchar](20) NOT NULL,
	[fPassword] [varchar](20) NOT NULL,
	[fDepartment] [nvarchar](20) NOT NULL,
	[fTitle] [nvarchar](10) NOT NULL,
	[fEmail] [varchar](50) NOT NULL,
	[fBirth] [date] NOT NULL,
	[fPhonePersonal] [varchar](20) NOT NULL,
	[fHireDate] [date] NOT NULL,
	[fSalaryMonth] [int] NOT NULL,
	[fSalaryHour] [int] NULL,
	[fPhoneHouse] [varchar](20) NULL,
	[fCountry] [nvarchar](10) NOT NULL,
	[fBirthPlace] [nvarchar](10) NOT NULL,
	[fEducation] [nvarchar](20) NOT NULL,
	[fAddressNow] [nvarchar](50) NULL,
	[fAddressOrigin] [nvarchar](50) NOT NULL,
	[fEngyName] [nvarchar](20) NOT NULL,
	[fEngyPhone] [varchar](20) NOT NULL,
	[fOld] [float] NULL,
	[fState] [nvarchar](10) NOT NULL,
	[fAuth] [int] NOT NULL,
	[fFireDate] [date] NULL,
	[fBackDate] [date] NULL,
	[fLBI] [int] NULL,
	[fHI] [int] NULL,
 CONSTRAINT [PK_tEmployee] PRIMARY KEY CLUSTERED 
(
	[fEmployeeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tIncome]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tIncome](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fProjectId] [int] NOT NULL,
	[fTaxID] [nvarchar](50) NOT NULL,
	[fPaymentStatus] [nvarchar](50) NOT NULL,
	[fLevelPCT] [float] NOT NULL,
	[fInvoiceDate] [datetime] NULL,
	[fAmount] [int] NOT NULL,
	[fTaxRate] [float] NOT NULL,
	[fTaxPrice] [int] NOT NULL,
	[fTotal] [int] NOT NULL,
	[fIsPay] [nvarchar](50) NULL,
	[fPaymentDate] [datetime] NULL,
 CONSTRAINT [PK_tIncome] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLeave]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLeave](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fSort] [nvarchar](50) NOT NULL,
	[fApplyDate] [datetime] NOT NULL,
	[fActiveDate] [datetime] NOT NULL,
	[fEndDate] [datetime] NOT NULL,
	[fTimeCount] [float] NOT NULL,
	[fReason] [nvarchar](200) NOT NULL,
	[fStatus] [int] NOT NULL,
 CONSTRAINT [PK_tLeave_1] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLeavecount]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLeavecount](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fSortId] [int] NOT NULL,
	[fAlltime] [float] NOT NULL,
	[fUesdtime] [float] NOT NULL,
	[fRemaintime] [float] NOT NULL,
	[fStartdate] [datetime] NULL,
	[fEnddate] [datetime] NULL,
 CONSTRAINT [PK_tLeavecount] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tleavesort]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tleavesort](
	[fSortId] [int] IDENTITY(1,1) NOT NULL,
	[fLeavename] [nvarchar](50) NOT NULL,
	[fLeavecontent] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tleavesort] PRIMARY KEY CLUSTERED 
(
	[fSortId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLevel]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLevel](
	[fLevelId] [int] IDENTITY(1,1) NOT NULL,
	[fProjectId] [int] NOT NULL,
	[fLevelName] [nvarchar](50) NOT NULL,
	[fEstimateTime] [int] NULL,
	[fSpendCost] [int] NULL,
 CONSTRAINT [PK_tLevel] PRIMARY KEY CLUSTERED 
(
	[fLevelId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMetting_date]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMetting_date](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fEmployeeId] [int] NULL,
	[fDate] [date] NULL,
	[fReason] [nvarchar](200) NULL,
	[fStarttime] [time](7) NULL,
	[fEndtime] [time](7) NULL,
	[fRoom] [nvarchar](10) NULL,
 CONSTRAINT [PK_Metting_date] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNotify]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNotify](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fTitle] [nvarchar](50) NULL,
	[fContent] [nvarchar](100) NULL,
	[fSort] [nvarchar](50) NULL,
	[fType] [int] NULL,
	[fTime] [datetime] NULL,
 CONSTRAINT [PK_tNotify] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tOvertime]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tOvertime](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fSort] [nvarchar](50) NOT NULL,
	[fSubmitDate] [datetime] NOT NULL,
	[fActiveDate] [datetime] NOT NULL,
	[fTimeCount] [float] NOT NULL,
	[fReason] [nvarchar](50) NOT NULL,
	[fState] [int] NULL,
 CONSTRAINT [PK_tOvertime] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProject]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProject](
	[fProjectId] [int] NOT NULL,
	[fProjectName] [nvarchar](50) NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fClient] [nvarchar](50) NOT NULL,
	[fPrice] [int] NULL,
	[fCreatdDate] [datetime] NOT NULL,
	[fDateline] [datetime] NULL,
	[fProgress] [float] NOT NULL,
	[fDepartment] [nvarchar](50) NOT NULL,
	[fStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_tProject] PRIMARY KEY CLUSTERED 
(
	[fProjectId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProjectDetail]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProjectDetail](
	[fProjectDetailId] [int] IDENTITY(1,1) NOT NULL,
	[fProjectId] [int] NOT NULL,
	[fLevelId] [int] NULL,
	[fTaskName] [nvarchar](50) NULL,
	[fEmployeeId] [int] NULL,
	[fStatus] [nvarchar](50) NULL,
	[fStartTime] [datetime] NULL,
	[fDeadline] [datetime] NULL,
	[fTimes] [int] NULL,
	[fRemarks] [nvarchar](50) NULL,
 CONSTRAINT [PK__tProject__D9F8227CC9F2EA98] PRIMARY KEY CLUSTERED 
(
	[fProjectDetailId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tPunchtime]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPunchtime](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fDatetime] [datetime] NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fstatus] [nvarchar](50) NOT NULL,
	[fPunchclass] [nvarchar](50) NOT NULL,
	[fLatitude] [decimal](9, 6) NULL,
	[fLongitude] [decimal](8, 6) NULL,
 CONSTRAINT [PK_tPunchtime] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSignoff]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSignoff](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fLeaveId] [int] NULL,
	[fAlpplypunchId] [int] NULL,
	[fOvertimeId] [int] NULL,
	[fSupervisorId] [int] NOT NULL,
	[fIsAgreed] [int] NULL,
	[fApplyClass] [nvarchar](50) NOT NULL,
	[fStartdate] [datetime] NOT NULL,
	[fPassdate] [datetime] NULL,
	[fEnddate] [datetime] NOT NULL,
	[fRevoke] [int] NULL,
	[fReason] [nvarchar](200) NULL,
 CONSTRAINT [PK_tSignoff] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTeamMember]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTeamMember](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fProjectId] [int] NOT NULL,
	[fEmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_tTeamMember] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTimeRecords]    Script Date: 2020/10/17 下午 11:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTimeRecords](
	[fTimeRecordId] [int] IDENTITY(1,1) NOT NULL,
	[fDate] [datetime] NOT NULL,
	[fEmployeeId] [int] NOT NULL,
	[fProjectId] [int] NOT NULL,
	[fProjectDetailId] [int] NOT NULL,
	[fTime] [int] NOT NULL,
	[fApprove] [nvarchar](50) NULL,
	[fRemarks] [nvarchar](50) NULL,
 CONSTRAINT [PK_tTimeRecords] PRIMARY KEY CLUSTERED 
(
	[fTimeRecordId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tApplypunch] ON 

INSERT [dbo].[tApplypunch] ([fId], [fEmployeeId], [fPunchTimeId], [fSort], [fApplyDate], [fReason]) VALUES (12, 117, 444, N'未打卡', CAST(N'2020-10-16T10:40:52.227' AS DateTime), N'我忘記打卡')
SET IDENTITY_INSERT [dbo].[tApplypunch] OFF
GO
SET IDENTITY_INSERT [dbo].[tBillboard] ON 

INSERT [dbo].[tBillboard] ([fId], [fTitle], [fContent], [fType], [fEmployeeId], [fPostTime]) VALUES (26, N'請記得申請加班或請假紀錄', N'出勤異常者請記得申請加班或請假紀錄', N'一般', 100, N'10/7/2020 6:57:22 AM')
INSERT [dbo].[tBillboard] ([fId], [fTitle], [fContent], [fType], [fEmployeeId], [fPostTime]) VALUES (27, N'請勿抽菸', N'多數人的職場生涯中，每日有將近三分之一甚至更多的時間處於工作場所，職場可說是實施菸害防制及健康促進的重要場域，若在職場進行系統性的規劃及推動，將能得到良好的成效，更可將效益擴大至家庭與社區。', N'一般', 100, N'2020/10/15 上午 01:26:38')
INSERT [dbo].[tBillboard] ([fId], [fTitle], [fContent], [fType], [fEmployeeId], [fPostTime]) VALUES (28, N'川普投顧上線：別聽空頭 他們在操控股市', N'週三&nbsp;(13&nbsp;日)&nbsp;美國總統川普把矛頭指向富有的投資者，指責他們唱空美股，企圖操控股市獲利。<br><br>美國總統川普週三推文警告，要提防那些億萬富翁投資者利用對股市的負面評論，大舉做空股市獲利。<br><br>川普向來將美股視為上任以來最大政績，週三川普推文警告：「當所謂的富人對市場發表負面言論時，投資人必須永遠記住，這些人正大舉做空市場，如果市場下跌，他們就會賺很多錢。然後，他們會轉向看漲，再積極地宣傳，促使股市走高。」<br><br>儘管川普沒有點名到底富人是誰？但華爾街多位投資大亨近期都紛紛表示，美股正處於歷史上過高的估值。<br><br>由於投資者對經濟重啟的希望下，美股已從&nbsp;3&nbsp;月份的低點大幅反彈，標準普爾&nbsp;500&nbsp;指數基於未來&nbsp;12&nbsp;個月的預估本益比正加速膨脹，已升至&nbsp;20&nbsp;上方，為&nbsp;2002&nbsp;年以來最高水準。', N'一般', 100, N'2020/10/15 上午 01:26:30')
INSERT [dbo].[tBillboard] ([fId], [fTitle], [fContent], [fType], [fEmployeeId], [fPostTime]) VALUES (32, N'請勿濫用加班系統功能', N'', N'一般', 108, N'2020/10/7 下午 09:00:18')
INSERT [dbo].[tBillboard] ([fId], [fTitle], [fContent], [fType], [fEmployeeId], [fPostTime]) VALUES (33, N'通知系統維護完成', N'2020/10/08&nbsp;07:19', N'一般', 100, N'2020/10/8 下午 07:19:57')
INSERT [dbo].[tBillboard] ([fId], [fTitle], [fContent], [fType], [fEmployeeId], [fPostTime]) VALUES (34, N'請假系統', N'&nbsp;&nbsp;&nbsp;&nbsp;請同仁不要濫用請假申請<br>&nbsp;&nbsp;&nbsp;<br>鍾佳播，就是在說你', N'重要', 100, N'2020/10/8 下午 07:51:11')
SET IDENTITY_INSERT [dbo].[tBillboard] OFF
GO
SET IDENTITY_INSERT [dbo].[tBudget] ON 

INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (2, 1090101, 300, 0.2, 139000, CAST(N'2020-10-13T00:00:00.000' AS DateTime), CAST(N'2020-10-04T00:00:00.000' AS DateTime), N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (3, 1090801, 250, 0.2, 142000, CAST(N'2020-08-02T00:00:00.000' AS DateTime), NULL, N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (4, 1070101, 200, 0.2, 0, NULL, NULL, NULL)
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (13, 1070602, 200, 0.2, 126000, CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (14, 1080305, 200, 0.2, 90000, CAST(N'2020-10-14T00:00:00.000' AS DateTime), NULL, N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (15, 1090102, 200, 0.2, 0, NULL, NULL, NULL)
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (16, 1090908, 200, 0.2, 66000, CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (17, 1090707, 200, 0.2, 0, NULL, NULL, NULL)
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (25, 1091001, 200, 0.2, 90000, CAST(N'2020-10-14T00:00:00.000' AS DateTime), NULL, N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (27, 1091015, 200, 0.2, 136000, CAST(N'2020-10-15T00:00:00.000' AS DateTime), NULL, N'待審核')
INSERT [dbo].[tBudget] ([fBudgetId], [fProjectId], [fSalaryHour], [fManagementFeePct], [fBudget], [fApplydate], [fPassdate], [fagree]) VALUES (29, 1091016, 200, 0.2, 126000, CAST(N'2020-10-16T00:00:00.000' AS DateTime), NULL, N'待審核')
SET IDENTITY_INSERT [dbo].[tBudget] OFF
GO
SET IDENTITY_INSERT [dbo].[tCalendar] ON 

INSERT [dbo].[tCalendar] ([fId], [fTitle], [fContent], [fStart], [fEnd], [fEmployeeId], [fSort], [fProjectId]) VALUES (82, N'旅遊網站開發', N'資料庫設計', N'2020-10-19', N'2020-10-23', 117, N'1', NULL)
INSERT [dbo].[tCalendar] ([fId], [fTitle], [fContent], [fStart], [fEnd], [fEmployeeId], [fSort], [fProjectId]) VALUES (83, N'通知系統開發', N'請定期回報進度', N'2020-10-05', N'2020-10-10', 123, N'1', NULL)
INSERT [dbo].[tCalendar] ([fId], [fTitle], [fContent], [fStart], [fEnd], [fEmployeeId], [fSort], [fProjectId]) VALUES (85, N'通知系統維修任務', N'  EIP通知系統通知人錯誤
  三個工作天內完成作業並回報', N'2020-10-19', N'2020-10-23', 123, N'0', NULL)
INSERT [dbo].[tCalendar] ([fId], [fTitle], [fContent], [fStart], [fEnd], [fEmployeeId], [fSort], [fProjectId]) VALUES (86, N'旅遊網站開發', N'資料庫設計', N'2020-10-19', N'2020-10-23', 117, N'1', NULL)
INSERT [dbo].[tCalendar] ([fId], [fTitle], [fContent], [fStart], [fEnd], [fEmployeeId], [fSort], [fProjectId]) VALUES (87, N'通知系統維修任務', N'  EIP通知系統通知人錯誤
  三個工作天內完成作業並回報', N'2020-10-16', N'2020-10-17', 121, N'0', NULL)
SET IDENTITY_INSERT [dbo].[tCalendar] OFF
GO
SET IDENTITY_INSERT [dbo].[tEmployee] ON 

INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (100, N'陳奕凱', N'A123399102', N'a11111', N'設計部', N'主管', N'bell@gmail.com', CAST(N'2020-09-01' AS Date), N'0966983563', CAST(N'2020-01-24' AS Date), 50000, 208, N'0223339987', N'台灣', N'台北市', N'大學', N'台北市大安區復興南路一段390號2樓', N'台北市大安區復興南路一段390號2樓', N'漏咖', N'0922893450', 263.6, N'正式任用', 2, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (106, N'鍾佳播', N'A127633997', N'a22222', N'設計部', N'專員', N'a477865s@gmail.com', CAST(N'2020-09-01' AS Date), N'0978228358', CAST(N'2020-09-25' AS Date), 35000, 145, N'0223339987', N'台灣', N'新北市', N'國小', N'台北市大安區復興南路一段390號2樓', N'台北市大安區復興南路一段390號2樓', N'漏咖', N'0223339987', 8.5, N'試用期', 1, NULL, NULL, 799, 1500)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (107, N'郭威廉', N'A123399107', N'Q22222', N'設計部', N'專員', N'GOD@gmail.com', CAST(N'1994-09-10' AS Date), N'0978228358', CAST(N'2020-09-29' AS Date), 100000, 416, N'0223339983', N'台灣', N'新北市', N'博士', N'台北市大安區復興南路一段390號2樓', N'台北市大安區復興南路一段390號2樓', N'鍾佳播', N'0223339955', 4.5, N'試用期', 3, NULL, NULL, 1008, 4500)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (108, N'沈致廷', N'B120593889', N'x11111', N'人資部', N'經理', N'lin@gmail.com', CAST(N'1990-09-29' AS Date), N'0299307821', CAST(N'2020-09-29' AS Date), 30000, 125, N'0223339987', N'台灣', N'台北市', N'博士', N'台北市大安區復興南路一段390號2樓', N'台北市大安區復興南路一段390號2樓', N'老闆的老婆', N'0922993071', 4.5, N'試用期', 2, NULL, NULL, 667, 1500)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (109, N'曾珮瑜', N'B103985831', N'x11111', N'人資部', N'協理', N'tseng@gmail.com', CAST(N'1980-04-01' AS Date), N'0988075641', CAST(N'2020-09-29' AS Date), 200000, 833, N'0223339981', N'台灣', N'台中市', N'碩士', N'台北市大安區復興南路一段390號2樓', N'台北市大安區復興南路一段390號2樓', N'謝宏明', N'0229933967', 4.5, N'試用期', 3, NULL, NULL, 1008, 6400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (110, N'彭美惠', N'E196720003', N'b11111', N'設計部', N'專員', N'peng@gmail.com', CAST(N'1994-11-18' AS Date), N'0940560056', CAST(N'2020-10-02' AS Date), 50000, 208, N'0223339987', N'台灣', N'嘉義市', N'博士', N'台北市中山區南京東路三段287號7樓', N'464 嘉義市西區大庄村田中路240號5樓', N'彭子國', N'0223445893', 4, N'正式任用', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (111, N'王慶淑', N'G297779675', N'c11111', N'設計部', N'專員', N'wangwang@gmail.com', CAST(N'1989-06-08' AS Date), N'0985414781', CAST(N'2020-10-02' AS Date), 50000, 208, N'0285414781', N'台灣', N'桃園', N'大學', N'新北市蘆洲區中山二路272號1樓', N'新北市蘆洲區中山二路272號1樓', N'郭義威', N'0223339987', 1.5, N'試用期', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (112, N'劉世豪', N'F199274590', N'd11111', N'設計部', N'專員', N'liu@gmail.com', CAST(N'1971-01-01' AS Date), N'0981663543', CAST(N'2020-10-02' AS Date), 50000, 208, N'0281663543', N'台灣', N'新竹市', N'大學', N'新北市板橋區莒光路1號1樓', N'新北市板橋區莒光路1號1樓', N'林世豪', N'0223339987', 4, N'正式任用', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (113, N'陳雅婷', N'A193244011', N'e11111', N'設計部', N'專員', N'cheng@gmail.com', CAST(N'1965-07-16' AS Date), N'0990596878', CAST(N'2020-10-02' AS Date), 50000, 208, N'0229059687', N'台灣', N'苗栗市', N'大學', N'新北市板橋區四維路156號', N'新北市板橋區四維路156號', N'陳雅婷', N'0229059687', 1.5, N'試用期', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (114, N'王育誠', N'B192049746', N'q11111', N'設計部', N'專員', N'wangyu@gmail.com', CAST(N'1983-01-06' AS Date), N'0922858900', CAST(N'2020-05-21' AS Date), 50000, 208, N'0922858900', N'台灣', N'新北市', N'碩士', N'新北市板橋區四維路56號', N'新北市板橋區四維路56號', N'王玉陶', N'039950382', 143.4, N'試用期', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (115, N'張少羽', N'C193774687', N'c11111', N'設計部', N'專員', N'changhsao@gmail.com', CAST(N'1984-02-02' AS Date), N'0907022468', CAST(N'2020-10-02' AS Date), 50000, 208, N'029070224', N'台灣', N'新北市', N'大學', N'新北市板橋區四維路151號', N'新北市板橋區四維路151號', N'張羽', N'029070224', 1.5, N'試用期', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (116, N'劉俊諺', N'F195761430', N'w11111', N'設計部', N'專員', N'liu@gmail.com', CAST(N'1994-09-30' AS Date), N'0950694772', CAST(N'2020-10-02' AS Date), 50000, 208, N'0229506941', N'台灣', N'新北市', N'碩士', N'台北市中正區八德路一段1號', N'台北市中正區八德路一段1號', N'劉諺俊', N'0229506941', 1.5, N'正式任用', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (117, N'郭威力', N'H297842245', N'r11111', N'資訊部', N'專員', N'su@gmail.com', CAST(N'1980-10-01' AS Date), N'0941229462', CAST(N'2020-02-02' AS Date), 60000, 250, N'0224122946', N'台灣', N'花蓮縣', N'大學', N'新北市四維路1號1樓', N'新北市四維路1號1樓', N'蘇芸筱', N'0224122946', 1.5, N'正式任用', 1, NULL, NULL, 1008, 3000)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (118, N'林呈諺', N'A297244180', N'a11111', N'資訊部', N'專員', N'tsai@gmail.com', CAST(N'1980-08-02' AS Date), N'0979523619', CAST(N'2020-10-02' AS Date), 55000, 229, N'0227952361', N'台灣', N'桃園', N'大學', N'台北市萬華區萬大路533號', N'台北市萬華區萬大路533號', N'蔡平恩', N'0227952361', 1.5, N'正式任用', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (119, N'李東哥', N'E298647410', N'e11111', N'資訊部', N'專員', N'mrscheng@gmail.com', CAST(N'1943-11-12' AS Date), N'0979523619', CAST(N'2020-10-02' AS Date), 53000, 220, N'0279523619', N'台灣', N'高雄市', N'大學', N'台北市萬華區萬大路108號', N'台北市萬華區萬大路108號', N'陳子恩', N'0223339987', 1.5, N'正式任用', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (120, N'王玠神', N'F199804767', N'f11111', N'資訊部', N'專員', N'bo@gmail.com', CAST(N'1993-02-02' AS Date), N'0904516034', CAST(N'2020-10-02' AS Date), 56000, 233, N'0229045161', N'台灣', N'新北市', N'國中', N'新北市板橋區中山路二段106號', N'新北市板橋區中山路二段106號', N'陳致洪', N'0229045161', 1.5, N'正式任用', 1, NULL, NULL, 1008, 2400)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (121, N'張經理', N'D296440216', N'd11111', N'資訊部', N'經理', N'huang@gmail.com', CAST(N'1990-07-02' AS Date), N'0977356697', CAST(N'2020-10-02' AS Date), 80000, 333, N'0277356697', N'英國', N'倫敦', N'博士', N'台北市中山區錦州街177號', N'台北市中山區錦州街177號', N'黃燈輝', N'0277356697', 1.5, N'正式任用', 3, NULL, NULL, 1008, 3700)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (122, N'李龍龍', N'H193707029', N'h11111', N'資訊部', N'專員', N'a477865s@gmail.com', CAST(N'1992-09-29' AS Date), N'0976120263', CAST(N'2020-07-15' AS Date), 35000, 145, N'0276120263', N'台灣', N'彰化市', N'碩士', N'台北市中山區錦州街166號', N'台北市中山區錦州街166號', N'潘婷', N'0276120263', 80.5, N'正式任用', 1, NULL, NULL, 799, 1500)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (123, N'林佳璇', N'G297294186', N'g11111', N'資訊部', N'主管', N'huangkuo@gmail.com', CAST(N'1988-09-16' AS Date), N'0985283776', CAST(N'2020-10-02' AS Date), 30000, 125, N'0285283776', N'台灣', N'花蓮市', N'大學', N'台北市中山區吉林路239號', N'台北市中山區吉林路239號', N'黃國真', N'0285283776', 1.5, N'試用期', 2, NULL, NULL, 667, 1500)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (124, N'劉宏彬', N'E192234060', N'e11111', N'資訊部', N'專員', N'ma@gmail.com', CAST(N'1986-05-03' AS Date), N'0991975096', CAST(N'2020-05-21' AS Date), 40000, 166, N'0291975096', N'台灣', N'高雄市', N'碩士', N'高雄市中山二路一段3號', N'高雄市中山二路一段3號', N'馬麗麗', N'0291975096', 135.5, N'試用期', 1, NULL, NULL, 882, 1900)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (125, N'林瑞陽', N'F291949289', N'f11111', N'資訊部', N'專員', N'Zhao@gmail.com', CAST(N'1989-09-28' AS Date), N'0959281774', CAST(N'2020-05-21' AS Date), 34000, 141, N'0259281774', N'台灣', N'新北市', N'大學', N'新北市板橋區民生路1號', N'新北市板橋區民生路1號', N'趙子龍', N'0239281774', 1.5, N'正式任用', 1, NULL, NULL, 766, 1500)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (126, N'梅川依', N'Y295235178', N'y11111', N'資訊部', N'專員', N'lin@gmail.com', CAST(N'1980-04-09' AS Date), N'0904801364', CAST(N'2020-10-02' AS Date), 70000, 291, N'0204801364', N'日本', N'日本', N'碩士', N'台北市松山區敦化北路340-9號', N'台北市松山區敦化北路340-9號', N'本多忠勝', N'0204801364', 1.5, N'試用期', 1, NULL, NULL, 1008, 3000)
INSERT [dbo].[tEmployee] ([fEmployeeId], [fName], [fIdent], [fPassword], [fDepartment], [fTitle], [fEmail], [fBirth], [fPhonePersonal], [fHireDate], [fSalaryMonth], [fSalaryHour], [fPhoneHouse], [fCountry], [fBirthPlace], [fEducation], [fAddressNow], [fAddressOrigin], [fEngyName], [fEngyPhone], [fOld], [fState], [fAuth], [fFireDate], [fBackDate], [fLBI], [fHI]) VALUES (127, N'蘇筱芸', N'B292509696', N'b11111', N'人資部', N'專員', N'linchengyen@gmail.com', CAST(N'1994-11-16' AS Date), N'0978228358', CAST(N'2020-09-15' AS Date), 50000, 208, N'0282572063', N'台灣', N'台北市', N'大學', N'新北市板橋區民生路3段8號26樓', N'台北市中山區中山北路1號', N'林俊傑', N'0800000123', 18.5, N'正式任用', 1, NULL, NULL, 1008, 2400)
SET IDENTITY_INSERT [dbo].[tEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[tLeave] ON 

INSERT [dbo].[tLeave] ([fId], [fEmployeeId], [fSort], [fApplyDate], [fActiveDate], [fEndDate], [fTimeCount], [fReason], [fStatus]) VALUES (81, 117, N'事假', CAST(N'2020-10-16T09:00:34.353' AS DateTime), CAST(N'2020-10-05T09:00:00.000' AS DateTime), CAST(N'2020-10-05T17:00:00.000' AS DateTime), 8, N'(測試用)家裡突然有急事', 0)
INSERT [dbo].[tLeave] ([fId], [fEmployeeId], [fSort], [fApplyDate], [fActiveDate], [fEndDate], [fTimeCount], [fReason], [fStatus]) VALUES (82, 117, N'普通傷病假', CAST(N'2020-10-16T09:04:12.157' AS DateTime), CAST(N'2020-10-06T09:00:00.000' AS DateTime), CAST(N'2020-10-06T17:00:00.000' AS DateTime), 8, N'(測試用)病重須在家休養', 0)
INSERT [dbo].[tLeave] ([fId], [fEmployeeId], [fSort], [fApplyDate], [fActiveDate], [fEndDate], [fTimeCount], [fReason], [fStatus]) VALUES (85, 117, N'特休假', CAST(N'2020-10-16T09:13:27.833' AS DateTime), CAST(N'2020-10-07T09:00:00.000' AS DateTime), CAST(N'2020-10-07T17:00:00.000' AS DateTime), 8, N'(測試用)休假來調整身心', 0)
SET IDENTITY_INSERT [dbo].[tLeave] OFF
GO
SET IDENTITY_INSERT [dbo].[tLeavecount] ON 

INSERT [dbo].[tLeavecount] ([fId], [fEmployeeId], [fSortId], [fAlltime], [fUesdtime], [fRemaintime], [fStartdate], [fEnddate]) VALUES (46, 117, 1, 24, 8, 16, CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-10-16T02:12:08.310' AS DateTime))
INSERT [dbo].[tLeavecount] ([fId], [fEmployeeId], [fSortId], [fAlltime], [fUesdtime], [fRemaintime], [fStartdate], [fEnddate]) VALUES (47, 117, 3, 240, 8, 232, CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tLeavecount] ([fId], [fEmployeeId], [fSortId], [fAlltime], [fUesdtime], [fRemaintime], [fStartdate], [fEnddate]) VALUES (48, 117, 2, 112, 8, 104, CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tLeavecount] ([fId], [fEmployeeId], [fSortId], [fAlltime], [fUesdtime], [fRemaintime], [fStartdate], [fEnddate]) VALUES (49, 121, 1, 0, 0, 0, CAST(N'2020-10-02T00:00:00.000' AS DateTime), CAST(N'2020-10-16T09:52:45.493' AS DateTime))
SET IDENTITY_INSERT [dbo].[tLeavecount] OFF
GO
SET IDENTITY_INSERT [dbo].[tleavesort] ON 

INSERT [dbo].[tleavesort] ([fSortId], [fLeavename], [fLeavecontent]) VALUES (1, N'特休假', N'<ol>
<li>適用勞動基準法之事業單位，依勞動基準法第38條第1項規定，勞工在同一雇主或事業單位，繼續工作滿一定期間者，應依下列規定給予特別休假：</li>
<li>特別休假，依所填受僱日期、特休給假方式及約定給假日期估算日數。
<ul>
<li>6個月以上1年未滿者，3日。</li>
<li>1年以上2年未滿者，7日。</li>
<li>2年以上3年未滿者，10日。</li>
<li>3年以上5年未滿者，每年14日。</li>
<li>5年以上10年未滿者，每年15日。</li>
<li>10年以上者，每1年加給1日，加至30日為止。</li>
</ul>
</li>
<li>勞工之特別休假，因年度終結或契約終止而未休之日數，雇主應發給工資。但年度終結未休之日數，經勞雇雙方協商遞延至次一年度實施者，於次一年度終結或契約終止仍未休之日數，雇主應發給工資。</li>
<li>依勞動基準法第84條之2規定，勞工工作年資自受僱之日起算。勞工留職停薪期間，得不併入工作年資計算。 惟如勞資雙方對於留職停薪期間年資計算另有約定，可從其約定。</li>
</ol>')
INSERT [dbo].[tleavesort] ([fSortId], [fLeavename], [fLeavecontent]) VALUES (2, N'事假', N'<p>一年內合計不得超過 14 日，事假期間不給工資。</p>')
INSERT [dbo].[tleavesort] ([fSortId], [fLeavename], [fLeavecontent]) VALUES (3, N'普通傷病假', N'<ol>
<li>未住院者，一年內合計不得超過 30 日。</li>
<li>住院者，二年內合計不得超過一年。</li>
<li>未住院傷病假與住院傷病假二年內合計不得超過一年。</li>
<li>經醫師診斷，罹患癌症(含原位癌)採門診方式治療或懷孕期間須安胎休養者 ，其治療期間或休養期間，併入住院傷病假計算。 普通傷病假一年內未超過 30 日部分，工資折半發給。</li>
</ol>')
INSERT [dbo].[tleavesort] ([fSortId], [fLeavename], [fLeavecontent]) VALUES (5, N'婚假', N'<p>勞工結婚給予 8 日，工資照給。</p>')
INSERT [dbo].[tleavesort] ([fSortId], [fLeavename], [fLeavecontent]) VALUES (6, N'喪假', N'<ol>
<li>父母、養父母、繼父母、配偶喪亡者，喪假8日。</li>
<li>祖父母、子女、配偶之父母、配偶之養父母或繼父母喪亡者，喪假6日。</li>
<li>曾祖父母、兄弟姊妹、配偶之祖父母喪亡者，喪假3日。</li>
</ol>')
INSERT [dbo].[tleavesort] ([fSortId], [fLeavename], [fLeavecontent]) VALUES (8, N'公傷病假', N'<p>因職業災害而致殘疾、傷害或疾病者，其治療、休養期間，給予公傷病假。工資照給。</p>')
SET IDENTITY_INSERT [dbo].[tleavesort] OFF
GO
SET IDENTITY_INSERT [dbo].[tLevel] ON 

INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (6, 1090101, N'規劃', 120, 20400)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (7, 1090101, N'開發', 150, 35000)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (30, 1090801, N'規劃', 100, NULL)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (31, 1090801, N'開發', 500, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (32, 1090801, N'測試', 10, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (33, 1090801, N'驗收', 0, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (34, 1070101, N'規劃', 200, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (37, 1090101, N'整合', 60, 25400)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (93, 1070602, N'規劃', 200, 3600)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (94, 1070602, N'開發', 200, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (95, 1070602, N'測試', 30, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (96, 1080305, N'規劃', 30, 5200)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (97, 1080305, N'開發', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (98, 1080305, N'測試', 20, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (99, 1090102, N'規劃', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (100, 1090102, N'開發', 200, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (101, 1090102, N'測試', 50, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (102, 1090908, N'規劃', 30, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (103, 1090908, N'開發', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (104, 1090908, N'測試', 50, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (105, 1090707, N'規劃', 0, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (106, 1090707, N'開發', 0, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (107, 1090707, N'測試', 0, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (150, 1091001, N'規劃', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (151, 1091001, N'開發', 150, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (152, 1091001, N'測試', 50, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (153, 1091001, N'整合', 50, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (158, 1091015, N'規劃', 50, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (159, 1091015, N'開發', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (160, 1091015, N'測試', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (161, 1091015, N'整合', 30, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (166, 1091016, N'規劃', 30, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (167, 1091016, N'開發', 100, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (168, 1091016, N'測試', 50, 0)
INSERT [dbo].[tLevel] ([fLevelId], [fProjectId], [fLevelName], [fEstimateTime], [fSpendCost]) VALUES (169, 1091016, N'整合', 50, 0)
SET IDENTITY_INSERT [dbo].[tLevel] OFF
GO
SET IDENTITY_INSERT [dbo].[tMetting_date] ON 

INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (9, 108, CAST(N'2020-10-14' AS Date), N'人資開會', CAST(N'08:30:00' AS Time), CAST(N'11:00:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (13, 121, CAST(N'2020-10-07' AS Date), N'客戶開會', CAST(N'12:30:00' AS Time), CAST(N'14:30:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (14, 121, CAST(N'2020-10-08' AS Date), N'主管會議', CAST(N'09:30:00' AS Time), CAST(N'13:30:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (15, 108, CAST(N'2020-10-12' AS Date), N'人資報告', CAST(N'09:00:00' AS Time), CAST(N'11:00:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (16, 121, CAST(N'2020-10-07' AS Date), N'客戶開會', CAST(N'15:30:00' AS Time), CAST(N'16:30:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (18, 121, CAST(N'2020-10-08' AS Date), N'主管會議', CAST(N'15:30:00' AS Time), CAST(N'16:30:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (29, 121, CAST(N'2020-10-14' AS Date), N'客戶開會', CAST(N'15:30:00' AS Time), CAST(N'16:30:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (30, 108, CAST(N'2020-10-21' AS Date), N'人資會議', CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (38, 121, CAST(N'2020-10-16' AS Date), N'周會', CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (39, 100, CAST(N'2020-10-21' AS Date), N'旅遊網站案會議', CAST(N'13:30:00' AS Time), CAST(N'16:30:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (40, 123, CAST(N'2020-10-15' AS Date), N'主管會議', CAST(N'08:00:00' AS Time), CAST(N'09:30:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (44, 123, CAST(N'2020-10-14' AS Date), N'開會', CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (47, 123, CAST(N'2020-10-15' AS Date), N'開會', CAST(N'09:00:00' AS Time), CAST(N'11:00:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (49, 121, CAST(N'2020-10-16' AS Date), N'主管會議', CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (50, 121, CAST(N'2020-10-16' AS Date), N'專案會議', CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (52, 117, CAST(N'2020-10-16' AS Date), N'專案開會', CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time), N'B')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (53, 117, CAST(N'2020-10-16' AS Date), N'旅遊專案會議', CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (54, 117, CAST(N'2020-10-16' AS Date), N'客戶開會', CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (56, 123, CAST(N'2020-10-23' AS Date), N'旅遊網站專會', CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time), N'A')
INSERT [dbo].[tMetting_date] ([fId], [fEmployeeId], [fDate], [fReason], [fStarttime], [fEndtime], [fRoom]) VALUES (57, 117, CAST(N'2020-10-16' AS Date), N'公司內部系', CAST(N'11:30:00' AS Time), CAST(N'12:30:00' AS Time), N'A')
SET IDENTITY_INSERT [dbo].[tMetting_date] OFF
GO
SET IDENTITY_INSERT [dbo].[tNotify] ON 

INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (200, 117, N'審核通過', N'申請休息日加班已通過審核', NULL, 1, CAST(N'2020-10-16T09:05:47.910' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (201, 117, N'審核通過', N'申請特休假已通過審核', NULL, 1, CAST(N'2020-10-16T09:13:59.100' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (202, 117, N'審核通過', N'申請普通傷病假已通過審核', NULL, 1, CAST(N'2020-10-16T09:14:02.683' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (203, 117, N'審核通過', N'申請事假已通過審核', NULL, 1, CAST(N'2020-10-16T09:14:06.270' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (204, 117, N'(2020-10-23)旅遊網站專會', N'10:00~12:00請準時出席', NULL, 1, CAST(N'2020-10-16T09:31:01.253' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (205, 123, N'(2020-10-23)旅遊網站專會', N'10:00~12:00請準時出席', NULL, 1, CAST(N'2020-10-16T09:31:01.300' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (206, 121, N'(2020-10-23)旅遊網站專會', N'10:00~12:00請準時出席', NULL, 1, CAST(N'2020-10-16T09:31:01.363' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (207, 117, N'工時紀錄審查不通過', N'請盡快修正紀錄', NULL, 1, CAST(N'2020-10-16T09:58:36.873' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (208, 117, N'審核通過', N'申請休息日加班已通過審核', NULL, 1, CAST(N'2020-10-16T10:46:06.700' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (209, 117, N'審核通過', N'申請補打卡2020/10/15 下午 05:00:00已通過審核', NULL, 1, CAST(N'2020-10-16T10:46:10.207' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (210, 117, N'旅遊網站開發', N'請到我的任務查看新任務', NULL, 1, CAST(N'2020-10-16T10:51:19.677' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (211, 123, N'旅遊網站開發', N'資料庫設計任務已已完成，待請主管驗收', NULL, 0, CAST(N'2020-10-16T10:52:32.293' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (212, 117, N'(2020-10-16)公司內部系統會議', N'11:00~12:30請準時出席', NULL, 1, CAST(N'2020-10-16T10:58:16.423' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (213, 123, N'(2020-10-16)公司內部系統會議', N'11:00~12:30請準時出席', NULL, 1, CAST(N'2020-10-16T10:58:16.497' AS DateTime))
INSERT [dbo].[tNotify] ([fId], [fEmployeeId], [fTitle], [fContent], [fSort], [fType], [fTime]) VALUES (214, 121, N'(2020-10-16)公司內部系統會議', N'11:00~12:30請準時出席', NULL, 1, CAST(N'2020-10-16T10:58:16.577' AS DateTime))
SET IDENTITY_INSERT [dbo].[tNotify] OFF
GO
SET IDENTITY_INSERT [dbo].[tOvertime] ON 

INSERT [dbo].[tOvertime] ([fId], [fEmployeeId], [fSort], [fSubmitDate], [fActiveDate], [fTimeCount], [fReason], [fState]) VALUES (90, 117, N'休息日加班', CAST(N'2020-10-16T10:45:27.247' AS DateTime), CAST(N'2020-10-17T08:00:00.000' AS DateTime), 8, N'今天是休息日，為了完成專案，我需要加班八小時!', NULL)
SET IDENTITY_INSERT [dbo].[tOvertime] OFF
GO
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1070101, N'教育平台網站', 121, N'旅行社', 200000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2018-07-31T00:00:00.000' AS DateTime), 0.9, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1070602, N'牙醫診所網站', 121, N'牙醫診所', 200000, CAST(N'2018-06-01T00:00:00.000' AS DateTime), CAST(N'2019-02-10T00:00:00.000' AS DateTime), 0.16666666666666666, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1080305, N'健身房網站', 121, N'健身房', 300000, CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-10-03T00:00:00.000' AS DateTime), 0.125, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1090101, N'公司內部系統', 121, N'a公司', 200000, CAST(N'2020-03-01T00:00:00.000' AS DateTime), CAST(N'2020-09-30T00:00:00.000' AS DateTime), 0.75, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1090102, N'建築事務所網站', 121, N'建築事務所', 350000, CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-10-03T00:00:00.000' AS DateTime), 0.8, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1090707, N'家具行進銷存系統', 121, N'家具行', 450000, CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-10-30T00:00:00.000' AS DateTime), 0.7, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1090801, N'購物商城網站', 121, N'商城', 100000, CAST(N'2020-08-01T00:00:00.000' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime), 0.7, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1090908, N'室內設計網站', 121, N'室內設計公司', 150000, CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-10-30T00:00:00.000' AS DateTime), 0.7, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1091001, N'社群網站', 121, N'旅行社', 100000, CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-12-30T00:00:00.000' AS DateTime), 0.45, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1091015, N'景觀設計網站', 123, N'景觀公司', 400000, CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-12-30T00:00:00.000' AS DateTime), 0.6, N'資訊部', N'進行中')
INSERT [dbo].[tProject] ([fProjectId], [fProjectName], [fEmployeeId], [fClient], [fPrice], [fCreatdDate], [fDateline], [fProgress], [fDepartment], [fStatus]) VALUES (1091016, N'旅遊網站開發', 123, N'旅行社', 400000, CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-12-30T00:00:00.000' AS DateTime), 0, N'資訊部', N'進行中')
GO
SET IDENTITY_INSERT [dbo].[tProjectDetail] ON 

INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (2, 1090101, 6, N'資料蒐集', 123, N'驗收完成', CAST(N'2020-03-01T00:00:00.000' AS DateTime), CAST(N'2020-03-10T00:00:00.000' AS DateTime), 30, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (3, 1090101, 7, N'流程圖', 117, N'驗收完成', CAST(N'2020-03-10T00:00:00.000' AS DateTime), CAST(N'2020-03-12T00:00:00.000' AS DateTime), 32, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (7, 1090101, 6, N'資料庫建置', 117, N'驗收完成', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-03-18T04:00:00.000' AS DateTime), 18, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (9, 1090101, 7, N'主頁規劃', 117, N'驗收完成', CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-14T00:00:00.000' AS DateTime), 28, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (54, 1090101, 7, N'行事曆功能', 117, N'驗收完成', CAST(N'2020-04-14T00:00:00.000' AS DateTime), CAST(N'2020-04-28T00:00:00.000' AS DateTime), 21, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (67, 1090101, 7, N'公佈欄功能', 117, N'驗收完成', CAST(N'2020-04-28T00:00:00.000' AS DateTime), CAST(N'2020-05-02T00:00:00.000' AS DateTime), 31, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (68, 1090101, 7, N'考勤管理功能', 120, N'待驗收', CAST(N'2020-05-02T00:00:00.000' AS DateTime), CAST(N'2020-10-28T00:00:00.000' AS DateTime), 177, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (72, 1090101, 37, N'功能測試整合', 123, N'進行中', CAST(N'2020-10-15T00:00:00.000' AS DateTime), CAST(N'2020-10-31T00:00:00.000' AS DateTime), 105, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (76, 1080305, 96, N'資料庫建置', 117, N'驗收完成', CAST(N'2020-06-30T00:00:00.000' AS DateTime), CAST(N'2020-10-31T00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (79, 1080305, 96, N'介面設計', 117, N'待驗收', CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime), 8, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (80, 1080305, 96, N'資料蒐集', 123, N'待驗收', CAST(N'2020-10-10T00:00:00.000' AS DateTime), CAST(N'2020-10-22T00:00:00.000' AS DateTime), 16, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (104, 1070602, 93, N'資料庫設計', 117, N'驗收完成', CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 18, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (107, 1091001, 150, N'資料庫設計', 121, N'未開始', CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (109, 1091015, 158, N'資料庫設計', 117, N'進行中', CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (110, 1091015, 158, N'流程圖', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (111, 1091015, 158, N'資料庫建置', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (113, 1091015, 158, N'流程圖', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (114, 1091015, 158, N'資料庫建置', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (115, 1091015, 159, N'介面設計', 106, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (116, 1091015, 159, N'訂單系統', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (117, 1091015, 160, N'介面整合', 106, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (118, 1091015, 158, N'流程圖', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (119, 1091015, 158, N'資料庫建置', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (120, 1091015, 159, N'介面設計', 106, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (121, 1091015, 159, N'訂單系統', 100, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (122, 1091015, 160, N'介面整合', 106, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (123, 1090908, 102, N'流程圖', 117, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (124, 1090908, 102, N'資料庫建置', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (125, 1090908, 103, N'介面設計', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (126, 1090908, 103, N'訂單系統', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (127, 1090908, 104, N'介面整合', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (134, 1070602, 93, N'流程圖', 117, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (135, 1070602, 93, N'資料庫建置', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (136, 1070602, 94, N'介面設計', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (137, 1070602, 94, N'訂單系統', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (138, 1070602, 95, N'介面整合', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (139, 1080305, 96, N'流程圖', 117, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (140, 1080305, 96, N'資料庫建置', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (141, 1080305, 97, N'介面設計', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (142, 1080305, 97, N'訂單系統', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (143, 1080305, 98, N'介面整合', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (144, 1091016, 166, N'資料庫設計', 117, N'待驗收', CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-10-23T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (145, 1091016, 166, N'流程圖', 117, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (146, 1091016, 166, N'資料庫建置', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (147, 1091016, 167, N'介面設計', 118, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (148, 1091016, 167, N'訂單系統', 119, N'未開始', NULL, NULL, 0, NULL)
INSERT [dbo].[tProjectDetail] ([fProjectDetailId], [fProjectId], [fLevelId], [fTaskName], [fEmployeeId], [fStatus], [fStartTime], [fDeadline], [fTimes], [fRemarks]) VALUES (149, 1091016, 168, N'介面整合', 119, N'未開始', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[tProjectDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tPunchtime] ON 

INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (373, CAST(N'2020-09-01T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (374, CAST(N'2020-09-01T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (375, CAST(N'2020-09-02T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (376, CAST(N'2020-09-02T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (377, CAST(N'2020-09-03T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (378, CAST(N'2020-09-03T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (379, CAST(N'2020-09-04T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (380, CAST(N'2020-09-04T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (381, CAST(N'2020-09-07T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (382, CAST(N'2020-09-07T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (383, CAST(N'2020-09-08T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (384, CAST(N'2020-09-08T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (385, CAST(N'2020-09-09T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (386, CAST(N'2020-09-09T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (387, CAST(N'2020-09-10T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (388, CAST(N'2020-09-10T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (389, CAST(N'2020-09-11T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (390, CAST(N'2020-09-11T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (391, CAST(N'2020-09-14T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (392, CAST(N'2020-09-14T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (393, CAST(N'2020-09-15T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (394, CAST(N'2020-09-15T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (395, CAST(N'2020-09-16T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (396, CAST(N'2020-09-16T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (397, CAST(N'2020-09-17T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (398, CAST(N'2020-09-17T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (399, CAST(N'2020-09-18T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (400, CAST(N'2020-09-18T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (401, CAST(N'2020-09-21T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (402, CAST(N'2020-09-21T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (403, CAST(N'2020-09-22T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (404, CAST(N'2020-09-22T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (405, CAST(N'2020-09-23T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (406, CAST(N'2020-09-23T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (407, CAST(N'2020-09-24T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (408, CAST(N'2020-09-24T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (409, CAST(N'2020-09-25T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (410, CAST(N'2020-09-25T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (411, CAST(N'2020-09-28T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (412, CAST(N'2020-09-28T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (413, CAST(N'2020-09-29T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (414, CAST(N'2020-09-29T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (415, CAST(N'2020-09-30T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (416, CAST(N'2020-09-30T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (417, CAST(N'2020-10-01T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (418, CAST(N'2020-10-01T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (419, CAST(N'2020-10-02T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (420, CAST(N'2020-10-02T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (421, CAST(N'2020-10-05T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (422, CAST(N'2020-10-05T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (423, CAST(N'2020-10-06T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (424, CAST(N'2020-10-06T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (425, CAST(N'2020-10-07T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (426, CAST(N'2020-10-07T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (427, CAST(N'2020-10-08T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (428, CAST(N'2020-10-08T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (429, CAST(N'2020-10-09T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (430, CAST(N'2020-10-09T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (431, CAST(N'2020-10-12T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (432, CAST(N'2020-10-12T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (433, CAST(N'2020-10-13T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (434, CAST(N'2020-10-13T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (435, CAST(N'2020-10-14T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (436, CAST(N'2020-10-14T17:00:00.000' AS DateTime), 117, N'下班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (443, CAST(N'2020-10-15T09:00:00.000' AS DateTime), 117, N'上班', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (444, CAST(N'2020-10-15T17:00:00.000' AS DateTime), 117, N'已補打卡', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (446, CAST(N'2020-10-16T10:38:42.000' AS DateTime), 123, N'遲到', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (447, CAST(N'2020-10-16T10:39:56.000' AS DateTime), 117, N'遲到', N'一般打卡', NULL, NULL)
INSERT [dbo].[tPunchtime] ([fId], [fDatetime], [fEmployeeId], [fstatus], [fPunchclass], [fLatitude], [fLongitude]) VALUES (448, CAST(N'2020-10-16T17:57:09.000' AS DateTime), 121, N'下班', N'一般打卡', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tPunchtime] OFF
GO
SET IDENTITY_INSERT [dbo].[tSignoff] ON 

INSERT [dbo].[tSignoff] ([fId], [fLeaveId], [fAlpplypunchId], [fOvertimeId], [fSupervisorId], [fIsAgreed], [fApplyClass], [fStartdate], [fPassdate], [fEnddate], [fRevoke], [fReason]) VALUES (172, 81, NULL, NULL, 123, 1, N'事假', CAST(N'2020-10-16T09:00:34.880' AS DateTime), CAST(N'2020-10-16T09:14:05.817' AS DateTime), CAST(N'2020-10-05T09:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tSignoff] ([fId], [fLeaveId], [fAlpplypunchId], [fOvertimeId], [fSupervisorId], [fIsAgreed], [fApplyClass], [fStartdate], [fPassdate], [fEnddate], [fRevoke], [fReason]) VALUES (173, 82, NULL, NULL, 123, 1, N'普通傷病假', CAST(N'2020-10-16T09:04:12.473' AS DateTime), CAST(N'2020-10-16T09:14:02.240' AS DateTime), CAST(N'2020-10-06T09:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tSignoff] ([fId], [fLeaveId], [fAlpplypunchId], [fOvertimeId], [fSupervisorId], [fIsAgreed], [fApplyClass], [fStartdate], [fPassdate], [fEnddate], [fRevoke], [fReason]) VALUES (177, 85, NULL, NULL, 123, 1, N'特休假', CAST(N'2020-10-16T09:13:28.133' AS DateTime), CAST(N'2020-10-16T09:13:58.547' AS DateTime), CAST(N'2020-10-07T09:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tSignoff] ([fId], [fLeaveId], [fAlpplypunchId], [fOvertimeId], [fSupervisorId], [fIsAgreed], [fApplyClass], [fStartdate], [fPassdate], [fEnddate], [fRevoke], [fReason]) VALUES (178, NULL, 12, NULL, 123, 1, N'未打卡', CAST(N'2020-10-16T10:40:52.337' AS DateTime), CAST(N'2020-10-16T10:46:10.167' AS DateTime), CAST(N'2020-10-19T10:40:52.337' AS DateTime), NULL, NULL)
INSERT [dbo].[tSignoff] ([fId], [fLeaveId], [fAlpplypunchId], [fOvertimeId], [fSupervisorId], [fIsAgreed], [fApplyClass], [fStartdate], [fPassdate], [fEnddate], [fRevoke], [fReason]) VALUES (179, NULL, NULL, 90, 123, 1, N'休息日加班', CAST(N'2020-10-17T08:00:00.000' AS DateTime), CAST(N'2020-10-16T10:46:06.677' AS DateTime), CAST(N'2020-10-17T08:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tSignoff] OFF
GO
SET IDENTITY_INSERT [dbo].[tTeamMember] ON 

INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (16, 1080305, 118)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (17, 1080305, 119)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (24, 1090101, 117)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (28, 1090102, 118)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (29, 1090102, 119)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (33, 1070101, 126)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (38, 1070602, 117)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (44, 1091001, 118)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (45, 1091001, 119)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (46, 1091001, 121)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (47, 1091001, 122)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (48, 1090908, 118)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (53, 1090101, 123)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (54, 1080305, 117)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (55, 1080305, 123)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (56, 1090707, 119)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (57, 1090707, 120)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (58, 1090801, 124)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (59, 1090801, 125)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (60, 1091015, 117)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (61, 1091015, 118)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (62, 1091015, 119)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (63, 1091015, 121)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (67, 1090101, 121)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (69, 1091016, 117)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (70, 1091016, 118)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (71, 1091016, 119)
INSERT [dbo].[tTeamMember] ([fId], [fProjectId], [fEmployeeId]) VALUES (72, 1091016, 120)
SET IDENTITY_INSERT [dbo].[tTeamMember] OFF
GO
SET IDENTITY_INSERT [dbo].[tTimeRecords] ON 

INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (18, CAST(N'2020-03-02T00:00:00.000' AS DateTime), 117, 1090101, 68, 50, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (19, CAST(N'2020-04-03T00:00:00.000' AS DateTime), 117, 1090101, 72, 60, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (21, CAST(N'2020-05-05T00:00:00.000' AS DateTime), 117, 1090101, 2, 100, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (22, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 117, 1090101, 3, 30, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (23, CAST(N'2020-07-01T00:00:00.000' AS DateTime), 117, 1090101, 3, 20, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (24, CAST(N'2020-08-02T00:00:00.000' AS DateTime), 117, 1080305, 79, 30, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (25, CAST(N'2020-09-03T00:00:00.000' AS DateTime), 117, 1080305, 80, 50, N'同意', N'時數異常')
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (26, CAST(N'2020-10-01T00:00:00.000' AS DateTime), 117, 1080305, 80, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (28, CAST(N'2020-10-02T00:00:00.000' AS DateTime), 117, 1080305, 72, 2, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (29, CAST(N'2020-10-03T00:00:00.000' AS DateTime), 117, 1090101, 72, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (31, CAST(N'2020-10-04T00:00:00.000' AS DateTime), 117, 1090101, 72, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (32, CAST(N'2020-10-05T00:00:00.000' AS DateTime), 117, 1090101, 72, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (48, CAST(N'2020-10-07T00:00:00.000' AS DateTime), 117, 1090101, 67, 6, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (49, CAST(N'2020-10-08T00:00:00.000' AS DateTime), 117, 1090101, 3, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (54, CAST(N'2020-10-09T00:00:00.000' AS DateTime), 117, 1090101, 72, 10, N'同意', N'時數異常')
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (55, CAST(N'2020-10-10T00:00:00.000' AS DateTime), 117, 1090101, 72, 2, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (59, CAST(N'2020-10-11T00:00:00.000' AS DateTime), 117, 1090101, 54, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (60, CAST(N'2020-10-12T00:00:00.000' AS DateTime), 117, 1090101, 72, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (61, CAST(N'2020-10-13T00:00:00.000' AS DateTime), 117, 1090101, 72, 8, N'同意', N'時數異常')
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (62, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 117, 1090101, 72, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (63, CAST(N'2020-10-01T00:00:00.000' AS DateTime), 123, 1090101, 72, 1, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (64, CAST(N'2020-10-02T00:00:00.000' AS DateTime), 123, 1090101, 72, 1, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (65, CAST(N'2020-10-03T00:00:00.000' AS DateTime), 123, 1090101, 68, 1, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (68, CAST(N'2020-10-04T00:00:00.000' AS DateTime), 123, 1090101, 3, 5, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (69, CAST(N'2020-10-05T00:00:00.000' AS DateTime), 123, 1080305, 76, 2, N'同意', N'時數異常')
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (70, CAST(N'2020-10-06T00:00:00.000' AS DateTime), 123, 1070602, 104, 10, N'同意', N'時數異常')
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (71, CAST(N'2020-10-07T00:00:00.000' AS DateTime), 123, 1070602, 104, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (72, CAST(N'2020-10-08T00:00:00.000' AS DateTime), 123, 1090101, 72, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (73, CAST(N'2020-10-09T00:00:00.000' AS DateTime), 123, 1090101, 68, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (74, CAST(N'2020-10-10T00:00:00.000' AS DateTime), 123, 1090101, 68, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (75, CAST(N'2020-10-11T00:00:00.000' AS DateTime), 123, 1090101, 7, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (76, CAST(N'2020-10-12T00:00:00.000' AS DateTime), 123, 1080305, 80, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (77, CAST(N'2020-10-13T00:00:00.000' AS DateTime), 123, 1080305, 79, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (78, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 123, 1080305, 80, 8, N'同意', NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (79, CAST(N'2020-10-15T00:00:00.000' AS DateTime), 117, 1091015, 109, 8, NULL, NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (80, CAST(N'2020-10-15T00:00:00.000' AS DateTime), 117, 1090101, 9, 8, NULL, NULL)
INSERT [dbo].[tTimeRecords] ([fTimeRecordId], [fDate], [fEmployeeId], [fProjectId], [fProjectDetailId], [fTime], [fApprove], [fRemarks]) VALUES (81, CAST(N'2020-10-16T00:00:00.000' AS DateTime), 117, 1090101, 2, 8, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tTimeRecords] OFF
GO
ALTER TABLE [dbo].[tApplypunch]  WITH CHECK ADD  CONSTRAINT [FK_tApplypunch_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tApplypunch] CHECK CONSTRAINT [FK_tApplypunch_tEmployee]
GO
ALTER TABLE [dbo].[tBillboard]  WITH CHECK ADD  CONSTRAINT [FK_tBillboard_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tBillboard] CHECK CONSTRAINT [FK_tBillboard_tEmployee]
GO
ALTER TABLE [dbo].[tBudget]  WITH CHECK ADD  CONSTRAINT [FK_tBudget_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tBudget] CHECK CONSTRAINT [FK_tBudget_tProject]
GO
ALTER TABLE [dbo].[tCalendar]  WITH CHECK ADD  CONSTRAINT [FK_tCalendar_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tCalendar] CHECK CONSTRAINT [FK_tCalendar_tEmployee]
GO
ALTER TABLE [dbo].[tCalendar]  WITH CHECK ADD  CONSTRAINT [FK_tCalendar_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tCalendar] CHECK CONSTRAINT [FK_tCalendar_tProject]
GO
ALTER TABLE [dbo].[tIncome]  WITH CHECK ADD  CONSTRAINT [FK_tIncome_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tIncome] CHECK CONSTRAINT [FK_tIncome_tProject]
GO
ALTER TABLE [dbo].[tLeave]  WITH CHECK ADD  CONSTRAINT [FK_tLeave_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tLeave] CHECK CONSTRAINT [FK_tLeave_tEmployee]
GO
ALTER TABLE [dbo].[tLeavecount]  WITH CHECK ADD  CONSTRAINT [FK_tLeavecount_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tLeavecount] CHECK CONSTRAINT [FK_tLeavecount_tEmployee]
GO
ALTER TABLE [dbo].[tLeavecount]  WITH CHECK ADD  CONSTRAINT [FK_tLeavecount_tleavesort] FOREIGN KEY([fSortId])
REFERENCES [dbo].[tleavesort] ([fSortId])
GO
ALTER TABLE [dbo].[tLeavecount] CHECK CONSTRAINT [FK_tLeavecount_tleavesort]
GO
ALTER TABLE [dbo].[tLevel]  WITH CHECK ADD  CONSTRAINT [FK_tLevel_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tLevel] CHECK CONSTRAINT [FK_tLevel_tProject]
GO
ALTER TABLE [dbo].[tMetting_date]  WITH CHECK ADD  CONSTRAINT [FK_tMetting_date_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tMetting_date] CHECK CONSTRAINT [FK_tMetting_date_tEmployee]
GO
ALTER TABLE [dbo].[tNotify]  WITH CHECK ADD  CONSTRAINT [FK_tNotify_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tNotify] CHECK CONSTRAINT [FK_tNotify_tEmployee]
GO
ALTER TABLE [dbo].[tOvertime]  WITH CHECK ADD  CONSTRAINT [FK_tOvertime_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tOvertime] CHECK CONSTRAINT [FK_tOvertime_tEmployee]
GO
ALTER TABLE [dbo].[tProject]  WITH CHECK ADD  CONSTRAINT [FK_tProject_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tProject] CHECK CONSTRAINT [FK_tProject_tEmployee]
GO
ALTER TABLE [dbo].[tProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_tProjectDetail_tLevel] FOREIGN KEY([fLevelId])
REFERENCES [dbo].[tLevel] ([fLevelId])
GO
ALTER TABLE [dbo].[tProjectDetail] CHECK CONSTRAINT [FK_tProjectDetail_tLevel]
GO
ALTER TABLE [dbo].[tProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_tProjectDetail_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tProjectDetail] CHECK CONSTRAINT [FK_tProjectDetail_tProject]
GO
ALTER TABLE [dbo].[tProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_tProjectDetail_tProjectDetail] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tProjectDetail] CHECK CONSTRAINT [FK_tProjectDetail_tProjectDetail]
GO
ALTER TABLE [dbo].[tPunchtime]  WITH CHECK ADD  CONSTRAINT [FK_tPunchtime_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tPunchtime] CHECK CONSTRAINT [FK_tPunchtime_tEmployee]
GO
ALTER TABLE [dbo].[tSignoff]  WITH CHECK ADD  CONSTRAINT [FK_tSignoff_tApplypunch] FOREIGN KEY([fAlpplypunchId])
REFERENCES [dbo].[tApplypunch] ([fId])
GO
ALTER TABLE [dbo].[tSignoff] CHECK CONSTRAINT [FK_tSignoff_tApplypunch]
GO
ALTER TABLE [dbo].[tSignoff]  WITH CHECK ADD  CONSTRAINT [FK_tSignoff_tEmployee] FOREIGN KEY([fSupervisorId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tSignoff] CHECK CONSTRAINT [FK_tSignoff_tEmployee]
GO
ALTER TABLE [dbo].[tSignoff]  WITH CHECK ADD  CONSTRAINT [FK_tSignoff_tLeave] FOREIGN KEY([fLeaveId])
REFERENCES [dbo].[tLeave] ([fId])
GO
ALTER TABLE [dbo].[tSignoff] CHECK CONSTRAINT [FK_tSignoff_tLeave]
GO
ALTER TABLE [dbo].[tSignoff]  WITH CHECK ADD  CONSTRAINT [FK_tSignoff_tOvertime] FOREIGN KEY([fOvertimeId])
REFERENCES [dbo].[tOvertime] ([fId])
GO
ALTER TABLE [dbo].[tSignoff] CHECK CONSTRAINT [FK_tSignoff_tOvertime]
GO
ALTER TABLE [dbo].[tTeamMember]  WITH CHECK ADD  CONSTRAINT [FK_tTeamMember_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tTeamMember] CHECK CONSTRAINT [FK_tTeamMember_tProject]
GO
ALTER TABLE [dbo].[tTeamMember]  WITH CHECK ADD  CONSTRAINT [FK_tTeamMember_tTeamMember] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tTeamMember] CHECK CONSTRAINT [FK_tTeamMember_tTeamMember]
GO
ALTER TABLE [dbo].[tTimeRecords]  WITH CHECK ADD  CONSTRAINT [FK_tTimeRecords_tEmployee] FOREIGN KEY([fEmployeeId])
REFERENCES [dbo].[tEmployee] ([fEmployeeId])
GO
ALTER TABLE [dbo].[tTimeRecords] CHECK CONSTRAINT [FK_tTimeRecords_tEmployee]
GO
ALTER TABLE [dbo].[tTimeRecords]  WITH CHECK ADD  CONSTRAINT [FK_tTimeRecords_tProject] FOREIGN KEY([fProjectId])
REFERENCES [dbo].[tProject] ([fProjectId])
GO
ALTER TABLE [dbo].[tTimeRecords] CHECK CONSTRAINT [FK_tTimeRecords_tProject]
GO
ALTER TABLE [dbo].[tTimeRecords]  WITH CHECK ADD  CONSTRAINT [FK_tTimeRecords_tProjectDetail] FOREIGN KEY([fProjectDetailId])
REFERENCES [dbo].[tProjectDetail] ([fProjectDetailId])
GO
ALTER TABLE [dbo].[tTimeRecords] CHECK CONSTRAINT [FK_tTimeRecords_tProjectDetail]
GO
ALTER DATABASE [EIP_DB] SET  READ_WRITE 
GO
