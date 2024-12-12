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
    public partial class Employees : System.Web.UI.Page
    {
        private SqlDataAdapter objadpt;
        private DataTable objdt;
        private SqlConnection objcon;
        private SqlCommand objcomm;
        private string usertype = "Employee";
        private Random rand = new Random();
        private string password;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                string constr = @"data source=.; initial catalog=web; integrated security=sspi";
                objcon = new SqlConnection(constr);
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objadpt = new SqlDataAdapter("select * from Employee where Employeeid='" + txtemployeedid.Text + "'", objcon);
            objdt = new DataTable();
            objadpt.Fill(objdt);
            if (objdt.Rows.Count > 0)
            {
                txtemployeedid.Attributes["placeholder"] = "Id number already alocated";
                txtemployeedid.Text = "";
                txtemployeedid.Focus();
            }
            else
            {
                rand = new Random();
                password = rand.Next().ToString();
                objcon.Open();
                objcomm = new SqlCommand("insert into Employee(Employeeid,Name,Address,Phonenumber,Email,Designation,Salary) values('" + txtemployeedid.Text + "','" + txtname.Text + "','" + txtaddress.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtdesig.Text + "','" + txtsalary.Text + "')", objcon);
                objcomm = new SqlCommand("insert into login(username,password,usertype) values('" + txtname.Text + "','" + password + "','" + usertype + "')", objcon);
                objcomm.ExecuteNonQuery();
                objcomm.ExecuteNonQuery();
                objcon.Close();
                // Response.Redirect("Homepage.aspx");
            }
        }
    }
}