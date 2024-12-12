using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CRM
{
    public partial class Assign_complain : System.Web.UI.Page
    {
        SqlDataAdapter objadpt;
        SqlConnection objcon;
        DataTable objdt;
        SqlCommand objcomm;
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

                }
            }

        }

        protected void ddlcomplainno_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtstatus.Text = objdt.Rows[ddlcomplainno.SelectedIndex]["status"].ToString();
            txtdiscription.Text = objdt.Rows[ddlcomplainno.SelectedIndex]["discription"].ToString();
            objadpt = new SqlDataAdapter("select * from Employee", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            ddlemployee.Items.Clear();
            foreach (DataRow dr in objdt.Rows)
            {
                ddlemployee.Items.Add(dr["Name"].ToString());
            }
        }

        protected void btnassign_Click(object sender, EventArgs e)
        {
            string dateofassign = System.DateTime.Now.ToString();
            objcomm = new SqlCommand("insert into assign(dateofassign,complainno,status,problem,employee) values('" + dateofassign + "','" + ddlcomplainno.Text + "','" + txtstatus.Text + "','" + txtdiscription.Text + "','" + ddlemployee.Text + "')", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
        }
    }
}