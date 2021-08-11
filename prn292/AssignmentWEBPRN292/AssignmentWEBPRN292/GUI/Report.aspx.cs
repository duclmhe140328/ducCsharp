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
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dt1 = DAO.GetDataTable("SELECT * FROM [Order.] WHERE status = 0");
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                DataTable dt = DAO.GetDataTable("SELECT * FROM [Order.] WHERE status = 1");
                GridView3.DataSource = dt;
                GridView3.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int orderID = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
            DataTable dt = DAL.OrderDetailDAO.getOrderDetailbyID(orderID);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string txtName = TextBox1.Text;
            string txtAddress = TextBox2.Text;
            string from = Calendar1.SelectedDate.ToString();
            string to = Calendar2.SelectedDate.ToString();

            string cmd1 = "select * from [Order.] where fullname like '%" + txtName + "%' and address like " +
                "'%" + txtAddress + "%' and  [date] BETWEEN '" + from + "' and '" + to + "'";
            DataTable dt = DAO.GetDataTable(cmd1);


            if (Convert.ToBoolean(dt.Rows[0][6]) != true)
            {
                GridView3.DataSource = null;
                GridView3.DataBind();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else 
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
                GridView3.DataSource = dt;
                GridView3.DataBind();

            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int orderID = Convert.ToInt32(GridView3.SelectedRow.Cells[1].Text);
            DataTable dt = DAL.OrderDetailDAO.getOrderDetailbyID(orderID);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
}