using AssignmentWEBPRN292.DAL;
using AssignmentWEBPRN292.Entity;
using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292.GUI
{
    public partial class CheckOutForm : System.Web.UI.Page
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
            double total = 0;
            for (int i = 0; i < ods.Count; i++)
            {
                Product a = ProductDAO.Search(ods[i].ProductID);
                dt.Rows.Add("", a.ProductName, ods[i].Quantity, a.Price);
                total += ods[i].Quantity * a.Price;
            }
            txtTotalPrice.Text = total.ToString();

            GridView1.DataSource = dt;
            GridView1.DataBind();
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

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            string accountid = Session["user"].ToString();
            string Name = txtFullname.Text;
            string Email = txtEmail.Text;
            string address = txtAddress.Text;
            OrderDAO orderDAO = new OrderDAO();
            if (orderDAO.InsertOrder(accountid,Name,Email,address))
            {
                List<OrderDetail> ods = (List<OrderDetail>)Session["cart"];
                foreach (OrderDetail odd in ods)
                {

                    odd.OrderID = OrderDAO.GetMaxID();
                    OrderDetailDAO d = new OrderDetailDAO();
                    d.InsertOrderDetail(odd);
                    int quantity = Convert.ToInt32(DAO.GetDataTable("SELECT quantity FROM Product WHERE id=" + odd.ProductID + "").Rows[0][0].ToString());
                    DAO.UpdateTable(new SqlCommand("UPDATE Product SET quantity=" + (quantity - odd.Quantity) + " WHERE id=" + odd.ProductID + ""));
                }
                Session.Remove("cart");
                Session.Remove("quantity-cart");
                Response.Redirect("https://localhost:44376/home.aspx");

            }
        }
    }
}