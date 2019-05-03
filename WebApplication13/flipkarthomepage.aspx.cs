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
    public partial class flipkarthomepage : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlDataAdapter adapter = null;
        DataSet ds = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getId();
                Session["User"] = Request.QueryString["Cid"];
            }
        }
        public void getId()
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["Ecommerce"].ConnectionString);
            adapter = new SqlDataAdapter("select * from products", conObj);
            ds = new DataSet();

            adapter.Fill(ds, "products");

            dlHomePage.DataSource = ds.Tables["products"];
            dlHomePage.DataBind();
        }

        protected void dlHomePage_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                Response.Redirect("child2.aspx?id=" + e.CommandArgument);
            }
            else if (e.CommandName == "BuyNow")
            {
                if (string.IsNullOrEmpty(Session["User"] as string))
                {
                    Response.Redirect("loginchild.aspx");
                }
                else
                {
                    Response.Redirect(String.Format("flipkartshopingorder.aspx?ID={0}&Cid={1}", e.CommandArgument, Request.QueryString["Cid"].ToString()));
                }
            }
        }
    }
}