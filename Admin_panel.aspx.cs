using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class Admin_panel : System.Web.UI.Page
    {
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                username = "welcome\t" + Session["name"].ToString();
                labcome.Text = username;
            }
            
        }
    }
}