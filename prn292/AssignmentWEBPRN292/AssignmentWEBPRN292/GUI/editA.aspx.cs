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
    public partial class editA : System.Web.UI.Page
    {

        public static DataTable getAccId(string id)
        {
            return DAO.GetDataTable("SELECT * FROM Account where accountid='" + id + "'");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string id = (Request["id"].ToString());
                TextBox1.Text = id;
                string a = getAccId(id).Rows[0].Field<string>("role");
                int b = 0;
                if (a.Equals("user"))
                {
                    b = 1;
                }
                DropDownList1.SelectedIndex = Convert.ToInt32(getAccId(id).Rows[0].Field<bool>("status"));
                DropDownList2.SelectedIndex = Convert.ToInt32(b);

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            string user = TextBox1.Text;
            string role = DropDownList2.SelectedValue.ToString();
            int status = Convert.ToInt32(DropDownList1.SelectedValue) ;

            if (Update(user, role, status))
            {
                Response.Redirect("/GUI/ManageA.aspx");
            }
        }

        public static bool Update(string id,string role, int status )
        {
            SqlCommand cmd = new SqlCommand("UPDATE Account SET role =@role ,status=@status where accountid=@id");
            cmd.Parameters.AddWithValue("@role", role);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@id", id);
            return DAO.UpdateTable(cmd);

        }
    }
}