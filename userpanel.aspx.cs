using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class userpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                labwelcom.Text = "welcome\t" + Session["name"].ToString(); 
            }
        }

        protected void lbtnfeedback_Click(object sender, EventArgs e)
        {
            Session["name"] = Session["name"].ToString();
            
            Response.Redirect("Feedback.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["name"] = Session["name"].ToString();

            Response.Redirect("Complain_register.aspx");
        }
    }
}