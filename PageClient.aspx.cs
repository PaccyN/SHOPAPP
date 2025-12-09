using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopManagement
{
    public partial class PageClient : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);
            if (!IsPostBack)
            {
                con.Close();
                con.Open();

                string str = "select *  from ViewActiveClient ";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "ViewActiveClient");
                dt = ds.Tables["ViewActiveClient"];


                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}