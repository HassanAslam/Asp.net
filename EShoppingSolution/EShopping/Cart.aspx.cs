using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

namespace EShopping
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!Page.IsPostBack)
            {
                if (Session["BuyItems"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }
                //Adding Product to Grid View
                Session["AddProduct"] = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("Pid");
                dt.Columns.Add("Pimage");
                dt.Columns.Add("Pname");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Pprice");
                dt.Columns.Add("TotalPrice");
               // string quantity = Request.QueryString["quantity"].ToString();

                if (Request.QueryString["id"] != null)
                {
                    if (Session["BuyItems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection c = new SqlConnection();
                        c.ConnectionString = DAL.con.ConnectionString.ToString();
                        SqlDataAdapter da = new SqlDataAdapter();
                        ProductDO obj = new ProductDO();
                        obj.productid = Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "spAddtocart";
                        cmd.Connection = c;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@productid", obj.productid);
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["Pid"] = ds.Tables[0].Rows[0]["PId"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["Pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                       // string quantity = Request.QueryString["quantity"];
                       // dr["Quantity"] = quantity;

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Pprice"].ToString());
                       // int Quantity = Convert.ToInt16(quantity);
                       // int TotalPrice = price * Quantity;
                        dr["TotalPrice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["BuyItems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = GrandTotal().ToString();
                        //Response.Redirect(Cart.aspx);
                    }
                    else
                    {
                        dt = (DataTable)Session["BuyItems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        SqlConnection c = new SqlConnection();
                        c.ConnectionString = DAL.con.ConnectionString.ToString();
                        SqlDataAdapter da = new SqlDataAdapter();
                        ProductDO obj = new ProductDO();
                        string id = Request.QueryString["id"];
                        obj.productid = id;
                        
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "spAddtocart";
                        cmd.Connection = c;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@productid", obj.productid);
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["Pid"] = ds.Tables[0].Rows[0]["Pid"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["Pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        //string quantity = Request.QueryString["quantity"];
                        //dr["Quantity"] = quantity;

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        //int Quantity = Convert.ToInt16(quantity);
                        //int TotalPrice = price * Quantity;
                        dr["TotalPrice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["BuyItems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = GrandTotal().ToString();
                    }
                }

                else
                {
                    dt = (DataTable)Session["BuyItems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = GrandTotal().ToString();
                    }
                }
            }
            string orderdate = DateTime.Now.ToShortDateString();
            Session["OrderDate"] = orderdate;
            orderid();
        }

        public int GrandTotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["BuyItems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["Pprice"].ToString());
                i = i + 1;

            }

            return totalprice;
        }
        public void orderid()
        {
         /*   string alpha = "1234567890";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(5 * r.NextDouble())];
            }*/
            string orderid;
            orderid = "Order Id=" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString()
                + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString();

            Session["orderid"] = orderid;

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["BuyItems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                //string qtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                qdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;

                }
            }
            //setting sno. after deleting item from row
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["BuyItems"] = dt;
            Response.Redirect("Cart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["BuyItems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection c = new SqlConnection();
                c.ConnectionString = DAL.con.ConnectionString.ToString();
                OrderDO obj = new OrderDO();
                obj.orderid = Session["OrderId"].ToString();
                obj.sno = dt.Rows[i]["sno"].ToString();
                obj.productid = dt.Rows[i]["pid"].ToString();
                obj.pname = dt.Rows[i]["pname"].ToString();
                obj.price = dt.Rows[i]["pprice"].ToString();
                obj.quantity = dt.Rows[i]["quantity"].ToString();
                obj.orderdate = Session["OrderDate"].ToString();
                c.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spOrderDetails";
                cmd.Connection = c;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@orderid", obj.orderid);
                cmd.Parameters.AddWithValue("@sno", obj.sno);
                cmd.Parameters.AddWithValue("@productid", obj.productid);
                cmd.Parameters.AddWithValue("@productname", obj.pname);
                cmd.Parameters.AddWithValue("@price", obj.price);
                cmd.Parameters.AddWithValue("@quantity", obj.quantity);
                cmd.Parameters.AddWithValue("@orderdate", obj.orderdate);

                cmd.ExecuteNonQuery();
                c.Close();


            }
            if (Session["Username"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
            else
            {
                if (GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your cart is empty');</script>");
                }
                else
                {
                    Response.Redirect("PlaceOrder.aspx");
                }
            }
        }

        public object TotalPrice { get; set; }
    }
}