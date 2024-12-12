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
    public partial class Complain_register : System.Web.UI.Page
    {
        SqlDataAdapter objadpt;
        SqlConnection objcon;
        DataTable objdt;
        SqlCommand objcomm;
        string username;
        Random r;
        int complainno;

        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"data source=.;initial catalog=web;integrated security=sspi";
            objcon = new SqlConnection(constr);
            objadpt = new SqlDataAdapter("select * from login", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            if(!IsPostBack)
            {
                labmessage.Text = "welcome\t" + Session["name"].ToString()+ "you can register your Complain here"; 
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string dateofcomplain = System.DateTime.Now.ToString();
            string status = "Not Solved";
           // objcomm = new SqlCommand("insert into complain(dateofcomplain,complainno,username,problemtype,discription,status) values('" + dateofcomplain + "','" +  + "','" +txtusername.Text + "','" + ddlproblemtype.Text + "','" + txtdiscription.Text + "','" + status + "')", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
           
        }
    }
}