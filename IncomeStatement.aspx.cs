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
    public partial class IncomeStatement : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC generateincomestatment '" + TextBox1.Text + "','" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            string str1 = "select *  from IncomeStatment ";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            DataTable dt1 = new DataTable();
            da1.Fill(ds1, "IncomeStatment");
            dt1 = ds1.Tables["IncomeStatment"];


            GridView1.Visible = true;
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }
    }
}