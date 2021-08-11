using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssignmentWEBPRN292.DAL;
using Lab4_Template.DAL;

namespace AssignmentWEBPRN292.GUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataColumn dataColumn =  GridView1.
            //Image image = new Image();
            if (!IsPostBack)
            {
            PanelEditDelete.Visible = false;
            BtShowAdd.Visible = true;
            }
        }
        /**
        //void changeImgColum()
        //{
        //    DataTable dt =(DataTable) GridView1.DataSource;
        //    for (int i = 0; i < GridView1.Rows.Count; i++)
        //    {
        //        string s = GridView1.Rows[i].Cells[6].Text;
        //        s = "~/Img/" + s;
        //        Image img = new Image();
        //        img.ImageUrl = s;
        //        img.Width = 100;
        //        GridView1.Rows[i].Cells[6].Controls.Add(img);
        //    }
        //}
        *///BIGBUG
        void fillTextBox()
        {
            String id = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
            String img = GridView1.Rows[GridView1.SelectedIndex].Cells[7].Text;
            String name = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
            String size = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
            String price = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
            String statusSale = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text;
            String brand = GridView1.Rows[GridView1.SelectedIndex].Cells[8].Text;
            String quantity = GridView1.Rows[GridView1.SelectedIndex].Cells[9].Text;

            IDSelect.Text = id;
            TextImg.Text = img;
            TextName.Text = name;
            TextSize.Text = size;
            TextPrice.Text = price;
            CheckBox1.Checked = false;
            TextBrandID.Text = brand;
            TextQuantity.Text = quantity;
        }
        void clearTextBox()
        {
            IDSelect.Text = "";
            TextImg.Text = "";
            TextName.Text = "";
            TextSize.Text = "";
            TextPrice.Text = "";
            CheckBox1.Checked = false;
            TextBrandID.Text = "";
            TextQuantity.Text = "";
        }

        protected void BtShowAdd_Click(object sender, EventArgs e)
        {
            clearTextBox();
            BtShowAdd.Visible = false;
            PanelEditDelete.Visible = true;
            btAdd.Visible = true;
            btEdit.Visible = false;
            btDelete.Visible = false;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelEditDelete.Visible = true;
            fillTextBox();
            btAdd.Visible = false;
            btEdit.Visible = true;
            btDelete.Visible = true;
        }

        protected void btEdit_Click(object sender, EventArgs e)
        {
            string priceSplit = TextPrice.Text.Split('$')[1];
            int idProduct = Convert.ToInt32(IDSelect.Text);
            string image = TextImg.Text;
            string name = TextName.Text;
            int size = Convert.ToInt32(TextSize.Text);
            double price = Convert.ToDouble(priceSplit);
            bool statusSale = CheckBox1.Checked;
            int brandID = Convert.ToInt32(TextBrandID.Text);
            int quantity = Convert.ToInt32(TextQuantity.Text);

            bool test = ProductDAO.Update(idProduct, name, size, price, statusSale, image, brandID, quantity);
            if (test) Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            //int idProduct = Convert.ToInt32(IDSelect.Text);
            
            string image = TextImg.Text;
            string name = TextName.Text;
            int size = Convert.ToInt32(TextSize.Text);
            double price = Convert.ToDouble(TextPrice.Text);
            bool statusSale = CheckBox1.Checked;
            int brandID = Convert.ToInt32(TextBrandID.Text);
            int quantity = Convert.ToInt32(TextQuantity.Text);

            bool test = ProductDAO.Insert(name, size, price, statusSale, image, brandID, quantity);
            if (test) Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            int idProduct = Convert.ToInt32(IDSelect.Text);
            bool test = ProductDAO.Delete(idProduct);
            if(test)Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (FileUpload1.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(FileUpload1.FileName);
                    //Label1.Text = "file:"+fileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Img/") + fileName);
                    TextImg.Text = "" + fileName;
                    
                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }
            }
        }
    }
}