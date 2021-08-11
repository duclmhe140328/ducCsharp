using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292.GUI
{
    public partial class profileUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                    string temp = Session["user"].ToString();
                    lbInfor.Text = temp;
                    string sql = "select o1.orderid,p.name, o.fullname,o.address,p.price,o1.quantity,o1.quantity*p.price as'total',o.date,o.status  from ([Order.] o inner join OrderDetail  " +
                        "o1 on o.orderid = o1.orderid) inner join Product p on p.id = o1.productid where o.accountid ='" + temp + "' ";
                    GridView1.DataSource = DAO.GetDataTable(sql);
                    GridView1.DataBind();

                

            }
        }
    }
}