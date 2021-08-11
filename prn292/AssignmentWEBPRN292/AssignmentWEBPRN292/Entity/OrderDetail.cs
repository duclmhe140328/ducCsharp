using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssignmentWEBPRN292.Entity
{
    public class OrderDetail
    {
        private int orderID;

 
        private int orderDetailID;

 
        private int productID;

 
        private int quantity;

  
        private double unitPrice;

        public int OrderID { get => orderID; set => orderID = value; }
        public int OrderDetailID { get => orderDetailID; set => orderDetailID = value; }
        public int ProductID { get => productID; set => productID = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public double UnitPrice { get => unitPrice; set => unitPrice = value; }
    }
}