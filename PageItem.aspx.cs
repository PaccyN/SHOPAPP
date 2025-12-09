using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopManagement
{
    public partial class PageItem : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);

            ////string str = "select *  from ViewActiveItem ";
            ////SqlCommand cmd = new SqlCommand(str, con);
            ////cmd.ExecuteNonQuery();
            ////SqlDataAdapter da = new SqlDataAdapter();
            ////da.SelectCommand = cmd;
            ////DataSet ds = new DataSet();
            ////DataTable dt = new DataTable();
            ////da.Fill(ds, "ViewActiveItem");
            ////dt = ds.Tables["ViewActiveItem"];



            //GridView1.Visible = true;
            //GridView1.DataSource = dt;
            //GridView1.DataBind();


            TextBox5.Visible = false;

            if (!IsPostBack)
            {
                this.AllItems();
                

                string query = "select * from ItemCategory ORDER BY CategoryName ASC";
                this.BindDropDownList(DropDownList1, query, "CategoryName", "IdCategory", "Select Category");

            }
        }
        private void AllItems()
        {
            string query = "select *  from ViewActiveItem ORDER BY CategoryName, ItemName ASC";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        private void ViewDeletedItem()
        {
            string query = "select * from ViewDeleteItem";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        private void BindDropDownList(DropDownList ddl, string query, string text, string value, string defaultText)
        {
            string ConStrSql = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(ConStrSql))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    ddl.DataSource = cmd.ExecuteReader();
                    ddl.DataTextField = text;
                    ddl.DataValueField = value;
                    ddl.DataBind();
                    con.Close();
                }
            }
            ddl.Items.Insert(0, new ListItem(defaultText, "0"));
        }

        private void ItemsByCategory()
        {
            string query = "select *  from ViewActiveItem WHERE IdCategory = '" + DropDownList1.SelectedValue + "' ORDER BY CategoryName, ItemName ASC";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        private void ExcelExportItems()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "List of Items by " + DropDownList1.SelectedItem + ".xls ";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please select category')", true);
            }
            else if (TextBox2.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please enter item name')", true);
            }
            else if (TextBox4.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please select Unity')", true);
            }
            else
            {
                try
                {


            con.Close();
            con.Open();

            string str = "EXEC insertItem1 '" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Label5.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Item Saves Sucessfully')", true);
                    TextBox2.Text = TextBox3.Text = TextBox4.Text ="";

            //string str1 = "select *  from ViewActiveItem ";
            //SqlCommand cmd1 = new SqlCommand(str1, con);
            //cmd1.ExecuteNonQuery();
            //SqlDataAdapter da1 = new SqlDataAdapter();
            //da1.SelectCommand = cmd1;
            //DataSet ds1 = new DataSet();
            //DataTable dt1 = new DataTable();
            //da1.Fill(ds1, "ViewActiveItem");
            //dt1 = ds1.Tables["ViewActiveItem"];


                    //GridView1.Visible = true;
                    //GridView1.DataSource = dt1;
                    //GridView1.DataBind();

                    this.ItemsByCategory();
        }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alter", "alert('Message: " + ex.Message.Replace("'", "").Replace("\"", "") + "');", true);
                }
            }

        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                this.AllItems();
            }
            else
            {
                this.ItemsByCategory();
            }

        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //        //con.Close();
        //        //con.Open();

        //        //TextBox5.Text = GridView1.SelectedRow.Cells[1].Text;
        //        //TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
        //        //TextBox3.Text = GridView1.SelectedRow.Cells[5].Text;
        //        //TextBox4.Text = GridView1.SelectedRow.Cells[6].Text;



        //        //string str1 = "select IdCategory, CategoryName from ItemCategory";
        //        //SqlCommand cmd1 = new SqlCommand(str1, con);
        //        //SqlDataReader reader = cmd1.ExecuteReader();
        //        //DropDownList1.DataSource = reader;
        //        //DropDownList1.DataTextField = "CategoryName";
        //        //DropDownList1.DataValueField = "IdCategory";
        //        //DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[3].Text;

        //        //DropDownList1.DataBind();
        //        //DropDownList1.Items.Insert(0, new ListItem("-- Select Category --", "0"));
            
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC updateItem '" + TextBox5.Text + "', '" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Label5.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Item Updated sucessfully')", true);
            this.AllItems();


           
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            con.Close();
            con.Open();

            string str = "EXEC insertItemCategory '" + TextBox6.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Category added successfully!!')", true);

            TextBox6.Text = "";

            string query = "select * from ItemCategory ORDER BY CategoryName ASC";
            this.BindDropDownList(DropDownList1, query, "CategoryName", "IdCategory", "Select Category");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox5.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveItem  WHERE IdItem = '" + TextBox5.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox2.Text = dr["ItemName"].ToString();
                    DropDownList1.SelectedValue = dr["IdCategory"].ToString();
                    TextBox3.Text = dr["Manufacturer"].ToString();
                    TextBox4.Text = dr["Unity"].ToString();
                }
                con.Close();


            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC deleteItem '" + TextBox5.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Item Deleted Sucessfully')", true);
            this.AllItems();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.ViewDeletedItem();
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please select Item category')", true);
            }
            else
            this.ExcelExportItems();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        //protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        //{

        //}
    }
}