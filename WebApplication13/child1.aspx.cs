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
    public partial class child11 : System.Web.UI.Page
    {
        private SqlConnection conobj = null;
        private SqlDataAdapter adapter = null;
        private DataSet dataSet = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getId();
                Session["User"] = Request.QueryString["iId"];
            }
        }

        public void getId()
        {
            conobj = new SqlConnection(ConfigurationManager.ConnectionStrings["Ecommerce"].ConnectionString);
            adapter = new SqlDataAdapter("select * from products", conobj);
            dataSet = new DataSet();

            adapter.Fill(dataSet, "products");

            dlProducts.DataSource = dataSet.Tables["products"];
            dlProducts.DataBind();
        }


        protected void dlProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                Response.Redirect("child2.aspx?ID=" + e.CommandArgument);
            }
            else if (e.CommandName == "BuyNow")
            {
                if (string.IsNullOrEmpty(Session["User"] as string))
                {
                    Response.Redirect("loginchild.aspx");
                }
                else
                {
                    Response.Redirect(String.Format("flipkartorder.aspx?ID={0}&iId={1}", e.CommandArgument, Request.QueryString["iId"].ToString()));
                }
            }
        }
    }
}