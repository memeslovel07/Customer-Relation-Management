using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics.Eventing.Reader;

namespace CRM
{
    public partial class login : System.Web.UI.Page
    {
        private SqlConnection objcon;
        private SqlDataAdapter objadpt;
        private DataTable objdt;

        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"data source=.;initial catalog=web;integrated security=sspi";
            objcon = new SqlConnection(constr);
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            objadpt = new SqlDataAdapter("select * from login where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            if (objdt.Rows.Count > 0)
            {
                if (objdt.Rows.Count > 0 && objdt.Rows[0]["usertype"].ToString() == "Admin")
                {
                    Session["name"] = txtusername.Text;
                    Response.Redirect("Admin_panel.aspx");
                }
                else
                {
                    Session["name"] = txtusername.Text;
                    Response.Redirect("userpanel.aspx");
                }
            }
            else
            {
                txtpassword.Text = "";
                txtpassword.Focus();
                txtpassword.Attributes["placeholder"] = "Password is incorect";
            }
        }
    }
}