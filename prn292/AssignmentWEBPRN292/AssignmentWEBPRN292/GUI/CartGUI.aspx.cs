using AssignmentWEBPRN292.DAL;
using AssignmentWEBPRN292.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292.GUI
{
    public partial class CartGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<OrderDetail> ods = (List<OrderDetail>)Session["cart"];
            if (ods == null) ods = new List<OrderDetail>();
            DataTable dt = new DataTable();
            dt.Columns.Add("Image");
            dt.Columns.Add("Name");
            dt.Columns.Add("Count");
            dt.Columns.Add("UnitPrice");
            dt.Columns.Add("Remove");
            double total = 0;
            for (int i = 0; i < ods.Count; i++)
            {
                Product a = ProductDAO.Search(ods[i].ProductID);
                dt.Rows.Add("",a.ProductName, ods[i].Quantity, a.Price,"");
                total += ods[i].Quantity * a.Price;
            }
            
            lblTotal.Text = total.ToString();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            addLinkButton();
            for (int i = 0; i < ods.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                Product a = ProductDAO.Search(ods[i].ProductID);
                Image img = new Image();
                img.ImageUrl = "~/Img/" + a.Image;
                img.Width = 100;
                row.Cells[0].Controls.Add(img);
            }
        }



        protected void addLinkButton()
        {
            List<OrderDetail> ods = (List<OrderDetail>)Session["cart"];
            if (ods == null) ods = new List<OrderDetail>();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                if (row.RowType == DataControlRowType.DataRow)
                {
                    LinkButton lbtnDel = new LinkButton();
                    lbtnDel.ID = ods[i].ProductID.ToString();
                    lbtnDel.Text = "Remove";
                    lbtnDel.Click += RemoveLink_Click;
                    row.Cells[4].Controls.Add(lbtnDel);
                }
            }
        }

 

        protected void RemoveLink_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            int id = int.Parse(lbtn.ID);
            List<OrderDetail> ods = (List<OrderDetail>)Session["cart"];
            if (ods == null) ods = new List<OrderDetail>();
            DataTable dt = (DataTable)GridView1.DataSource;
            double total = double.Parse(lblTotal.Text);
            for (int i = 0; i < ods.Count; i++)
            {
                if (ods[i].ProductID == id)
                {
                    total -= ods[i].UnitPrice;
                    if (ods[i].Quantity == 1)
                    {
                        ods.RemoveAt(i);
                        dt.Rows.Remove(dt.Rows[i]);
                    }
                    else
                    {
                        ods[i].Quantity--;
                        dt.Rows[i]["Count"] = ods[i].Quantity;
                    }
                    lblTotal.Text = total.ToString();
                }

            }
            Session["cart"] = ods;
            lblTotal.Text = total.ToString();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            addLinkButton();
            for (int i = 0; i < ods.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                Product a = ProductDAO.Search(ods[i].ProductID);
                Image img = new Image();
                img.ImageUrl = "~/Img/" + a.Image;
                img.Width = 100;
                row.Cells[0].Controls.Add(img);
            }
            int quantity = Convert.ToInt32(Session["quantity-cart"]);
            Session["quantity-cart"] = (quantity - 1).ToString();
            Response.Redirect("CartGUI.aspx");
        }












        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((Session)["user"] == null)
            {
                Response.Redirect("Login.aspx?mss=");
            }
            else
            {
                Response.Redirect("CheckOutForm.aspx");
            }
        }
    }
}