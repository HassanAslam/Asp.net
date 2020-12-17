using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace EShopping
{
    public class DAL
    {
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

         public static SqlConnection con;

        static DAL()
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        }

        public DataSet FillDS(string query)
        {
            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


    }
}