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
    public partial class PageReplenishment : System.Web.UI.Page
    {

        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);
            if (!IsPostBack)
            {
                this.Save();
                this.Item();
            }

        }

        private void Item()
        {
            string query = "select *  from ViewActiveItem ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        private void Save()
        {
            string query = "select *  from ViewActiveReplinishiment ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void DeletedReplenishment()
        {
            string query = "select *  from ViewDeleteReplinishment ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please enter Item Quantity')", true);
            }
            else if (TextBox3.Text == "")
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please enter Unity Replinished Price')", true);

            }
            else if (TextBox6.Text == "")
            {

                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('please enter Selling Price')", true);
            }
            else
            {
                try
                {
                    
                        con.Close();
                        con.Open();


                        string str = "EXEC insertReplinishment '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Label11.Text + "','" + TextBox6.Text + "'";
                        SqlCommand cmd = new SqlCommand(str, con);
                        cmd.ExecuteNonQuery();

                        ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Replinishement recorded successfully')", true);


                        //string str1 = "select * from ViewActiveReplinishimentWHERE IdItem = '" + TextBox1.Text + "'";
                        //SqlCommand cmd1 = new SqlCommand(str1, con);
                        //cmd1.ExecuteNonQuery();
                        //SqlDataAdapter da1 = new SqlDataAdapter();
                        //da1.SelectCommand = cmd1;
                        //DataSet ds1 = new DataSet();
                        //DataTable dt1 = new DataTable();
                        //da1.Fill(ds1, "ViewActiveReplinishiment");
                        //dt1 = ds1.Tables["ViewActiveReplinishiment"];


                        //GridView1.Visible = true;
                        //GridView1.DataSource = dt1;
                        //GridView1.DataBind();
                        this.Save();

                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", $"alert('{ex.Message.Replace("'","\\")}')", true);
                }

            }
        }

        //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Close();
        //    con.Open();
        //    TextBox1.Text = GridView2.SelectedRow.Cells[1].Text;
        //    TextBox7.Text = GridView2.SelectedRow.Cells[2].Text;
        //    TextBox8.Text = GridView2.SelectedRow.Cells[3].Text;
           
        //}

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox1.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveItem  WHERE IdItem = '" + TextBox1.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                  
                    TextBox7.Text = dr["ItemName"].ToString();
                    TextBox8.Text = dr["Unity"].ToString();
                }
                con.Close();


            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox12.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveReplinishiment  WHERE IdReplinishment = '" + TextBox12.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox1.Text = dr["IdItem"].ToString();
                    TextBox2.Text = dr["ItemQuantity"].ToString();
                    TextBox3.Text = dr["UnityPrice"].ToString();
                    TextBox7.Text = dr["ItemName"].ToString();
                    TextBox8.Text = dr["Unity"].ToString();
                    TextBox4.Text = dr["ReplinishmentDate"].ToString();
                    TextBox5.Text = dr["SupplierName"].ToString();
                    TextBox6.Text = dr["SellingPrice"].ToString();
                }
                con.Close();


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string str = "EXEC updateReplinishment '" + TextBox12.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Label11.Text + "','" + TextBox6.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Replinishement Updated successfully')", true);
            this.Save();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string str = "EXEC deleteReplinishment '" + TextBox12.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Replinishement Deleted successfully')", true);
            this.Save();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.DeletedReplenishment();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            con.Close();
            con.Open();
            string str = "select *  from ViewActiveItem where ItemName like '%" + TextBox10.Text + "%' ";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds, "ViewActiveItem");
            dt = ds.Tables["ViewActiveItem"];

            GridView2.Visible = true;
            GridView2.DataSource = dt;
            GridView2.DataBind();

            TextBox10.Text = "";
        }
    }
}
        