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
    public partial class View_Complain : System.Web.UI.Page
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
                    ddlcomplainno.Items.Add(dr["complainno"].ToString());
                    labdate.Visible = false;
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            labdate.Visible = true;
            labdate.Text = objdt.Rows[ddlcomplainno.SelectedIndex]["dateofcomplain"].ToString();
            txtusername.Text= objdt.Rows[ddlcomplainno.SelectedIndex]["username"].ToString();
            txtstatus.Text= objdt.Rows[ddlcomplainno.SelectedIndex]["status"].ToString();
            txtproblemtype.Text= objdt.Rows[ddlcomplainno.SelectedIndex]["problemtype"].ToString();
            txtdiscription.Text= objdt.Rows[ddlcomplainno.SelectedIndex]["discription"].ToString();
        }

       
    }
}