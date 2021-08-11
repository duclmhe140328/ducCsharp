using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWEBPRN292.GUI
{
    public partial class CheckStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["id"].ToString());

            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[Order.] SET status = 1 WHERE orderid = '"+id+"'");
            DAO.UpdateTable(cmd);
            Response.Redirect("Report.aspx");

        }
    }
}