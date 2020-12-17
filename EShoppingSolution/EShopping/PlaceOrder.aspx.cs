using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EShopping
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CardDO obj = new CardDO();
            obj.fname = TextBox1.Text;
            obj.lname = TextBox2.Text;
            obj.cardno = TextBox3.Text;
            obj.expiry = TextBox4.Text;
            obj.cvv = TextBox5.Text;
            obj.address = TextBox6.Text;
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spInsertCardDetail";
            cmd.Connection = c;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fname", obj.fname);
            cmd.Parameters.AddWithValue("@lname", obj.lname);
            cmd.Parameters.AddWithValue("@cardno", obj.cardno);
            cmd.Parameters.AddWithValue("@expiry", obj.expiry);
            cmd.Parameters.AddWithValue("@cvv", obj.cvv);
            cmd.Parameters.AddWithValue("@address", obj.address);
            


            cmd.ExecuteNonQuery();
            c.Close();
            Response.Write("<script>alert('Payment Made Successful');</script>");
            Session["address"] = TextBox6.Text;
            Response.Redirect("Invoice.aspx");
            
        }
    }
}