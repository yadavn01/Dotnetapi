CREATE DATABASE DotNetCourseDatabase;
GO

USE DotNetCourseDatabase;
GO

CREATE SCHEMA TutorialAppSchema; 
GO

CREATE TABLE TutorialAppSchema.Computer
(
    -- TableId INT  IDENTITY(Starting, Increment By) 
    ComputerId INT IDENTITY(1, 1) PRIMARY KEY
    -- , Motherboard CHAR(10) 'x' 'x         '
    -- , Motherboard VARCHAR(10) 'x' 'x'
    -- , Motherboard NVARCHAR(255) --'x'
    , Motherboard NVARCHAR(50)  --'x'
    , CPUCores INT              --NOT NULL
    , HasWifi BIT
    , HasLTE BIT
    , ReleaseDate DATETIME
    , Price DECIMAL(18, 4)
    , VideoCard NVARCHAR(50)
);
GO

SELECT  [ComputerId]
        , [Motherboard]
        , [CPUCores]
        , [HasWifi]
        , [HasLTE]
        , [ReleaseDate]
        , [Price]
        , [VideoCard]
  FROM  TutorialAppSchema.Computer;