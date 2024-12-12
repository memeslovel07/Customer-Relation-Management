using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services.Description;

namespace CRM
{
    public partial class Regidtration : System.Web.UI.Page
    {
        private string gender;
        private SqlConnection objcon;
        private SqlDataAdapter objapt;
        private DataTable objdt;
        private SqlCommand objcomm;

        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"data source=.;initial catalog=web;integrated security=sspi";
            objcon = new SqlConnection(constr);
            if (!IsPostBack)
            {
                objapt = new SqlDataAdapter("select * from Country", objcon);
                objdt = new DataTable();
                objapt.Fill(objdt);
                foreach (DataRow dr in objdt.Rows)
                {
                    ddlcountry.Items.Add(dr["countryname"].ToString());
                }

                for (int d = 1; d <= 31; d++)
                {
                    ddldate.Items.Add(d.ToString());
                }
                for (int m = 1; m <= 12; m++)
                {
                    ddlmonth.Items.Add(m.ToString());
                }
                for (int m = 2000; m <= 2024; m++)
                {
                    ddlyear.Items.Add(m.ToString());
                }

                Label12.Visible = false;
                Random ra = new Random();
                int noc = ra.Next(6, 8);
                string cap = "";
                int count = 0;

                do
                {
                    int ch = ra.Next(48, 123);
                    if ((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
                    {
                        cap = cap + (char)ch;
                        count++;
                        if (count == noc)
                        {
                            break;
                        }
                    }
                } while (true);

                labcaptcha.Text = cap;
            }
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            objapt = new SqlDataAdapter("select * from Country where countryname='" + ddlcountry.Text + "'", objcon);
            objdt = new DataTable();
            objapt.Fill(objdt);

            ddlstate.Items.Clear();
            objapt = new SqlDataAdapter("select * from state where countryid='" + objdt.Rows[0]["countryid"].ToString() + "' ", objcon);
            objdt = new DataTable();
            objapt.Fill(objdt);
            foreach (DataRow dr in objdt.Rows)
            {
                ddlstate.Items.Add(dr["statename"].ToString());
            }
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            objapt = new SqlDataAdapter("select * from state where statename='" + ddlstate.Text + "'", objcon);
            objdt = new DataTable();
            objapt.Fill(objdt);

            ddlcity.Items.Clear();
            objapt = new SqlDataAdapter("select * from city where StateId='" + objdt.Rows[0]["stateid"].ToString() + "'", objcon);
            objdt = new DataTable();
            objapt.Fill(objdt);
            foreach (DataRow dr in objdt.Rows)
            {
                ddlcity.Items.Add(dr["CityName"].ToString());
            }
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            if (rbtnmale.Checked)
            {
                gender = "Male";
            }
            if (rbtnfemale.Checked)
            {
                gender = "Female";
            }
            if (rbntother.Checked)
            {
                gender = "other";
            }
            string usertype = "user";
            string dob = ddldate.Text + "/" + ddlmonth.Text + "/" + ddlyear.Text;
            string dateofregistration = System.DateTime.Now.ToString();
            string password = txtpassword.Text;
            objcon.Open();
            if (CheckBox1.Checked == true)
            {
                if (txtcaptcha.Text == labcaptcha.Text)
                {
                    if (txtpassword.Text == txtconfirmpassword.Text)
                    {
                        objcomm = new SqlCommand("insert into registration(Username,Phonenumber,email,gender,dob,dateofregistration,country,state,city,pincode) values('" + txtusername.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + gender + "','" + dob + "','" + dateofregistration + "','" + ddlcountry.Text + "','" + ddlstate.Text + "','" + ddlcity.Text + "','" + txtpincode.Text + "')", objcon);
                        objcomm.ExecuteNonQuery();
                        objcomm = new SqlCommand("insert into login(username,password,usertype) values('" + txtusername.Text + "','" + password + "','" + usertype + "')", objcon);
                        objcomm.ExecuteNonQuery();
                        Response.Redirect("Homepage.aspx");
                        objcon.Close();
                    }
                    else
                    {
                        txtconfirmpassword.Text = "";
                        txtconfirmpassword.Attributes["placeholder"] = "Both password is not same";
                        txtconfirmpassword.Focus();
                    }
                }
                else
                {
                    txtcaptcha.Text = "";
                    txtcaptcha.Attributes["placeholder"] = "Captcha does not same";
                    txtcaptcha.Focus();
                }
            }
            else
            {
                string message = "Check the checkbox.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                CheckBox1.Focus();
            }
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            objapt = new SqlDataAdapter("select * from login where username='" + txtusername.Text + "'", objcon);
            objdt = new DataTable();
            objapt.Fill(objdt);
            if (objdt.Rows.Count > 0)
            {
                Label12.Text = "Username already used";
            }
            else
            {
                Label12.Text = "You can use username";
            }
            Label12.Visible = true;
        }
    }
}