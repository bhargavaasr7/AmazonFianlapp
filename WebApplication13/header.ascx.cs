using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication13
{
    public partial class header : System.Web.UI.UserControl
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"]!=null)
            {
                txtbox.Text = "SignOut";
            }
            else
            {
                txtbox.Text = "SignIn";
            }
        }

        protected void txtbox_Click(object sender, EventArgs e)
        {
           
            if(txtbox.Text=="SignIn")
            {
                Response.Redirect("loginchild.aspx");
            }
            else
            {
                txtbox.Text = "SignOut";
                Session.Clear();
                Response.Redirect("child1.aspx");
            }
        }
    }
}