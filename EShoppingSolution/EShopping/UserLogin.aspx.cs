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
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // string user = Session["UserName"].ToString();
            UserDO obj = new UserDO();
            obj.Email = txt1.Text;
            obj.password= txt2.Text;
            if (obj.Email == "Admin@gmail.com" && obj.password == "1122")
            {
                Session["Admin"] = "Admin";
                Response.Redirect("Admin.aspx");
            }
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_Login";
            cmd.Connection = c;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", obj.Email);
            cmd.Parameters.AddWithValue("@Password", obj.password);
           
            sda.SelectCommand = cmd;
            sda.Fill(ds, "UserInfo");
            c.Close();
           
           if (ds.Tables[0].Rows.Count > 0)
            {

                
                string Fname = ds.Tables[0].Rows[0]["FirstName"].ToString();
                Session["UserName"] = Fname;
                Response.Write("<script>alert('LOGIN SUCCESSFULLY');</script>");
                Response.Redirect("Home.aspx", false);
            }

            else
            {
                Response.Write("<script>alert('LOGIN UNSUCCESSFULL');</script>");
            }


           
            
           
        }
    }
}