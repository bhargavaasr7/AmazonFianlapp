using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication13
{
    /// <summary>
    /// Summary description for imagehandler
    /// </summary>
    public class imagehandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string ID = context.Request.QueryString["ID"].ToString();
            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["Ecommerce"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select image from Products where ID=@ID", conObj);
            cmd.Parameters.AddWithValue("@ID", ID);
            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
            }
            context.Response.BinaryWrite((byte[])rdr["image"]);
            context.Response.End();
            conObj.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}