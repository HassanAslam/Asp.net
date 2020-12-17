using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace EShopping
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserDO obj = new UserDO();
            obj.Fname = txt1.Text;
            obj.Lname = txt2.Text;
            obj.Email = txt3.Text;
            obj.Gender = DDL1.Text;
            obj.Address = txt4.Text;
            obj.Phone = txt5.Text;
            obj.password= txt6.Text;
            obj.ConfirmPassword = txt7.Text;
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
            c.Open();
            cmd.CommandText = "sp_Insert";
            cmd.Connection = c;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", obj.Fname);
            cmd.Parameters.AddWithValue("@LastName", obj.Lname);
            cmd.Parameters.AddWithValue("@EmailId", obj.Email);
            cmd.Parameters.AddWithValue("@Gender", obj.Gender);
            cmd.Parameters.AddWithValue("@Address", obj.Address);
            cmd.Parameters.AddWithValue("@Phone", obj.Phone);
            cmd.Parameters.AddWithValue("@Password", obj.password);
            cmd.Parameters.AddWithValue("@ConfirmPassword", obj.ConfirmPassword);
            

            cmd.ExecuteNonQuery();
            c.Close();
            Response.Write("<script>alert('REGISTERED SUCCESFULLY');</script>");
            lbl1.Text = "Registered Successfully";
            Response.Redirect("Home.aspx", false);
            
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
         
        }
    }
}