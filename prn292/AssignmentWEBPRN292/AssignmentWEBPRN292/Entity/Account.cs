using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssignmentWEBPRN292.Entity
{
    public class Account
    {
        string username;
        string password;
        string role;

        public Account()
        {
        }

        public Account(string username, string password, string role)
        {
            this.username = username;
            this.password = password;
            this.role = role;
        }

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Role { get => role; set => role = value; }
    }
}