using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292.GUI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbInfor.Text = Request["mss"].ToString();
            
            
            //Response.Redirect("ShoppingGUI.aspx");
            if (Request.Url.LocalPath == "/GUI/Login.aspx" && Request.Url.LocalPath == "/GUI/Register.aspx")
            {
                //Label1.Text = Request.Url.LocalPath + "test2pass";
                Response.Redirect("Login.aspx");
            }
            else if (Request.Url.LocalPath != "/GUI/Login.aspx")
            {
                Response.Redirect("home.aspx");
            }
            //Response.Redirect("ShoppingGUI.aspx");

        }

        protected void Unnamed1_Authenticate(object sender, AuthenticateEventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable dt = DAO.GetDataTable("SELECT [accountid] ,[password]  ,[role],[status]  FROM  [Account]  where accountid = '" + txtUserName.Text + "' and password ='" + txtPassword.Text + "'");
            if (dt.Rows.Count == 0)
            {
                lbl.Text = "Login failed! Please check username or password again!!!!";
                return;
            }
            if (dt.Rows[0].Field<bool>("status") == false)
            {
                lbl.Text = "Your account is blocking!!!!";
                return;
            }
 
            else
            {
                Session["user"] = dt.Rows[0][0].ToString();
                Session["role"] = dt.Rows[0][2].ToString();
            }
            string temp = Session["role"].ToString();
            if(temp == "admin")
            {
                Response.Redirect("Report.aspx");
            }
            else if ((Session["quantity-cart"] != null))
            {
                HttpContext.Current.Response.Redirect("https://localhost:44376/GUI/CheckOutForm.aspx");
            }
            else
            {
                HttpContext.Current.Response.Redirect("https://localhost:44376/home.aspx");
            }


             

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}