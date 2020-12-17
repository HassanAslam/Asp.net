using System;
using System.IO;
using System.Globalization;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;

namespace EShopping
{
    public partial class Home : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (Session["UserName"] != null)
            {
                Label3.Text = "Welcome : " + Session["UserName"].ToString();
                LinkButton1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label3.Text = "Hello,You can Login here:";
                LinkButton1.Visible = true;
                Button1.Visible = false;
            
            }
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
            c.Open();
            fillDataList();
            c.Close();
            if (IsPostBack)
            {
                Session["AddProduct"] = false;
            }

        }
        

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            
        }
        public void fillDataList()
        {
            SqlDataAdapter da = new SqlDataAdapter("sp_pdata", DAL.con.ConnectionString.ToString());
            DataSet ds = new DataSet();
            SqlConnection c = new SqlConnection(DAL.con.ConnectionString.ToString());
            c.Open();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            c.Close();
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
            Label3.Text = "Logout Successfully";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           //searching products image button code
            SqlConnection c = new SqlConnection();
            c.ConnectionString = DAL.con.ConnectionString.ToString();
            c.Open();
            
            cmd.CommandText = "spSearch";
            cmd.Connection = c;
            cmd.CommandType = CommandType.StoredProcedure;
            string search = TextBox1.Text;
            cmd.Parameters.AddWithValue("@search", search); 
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            c.Close();
            DataList1.DataSourceID = null;
            DataList1.DataSource = ds;
            DataList1.DataBind();
           
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
           Session["AddProduct"] = "true";
            if (e.CommandName == "Addtocart")
            {

                
                DropDownList List = (DropDownList)e.Item.FindControl("DropDownList1");
              // List.SelectedItem = List.Items.IndexOf(List.Items.FindByValue("
                //string qty = txt2.Text;
                //string qty2 = List.SelectedItem.Text;
                //Label4.Text = qty2.ToString();

               //     Session["quantity"] = List.SelectedItem.Text;
                 //  string qty = Session["quantity"].ToString();

                    Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString() );//+ "&quantity=" + qty.ToString() );
                
            }    
        }
       

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        
     
   



    }
}