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
    public partial class Employee_ : System.Web.UI.Page
    {
        SqlDataAdapter objadpt;
        DataTable objdt;
        SqlConnection objcon;
        SqlCommand objcomm;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"data source=.; initial catalog=web; integrated security=sspi";
            objcon = new SqlConnection(constr);
            objadpt = new SqlDataAdapter("select * from Employee", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            if (!IsPostBack)
            {
                ddlempid.Items.Clear();
                txtname.Enabled = false;
                foreach (DataRow dr in objdt.Rows)
                {
                    ddlempid.Items.Add(dr["Employeeid"].ToString());
                }
            }

        }
        

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objcomm = new SqlCommand("update Employee set Address='" + txtaddress.Text + "',Phonenumber='" + txtphone.Text + "',Email='" + txtemail.Text + "',Designation='" + txtdesig.Text + "',Salary='" + txtsalary.Text + "' where Employeeid='"+ddlempid.Text+"'", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Response.Redirect("Homepage.aspx");
        }

        protected void ddlempid_SelectedIndexChanged(object sender, EventArgs e)
        {
             
            txtaddress.Text = objdt.Rows[ddlempid.SelectedIndex]["Address"].ToString();
            txtphone.Text = objdt.Rows[ddlempid.SelectedIndex]["Phonenumber"].ToString();
            txtdesig.Text = objdt.Rows[ddlempid.SelectedIndex]["Designation"].ToString();
            txtemail.Text = objdt.Rows[ddlempid.SelectedIndex]["Email"].ToString();
            txtname.Text = objdt.Rows[ddlempid.SelectedIndex]["Name"].ToString();
            txtsalary.Text = objdt.Rows[ddlempid.SelectedIndex]["Salary"].ToString(); 
        }
    }
}