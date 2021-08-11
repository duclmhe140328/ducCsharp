using AssignmentWEBPRN292.Entity;
using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AssignmentWEBPRN292.DAL
{
    public class ProductDAO
    {
        public static DataTable GetAllShoes()
        {
            string sql = "SELECT [id],[name],[size],Format(price,'C0') price,[StatusSale],[image],[brandID],[quantity] FROM [Product]";
            return DAO.GetDataTable(sql);
        }
   
        public static DataTable GetNewShoes()
        {
            string sql = "SELECT top 5 [id],[name],[size],Format(price,'C0') price,[StatusSale],[image],[brandID],[quantity] FROM [Product] order by id DESC";
            return DAO.GetDataTable(sql);
        }
        public static DataTable GetTop5Shoes()
        {
            string sql = "SELECT top 5 [id],[name],[size],Format(price,'C0') price,[StatusSale],[image],[brandID],[quantity] FROM [Product] order by quantity DESC";
            return DAO.GetDataTable(sql);
        }
        public static DataTable GetTop5ShoesSale()
        {
            string sql = "SELECT top 5 [id],[name],[size],Format(price,'C0') price,[StatusSale],[image],[brandID],[quantity] FROM [Product] where StatusSale = 1";
            return DAO.GetDataTable(sql);
        }

        public static DataTable GetShoesByBrand(int id)
        {
            string sql = "select top(4) * from Product where brandID=" + id + "";
            return DAO.GetDataTable(sql);
        }
        public static DataTable getShoesbyID(int id)
        {
            string sql = "SELECT [id],[name],[size],Format(price,'C0') price,[StatusSale],[image],[brandID]," +
                "[quantity],[about] FROM [Product] where id = " + id + "";
            return DAO.GetDataTable(sql);
        }

        public static Product Search(int id)
        {
            DataTable dt = DAO.GetDataTable("SELECT [id],[name],[size],Format(price,'C0') price,[StatusSale],[image],[brandID]," +
                "[quantity] FROM [Product] where id = " + id + "");
            DataRow row = dt.Rows[0];
            Product product = new Product();
            string a = row["price"].ToString().Split('$')[1];
            product.ProductId = (int)row["id"];
            product.ProductName = row["name"].ToString();
            product.Image = row["image"].ToString();
            product.Price = Convert.ToDouble(a);
            product.Color = (bool)row["StatusSale"];
            product.BrandId = (int)row["brandID"];
            return product;
        }

        public static bool Insert(string name, int size, double price, bool statusSale, string image, int brandID, int quantity)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO Product (name,size,price,statusSale,[image],brandID,quantity)
VALUES(@name, @size, @price, @statusSale, @img, @brandID, @quantity)");
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@size", size);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@statusSale", statusSale);
            cmd.Parameters.AddWithValue("@img", image);
            cmd.Parameters.AddWithValue("@brandID", brandID);
            cmd.Parameters.AddWithValue("@quantity", quantity);

            return DAO.UpdateTable(cmd);

        }

        public static bool Update(int id, string name, int size, double price, bool statusSale, string image, int brandID, int quantity)
        {
            SqlCommand cmd = new SqlCommand(@"Update Product set 
                                                name=@name, 
                                                size=@size, 
                                                price=@price, 
                                                statusSale=@statusSale, 
                                                [image]=@img, 
                                                brandID=@brandID, 
                                                quantity=@quantity 
                                                WHERE id = @id");
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@size", size);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@statusSale", statusSale);
            cmd.Parameters.AddWithValue("@img", image);
            cmd.Parameters.AddWithValue("@brandID", brandID);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@id", id);

            return DAO.UpdateTable(cmd);

        }

        public static bool Delete(int id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DAO.UpdateTable(cmd);
        }

    }
}