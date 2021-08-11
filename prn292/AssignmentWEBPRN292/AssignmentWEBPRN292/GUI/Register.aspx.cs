using AssignmentWEBPRN292.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292.GUI
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string pass1 = txtPass.Text;
            string pass2 = txtRePass.Text;
            if (ValidateAccount())
            {
                AccountDAO a = new AccountDAO();
                if (a.Insert(username, pass1))
                {
                    
                    Response.Redirect("Login.aspx?mss=Register Successfully!&user="+username+"");
                    
                }
                    
            }
        }
        public bool ValidateAccount()
        {
            string username = txtUsername.Text;
            string pass1 = txtPass.Text;
            string pass2 = txtRePass.Text;
            if (pass1 != pass2)
            {
                lbEr.Text = "Password must be equal Re_Password!";
                return false;
            }
            else if (String.IsNullOrEmpty(pass1) || String.IsNullOrEmpty(pass2) || String.IsNullOrEmpty(username))
            {
                lbEr.Text = "All fields cannot be left blank!";
                return false;
            }
            else if (IsAccountExisted(username))
            {
                lbEr.Text = "Account has been used!";
                return false;
            }
            return true;
        }
        private bool IsAccountExisted(string username)
        {
            DataTable dt = new DataTable();
            dt = AccountDAO.GetAccountByUSerName(username);
            if (dt.Rows.Count != 0)
            {
                return true;
            }
            return false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}