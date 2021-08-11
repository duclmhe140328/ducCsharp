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
    public class OrderDetailDAO
    {
        public static DataTable getOrderDetailbyID(int id)
        {
            string sql = "SELECT p.name as 'Name', p.price as 'Price' ,p.id as 'ProductID', p.image as 'URL' ," +
                "od.quantity as 'Quantity' FROM [OrderDetail] od  " +
                "inner join  Product p on  od.productid = p.id   where orderid ="+id+";";
            return DAO.GetDataTable(sql);
        }

        public void InsertOrderDetail(OrderDetail d)
        {
            SqlCommand sql2 = new SqlCommand("INSERT INTO [OrderDetail]  ([productid]" +
                "   ,[orderid]  ,[quantity])" +
                "  VALUES  ("+d.ProductID + " ,"+d.OrderID+" ,"+d.Quantity+");");
            DAO.UpdateTable(sql2);
        }

    }
}