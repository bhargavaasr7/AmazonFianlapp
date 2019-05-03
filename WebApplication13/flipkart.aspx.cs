using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication13
{
    public partial class flipkart : System.Web.UI.Page
    {
        private SqlConnection conobj = null;
        private SqlCommand cmdobj = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            conobj = new SqlConnection(ConfigurationManager.ConnectionStrings["Ecommerce"].ConnectionString);
            cmdobj = new SqlCommand("usp_productsInsert", conobj);
            cmdobj.CommandType = CommandType.StoredProcedure;

            int len = img.PostedFile.ContentLength;
            byte[] b = new byte[len];
            img.PostedFile.InputStream.Read(b, 0, len);


            cmdobj.Parameters.AddWithValue("@product_name", txtpn.Text);
            cmdobj.Parameters.AddWithValue("@category", txtcat.Text);
            cmdobj.Parameters.AddWithValue("@description", txtdes.Text);
            cmdobj.Parameters.AddWithValue("@price", int.Parse(txtprice.Text));
            cmdobj.Parameters.AddWithValue("@quantity", int.Parse(txtquan.Text));
            cmdobj.Parameters.AddWithValue("@image", b);

            if (conobj.State == ConnectionState.Closed)
            {
                conobj.Open();
            }
            int res = cmdobj.ExecuteNonQuery();
            if (res > 0)
            {
                lb1.Text = "Product Added";
            }
            else
            {
                lb1.Text = "Not added";
            }
            if (conobj != null)
            {
                conobj.Close();
            }
        }
    }
}