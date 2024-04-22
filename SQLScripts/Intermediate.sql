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
