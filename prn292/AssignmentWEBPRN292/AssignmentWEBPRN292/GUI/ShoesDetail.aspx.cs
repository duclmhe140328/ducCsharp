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
    public partial class ShoesDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["ID"]);
            DataTable dt = ProductDAO.getShoesbyID(id);
            Product p = new Product();
            foreach (DataRow row in dt.Rows)
            {   Label1.Text = row["name"].ToString();
                Label2.Text =  row["price"].ToString();
                Image1.ImageUrl = "../Img/" + row["image"].ToString();
                Label3.Text = row["about"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<OrderDetail> ods = (List<OrderDetail>)Session["cart"];
            if (ods == null) ods = new List<OrderDetail>();
            int id = int.Parse(Request.QueryString["ID"]);
            int check = 0;
            for (int i = 0; i < ods.Count; i++)
            {
                if (ods[i].ProductID == id)
                {
                    ods[i].Quantity++;
                    check = 1;
                    break;
                }
            }
            if (check == 0)
            {
                Product a = ProductDAO.Search(id);
                OrderDetail od = new OrderDetail();
                od.Quantity = 1;
                od.UnitPrice = a.Price;
                od.ProductID = a.ProductId;
                ods.Add(od);
            }
            int total = 0;
            foreach (var item in ods)
            {
                total += item.Quantity;
            }
            Session["quantity-cart"] = total;
            Session["cart"] = ods;
            Response.Redirect("https://localhost:44376/GUI/CartGUI.aspx");
        }
    }
}