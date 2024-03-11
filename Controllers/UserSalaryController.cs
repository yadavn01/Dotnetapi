using Microsoft.AspNetCore.Mvc;

namespace DotnetAPI.Controllers;




public class UserSalaryController : ControllerBase

{
    DataContextDapper _dapper;
    public UserSalaryController(IConfiguration config)
    {
        _dapper = new DataContextDapper(config);
    }
    [HttpGet("TestConnection")]

    public DateTime TestConnection()
    {
        return _dapper.LoadDataSingle<DateTime>("SELECT GETDATE()");
    }

    [HttpGet("GetUsers/{testValue}")]
    public string[] GetUsers(string testValue)
    {
        string[] responseArray = new string[] {
            "test1",
            "test2",
            "test3",
            testValue
        };
        return responseArray;
    }
}