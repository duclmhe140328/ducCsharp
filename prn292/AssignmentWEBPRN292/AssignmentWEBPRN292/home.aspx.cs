using AssignmentWEBPRN292.DAL;
using AssignmentWEBPRN292.Entity;
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
    public partial class ShoppingGUI : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
         
                
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() == "")
            {
                DataList1.Visible = true;
                Label2.Text = "Most Popular";
                Label3.Text = "Give your feet the beauty treatment that only brand new shoes can give";
                Label4.Text = "New Products";
                DataList2.Visible = true;
                Image1.Visible = true;
                DataList3.Visible = true;
                DataList4.Visible = false;
                
            }
            else
            {
                string txt = TextBox1.Text;
                string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product]" +
                    "where name like '%" + txt + "%'";

                DataTable dt = DAO.GetDataTable(cmd);
                DataList4.Visible = true;
                DataList4.DataSourceID = "";
                DataList4.DataSource = dt;
                DataList4.DataBind();
                
                DataList1.Visible = false;
                DataList2.Visible = false;
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Image1.Visible = false;
                DataList3.Visible = false;
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where brandID = 1";
            DataTable dt = DAO.GetDataTable(cmd);
            DataList4.DataSourceID = "";
            DataList4.DataSource = dt;
            DataList4.DataBind();
            DataList4.Visible = true;
            DataList1.Visible = false;
            DataList2.Visible = false;
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Image1.Visible = false;
            DataList3.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where brandID = 2";
            DataTable dt = DAO.GetDataTable(cmd);
            DataList4.DataSourceID = "";
            DataList4.DataSource = dt;
            DataList4.DataBind();
            DataList4.Visible = true;
            DataList1.Visible = false;
            DataList2.Visible = false;
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Image1.Visible = false;
            DataList3.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where brandID = 3";
            DataTable dt = DAO.GetDataTable(cmd);
            DataList4.DataSourceID = "";
            DataList4.DataSource = dt;
            DataList4.DataBind();
            DataList4.Visible = true;
            DataList1.Visible = false;
            DataList2.Visible = false;
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Image1.Visible = false;
            DataList3.Visible = false;
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where brandID = 4";
            DataTable dt = DAO.GetDataTable(cmd);
            DataList4.DataSourceID = "";
            DataList4.DataSource = dt;
            DataList4.DataBind();
            DataList4.Visible = true;
            DataList1.Visible = false;
            DataList2.Visible = false;
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Image1.Visible = false;
            DataList3.Visible = false;
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where brandID = 5";
            DataTable dt = DAO.GetDataTable(cmd);
            DataList4.DataSourceID = "";
            DataList4.DataSource = dt;
            DataList4.DataBind();
            DataList4.Visible = true;
            DataList1.Visible = false;
            DataList2.Visible = false;
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Image1.Visible = false;
            DataList3.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                string txt = TextBox1.Text;
                string cmd = "SELECT[id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where price between 0 and 199";
                DataTable dt = DAO.GetDataTable(cmd);
                DataList4.DataSourceID = "";
                DataList4.DataSource = dt;
                DataList4.DataBind();
                DataList4.Visible = true;
                DataList1.Visible = false;
                DataList2.Visible = false;
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Image1.Visible = false;
                DataList3.Visible = false;
            }
            if (DropDownList1.SelectedIndex == 1)
            {
                string txt = TextBox1.Text;
                string cmd = "SELECT [id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where price between 200 and 399";
                DataTable dt = DAO.GetDataTable(cmd);
                DataList4.DataSourceID = "";
                DataList4.DataSource = dt;
                DataList4.DataBind();
                DataList4.Visible = true;
                DataList1.Visible = false;
                DataList2.Visible = false;
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Image1.Visible = false;
                DataList3.Visible = false;
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                string txt = TextBox1.Text;
                string cmd = "  SELECT [id],[name],[size],Format(price,'C0') price,[statusSale],[image],[brandID],[quantity] FROM[Product] where price not between 0 and 401";
                DataTable dt = DAO.GetDataTable(cmd);
                DataList4.DataSourceID = "";
                DataList4.DataSource = dt;
                DataList4.DataBind();
                DataList4.Visible = true;
                DataList1.Visible = false;
                DataList2.Visible = false;
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Image1.Visible = false;
                DataList3.Visible = false;
            }
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}