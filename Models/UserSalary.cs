using Microsoft.Extensions.Configuration.UserSecrets;

namespace DotnetAPI
{
    public partial class UserSalary
    {
        public int UserId {get;set;}
        public decimal Salary {get;set;}
        public decimal AvgSalary {get;set;}

    }
}