using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication13
{
    public partial class child2 : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        SqlDataReader reader = null;
        protected void Page_Load(object sender, EventArgs e) 
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["Ecommerce"].ConnectionString);
            cmdObj = new SqlCommand("Select * from products where ID=@ID", conObj);
            cmdObj.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);
            conObj.Open();

            reader = cmdObj.ExecuteReader();
            reader.Read();
            img2.ImageUrl = "imagehandler.ashx?ID=" + Request.QueryString["ID"].ToString();
            lblProductName.Text = reader["product_name"].ToString();
            lblDescription.Text = reader["category"].ToString();
            lblCategory.Text = reader["description"].ToString();
            lblPrice.Text = reader["price"].ToString();
            lblQuantity.Text = reader["quantity"].ToString();
        }
    }
}