using System.Security.Claims;

namespace TestProject1.Services
{
    public static class ClaimsHelper
    {
        public static string GetAvatar(this ClaimsPrincipal user)
        {
            return user.Claims.FirstOrDefault(c => c.Type == "Avatar")?.Value;
        }
    }
}
