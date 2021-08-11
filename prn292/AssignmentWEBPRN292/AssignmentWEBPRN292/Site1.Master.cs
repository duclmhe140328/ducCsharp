using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["quantity-cart"] != null)
            {
                txtQuantity.Text = Session["quantity-cart"].ToString();
            }
            else
            {
                txtQuantity.Text = "0";
            }

            if (Session["user"] == null)
            {
                NavigationMenu.Items.RemoveAt(1);
                NavigationMenu.Items.RemoveAt(1);
                NavigationMenu.Items.RemoveAt(1);
                NavigationMenu.Items.RemoveAt(1);
                NavigationMenu.Items.RemoveAt(0);



            }
            else{
                masterRole.Text = Session["user"].ToString();
                String  temp = Session["role"].ToString();
                Button1.Visible = false;//login button 
                if(temp == "user")
                {
                    NavigationMenu.Items.RemoveAt(1);
                    NavigationMenu.Items.RemoveAt(1);
                    NavigationMenu.Items.RemoveAt(1);
                    NavigationMenu.Items.RemoveAt(1);
                    NavigationMenu.Items.RemoveAt(0);
                }
                else if(temp == "admin")
                {
                    NavigationMenu.Items.RemoveAt(0);
                }
                Button2.Visible = false;
                Button5.Visible = true;
            }
        }

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("https://localhost:44376/GUI/Login.aspx?mss=&user=");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("role");
            Response.Redirect("https://localhost:44376/GUI/Register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("role");
            Session.Remove("quantity-cart");
            Session.Remove("cart");
            Response.Redirect("https://localhost:44376/home.aspx");
        }
    }
}