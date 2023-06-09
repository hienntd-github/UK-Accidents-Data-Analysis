CREATE DATABASE UKAccidentsStage
GO

USE UKAccidentsStage
GO
/****** Object:  Table [dbo].[Accident_Severity]    Script Date: 12/5/2023 14:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Severity](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accidents]    Script Date: 12/5/2023 14:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accidents](
	[Accident_Index] [varchar](20) NULL,
	[Location_Easting_OSGR] [varchar](50) NULL,
	[Location_Northing_OSGR] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Police_Force] [varchar](50) NULL,
	[Accident_Severity] int NULL,
	[Number_of_Vehicles] int NULL,
	[Number_of_Casualties] int NULL,
	[Date] [datetime] NULL,
	[Day_of_Week] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Local_Authority_(District)] [varchar](50) NULL,
	[Local_Authority_(Highway)] [varchar](50) NULL,
	[1st_Road_Class] [varchar](50) NULL,
	[1st_Road_Number] [varchar](50) NULL,
	[Road_Type] int NULL,
	[Speed_limit] [varchar](50) NULL,
	[Junction_Detail] [varchar](50) NULL,
	[Junction_Control] [varchar](50) NULL,
	[2nd_Road_Class] [varchar](50) NULL,
	[2nd_Road_Number] [varchar](50) NULL,
	[Pedestrian_Crossing-Human_Control] [varchar](50) NULL,
	[Pedestrian_Crossing-Physical_Facilities] [varchar](50) NULL,
	[Light_Conditions] [varchar](50) NULL,
	[Weather_Conditions] [varchar](50) NULL,
	[Road_Surface_Conditions] [varchar](50) NULL,
	[Special_Conditions_at_Site] [varchar](50) NULL,
	[Carriageway_Hazards] [varchar](50) NULL,
	[Urban_or_Rural_Area] int NULL,
	[Did_Police_Officer_Attend_Scene_of_Accident] [varchar](50) NULL,
	[LSOA_of_Accident_Location] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_Band]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_Band](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_Group]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_Group](
	[code] [int] NULL,
	[label] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Built_up_Road]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Built_up_Road](
	[code] [int] NULL,
	[label] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualties]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualties](
	[Accident_Index] [varchar](50) NULL,
	[Vehicle_Reference] int NULL,
	[Casualty_Reference] [varchar](50) NULL,
	[Casualty_Class] [varchar](50) NULL,
	[Sex_of_Casualty] int NULL,
	[Age_of_Casualty] int NULL,
	[Age_Band_of_Casualty] int NULL,
	[Casualty_Severity] int NULL,
	[Pedestrian_Location] [varchar](50) NULL,
	[Pedestrian_Movement] [varchar](50) NULL,
	[Car_Passenger] [varchar](50) NULL,
	[Bus_or_Coach_Passenger] [varchar](50) NULL,
	[Pedestrian_Road_Maintenance_Worker] [varchar](50) NULL,
	[Casualty_Type] int NULL,
	[Casualty_Home_Area_Type] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Severity]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Severity](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Type]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Type](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journey_Purpose]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey_Purpose](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local_Authority_District]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local_Authority_District](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LSOA_PCD]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSOA_PCD](
	[lsoa11cd] [varchar](50) NULL,
	[pcds] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postcodes]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postcodes](
	[postcode] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[county] [varchar](50) NULL,
	[country_code] [varchar](50) NULL,
	[country_name] [varchar](50) NULL,
	[region_code] [varchar](50) NULL,
	[region_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Type]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Type](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time_of_Day]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_of_Day](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urban_or_Rural_Area]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urban_or_Rural_Area](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Type]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Type](
	[code] [int] NULL,
	[label] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 12/5/2023 14:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Accident_Index] [varchar](50) NULL,
	[Vehicle_Reference] int NULL,
	[Vehicle_Type] int NULL,
	[Towing_and_Articulation] [varchar](50) NULL,
	[Vehicle_Manoeuvre] [varchar](50) NULL,
	[Vehicle_Location-Restricted_Lane] [varchar](50) NULL,
	[Junction_Location] [varchar](50) NULL,
	[Skidding_and_Overturning] [varchar](50) NULL,
	[Hit_Object_in_Carriageway] [varchar](50) NULL,
	[Vehicle_Leaving_Carriageway] [varchar](50) NULL,
	[Hit_Object_off_Carriageway] [varchar](50) NULL,
	[1st_Point_of_Impact] [varchar](50) NULL,
	[Was_Vehicle_Left_Hand_Drive?] [varchar](50) NULL,
	[Journey_Purpose_of_Driver] int NULL,
	[Sex_of_Driver] [varchar](50) NULL,
	[Age_of_Driver] [varchar](50) NULL,
	[Age_Band_of_Driver] [varchar](50) NULL,
	[Engine_Capacity_(CC)] [varchar](50) NULL,
	[Propulsion_Code] [varchar](50) NULL,
	[Age_of_Vehicle] [varchar](50) NULL,
	[Driver_IMD_Decile] [varchar](50) NULL,
	[Driver_Home_Area_Type] [varchar](50) NULL
) ON [PRIMARY]
GO
