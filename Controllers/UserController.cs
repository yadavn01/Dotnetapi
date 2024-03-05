using Microsoft.AspNetCore.Mvc;

namespace DotnetAPI.Controllers;

[ApiController]
[Route("[controller]")] //WeatherForecsast



public class UserController : ControllerBase

{
    public UserController()
    {

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