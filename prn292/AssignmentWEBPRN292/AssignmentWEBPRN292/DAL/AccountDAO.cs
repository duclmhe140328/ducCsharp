using Lab4_Template.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AssignmentWEBPRN292.DAL
{
    public class AccountDAO
    {
        public bool Insert(string username, string password)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Account] ([accountid],[password],[role],[status]) VALUES  ('"+username+"','"+password+ "','user','1')");
            return DAO.UpdateTable(cmd);
        }

        public static DataTable getAllAccount()
        {
            string sql = "select * from Account";
            return DAO.GetDataTable(sql);
        }
        public static DataTable GetAccountByUSerName(string usename)
        {
            string sql = "select * from Account where accountid = '" + usename + "'";
            return DAO.GetDataTable(sql);
        }
    }
}