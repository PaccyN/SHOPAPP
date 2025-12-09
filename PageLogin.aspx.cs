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
    public partial class PageLogin : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        internal static string aspx;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, ImageClickEventArgs e)
        {
            con = new SqlConnection(Shop);

            con.Close();
            con.Open();

            string str = "select UserFullname, UserPassword,UserLevelName from ViewActiveUserInfo where UserName='" + TextBox1.Text + "' AND UserPassword = '" + TextBox2.Text + "'";

            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "ViewUserInfo");
            DataView dv = new DataView(ds.Tables["ViewUserInfo"]);
            if (dv.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Incorrect Username or Password')", true);
            }

            else
            {
               
                Session["UserFullname"] = dv[0]["UserFullname"].ToString();
                Session["UserLevelName"] = dv[0]["UserLevelName"].ToString();

                if (dv[0]["UserLevelName"].ToString().CompareTo("Admin") == 0)
                    Response.Redirect("DashBoard.aspx");

                if (dv[0]["UserLevelName"].ToString().CompareTo("Seller") == 0)
                    Response.Redirect("PageSales.aspx");


            }
        }

        //protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        //{
        //    TextBox2.PasswordChar = '*';
        //    if (checkBox1.Checked)
        //    {
        //        TextBox2.PasswordChar = '\0';
        //    }
        //}
    }
}