using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssignmentWEBPRN292.Entity
{
    public class Product
    {
        private int productId;
        private string productName;
        private double price;
        private int quantity;
        private int brandId;
        private float size;
        private bool statusSale;
        private string image;
        private string about;

        public Product( )
        {
        }


        public Product(int productId, string productName, double price, int quantity, int brandId, float size, bool statusSale, string image, string about)
        {
            this.productId = productId;
            this.productName = productName;
            this.price = price;
            this.quantity = quantity;
            this.brandId = brandId;
            this.size = size;
            this.statusSale = statusSale;
            this.image = image;
            this.about = about;
        }

        public int ProductId { get => productId; set => productId = value; }
        public string ProductName { get => productName; set => productName = value; }
        public double Price { get => price; set => price = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public int BrandId { get => brandId; set => brandId = value; }
        public float Size { get => size; set => size = value; }
        public bool Color { get => statusSale; set => statusSale = value; }
        public string Image { get => image; set => image = value; }
        public string About { get => about; set => about = value; }
    }
}