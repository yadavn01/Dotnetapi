using Microsoft.AspNetCore.Mvc;

namespace DotnetAPI.Controllers;

[ApiController]
[Route("[controller]")] //WeatherForecsast



public class UserController : ControllerBase

{
    public UserController()
    {

    }

    [HttpGet("test")]
    public string[] Test()
    {
        string[] responseArray = new string[] {
            "test1",
            "test2",
            "test3"
        };
        return responseArray;
    }
}