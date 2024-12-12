using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlDataAdapter objadpt;
        SqlConnection objcon;
        DataTable objdt;
        SqlCommand objcomm;
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                string constr = @"data source=.;initial catalog=web;integrated security=sspi";
                objcon = new SqlConnection(constr);
                objadpt = new SqlDataAdapter("select * from login", objcon);
                objdt = new DataTable();
                objadpt.Fill(objdt);
                if (!IsPostBack)
                {
                    labusername.Text = Session["name"].ToString();
                    username = labusername.Text;
                }
             }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
          
            string dateoffeedback = System.DateTime.Now.ToString();
            objcomm = new SqlCommand("insert into feedback(username,Review,dateoffeedback) values('" +username+ "','" + txtfeedback.Text + "','" + dateoffeedback + "')", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            labusername.Text = "complaint submitted";

        }
    }
}