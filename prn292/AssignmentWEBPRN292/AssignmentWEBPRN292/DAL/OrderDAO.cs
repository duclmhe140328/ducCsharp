using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AssignmentWEBPRN292.DAL
{
    public class OrderDAO
    {
        public static DataTable GetDataTable()
        {
            string sql = "Select * from [Order.]";
            return DAO.GetDataTable(sql);
        }

        public static DataTable GetDataAllShoesTable()
        {
            string sql = "SELECT [id] ,[name] ,[size]" +
                " ,[price]  ,[color]   ,[image]  " +
                " ,[brandID]   ,[quantity]  FROM  [Product] ";
            return DAO.GetDataTable(sql);
        }

        static public int GetMaxID()
        {
            int max = -1;
            string sql = "Select Max(orderid) as MaxID from [Order.]";
            DataTable dt = DAO.GetDataTable(sql);
            if (dt.Rows.Count > 0) max = (int)dt.Rows[0]["MaxID"];
            return max;

        }

        public bool InsertOrder(string accountid, string fullname,string email, string address )
        {
            SqlCommand sql2 = new SqlCommand("INSERT INTO  [Order.]   ([accountid]   ,[fullname]  ,[email]    ,[address]    ,[date]   ,[status])  VALUES " +
                " ('"+accountid+"'  ,'"+fullname+"'   ,'"+email+"'   ,'"+address+"'  ,GETDATE()  ,0);");
            if (DAO.UpdateTable(sql2))
            {
                return true;
            }return false;
           
        }



    }
}