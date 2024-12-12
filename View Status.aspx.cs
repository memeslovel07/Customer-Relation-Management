using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class View_Status : System.Web.UI.Page
    {
        SqlDataAdapter objadpt;
        SqlConnection objcon;
        DataTable objdt;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"data source=.;initial catalog=web;integrated security=sspi";
            objcon = new SqlConnection(constr);
            objadpt = new SqlDataAdapter("select * from complain", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            if (!IsPostBack)
            {
                foreach (DataRow dr in objdt.Rows)
                {
                    ddlstatus.Items.Add(dr["status"].ToString());
                }  
            }
        }

        protected void txtview_Click(object sender, EventArgs e)
        {
            objadpt = new SqlDataAdapter("select * from complain where status='"+ddlstatus.Text+"'", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            GridView1.DataSource = objdt;
            GridView1.DataBind();
        }
    }
}