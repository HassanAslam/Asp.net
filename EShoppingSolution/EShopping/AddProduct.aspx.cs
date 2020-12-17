using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EShopping
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
            ProductDO obj = new ProductDO();
            obj.productid = txt1.Text;
            obj.productname = txt2.Text;
            obj.productdesc = txt3.Text;
            
            if(FileUpload1.HasFile)
            {

                string filename = FileUpload1.PostedFile.FileName;
                obj.pimage = "Pimages/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Pimages/") + filename);
 
            }
            obj.pprice = txt4.Text;
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spAddProduct";
            cmd.Connection = c;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pid", obj.productid);
            cmd.Parameters.AddWithValue("@pname", obj.productname);
            cmd.Parameters.AddWithValue("@pdesc", obj.productdesc);
            cmd.Parameters.AddWithValue("@pprice", obj.pprice);
            cmd.Parameters.AddWithValue("@pimage", obj.pimage);
            

            cmd.ExecuteNonQuery();
            c.Close();
            Label1.Text = "Product Added";
           
            

        }

    }
}