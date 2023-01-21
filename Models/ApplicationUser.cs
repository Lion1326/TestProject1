using Microsoft.AspNetCore.Identity;

namespace TestProject1.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Avatar { get; set; } = string.Empty;
    }
}
