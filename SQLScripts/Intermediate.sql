SELECT [Users].[UserId],
[Users].[FirstName] + ' ' + [Users].[LastName] AS FullName,
[Users].[Email],
[Users].[Active],
[UserJobInfo].[JobTitle],
[UserJobInfo].[Department]

FROM TutorialAppSchema.Users AS Users

    JOIN TutorialAppSchema.UserJobInfo AS UserJobInfo
    ON UserJobInfo.UserId = Users.UserId  
    
WHERE Users.Active = 1
ORDER BY Users.UserId DESC


SELECT  Users.UserId
        , Users.FirstName + ' ' + Users.LastName AS FullName
        , UserJobInfo.JobTitle
        , UserJobInfo.Department
        , UserSalary.Salary
        , Users.Email
        , Users.Gender
        , Users.Active
  FROM  TutorialAppSchema.Users AS Users
      --INNER JOIN
      JOIN TutorialAppSchema.UserSalary AS UserSalary
          ON UserSalary.UserId = Users.UserId
      LEFT JOIN TutorialAppSchema.UserJobInfo AS UserJobInfo
          ON UserJobInfo.UserId = Users.UserId
 WHERE  Users.Active = 1
 ORDER BY Users.UserId DESC;

 CREATE CLUSTERED INDEX cix_UserSalary_UserId
    ON TutorialAppSchema.UserSalary (UserId);

CREATE NONCLUSTERED INDEX ix_UserJobInfo_JobTitle
    ON TutorialAppSchema.UserJobInfo (JobTitle)
    INCLUDE (Department);


    
    SELECT  GETDATE ();

SELECT  DATEADD (YEAR, -5, GETDATE ());

SELECT  DATEDIFF (MINUTE, DATEADD (YEAR, -5, GETDATE ()), GETDATE ());  -- Returns Positive

SELECT  DATEDIFF (MINUTE, GETDATE (), DATEADD (YEAR, -5, GETDATE ()));  -- Returns Negative