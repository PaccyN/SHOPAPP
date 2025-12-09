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
    public partial class PageSales : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        CRInvoice CRI = new CRInvoice();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);

            if (!IsPostBack)
            {
                this.Client();
                this.Clientsales();
                //this.sales();
                this.saledetail();
                this.salessaledetail();
                this.stock();
            }
        }
        private void Client()
        {
            string query = "select *  from ViewActiveClient ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView6.DataSource = dt;
            GridView6.DataBind();

            GridView2.DataSource = dt;
            GridView2.DataBind();

        }
        private void Clientsales()
        {
            string query = "select *  from ViewActiveClient ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        private void sales()
        {
            string query = "select *  from ViewSales ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        private void sale()
        {
            string query = "select *  from ViewSales /*where IdClient='" + TextBox1.Text + "'*/";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
            private void saledetail()
        {
            string query = "select *  from ViewActiveSaleDetail where IdSale='" + TextBox7.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        private void salessaledetail()
        {
            string query = "select *  from ViewSales where IdClient=IdClient ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();

          
        }

        private void stock()
        {
            string query = "select * from ViewStock WHERE QuantityBalance>0 order by IdItem desc ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView5.DataSource = dt;
            GridView5.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
          
            string str = "EXEC insertSaleswithDate '" + TextBox1.Text + "','" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Sales recorded successfully')", true);
            this.sales();

        }

        //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Close();
        //    con.Open();
        //    TextBox1.Text = GridView2.SelectedRow.Cells[1].Text;
        //    TextBox3.Text = GridView2.SelectedRow.Cells[2].Text;
           
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC  updateSale '" + TextBox5.Text + "', '" + TextBox1.Text + "','" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            string str1 = "select *  from  ViewSales ";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            DataTable dt1 = new DataTable();
            da1.Fill(ds1, "ViewSales");
            dt1 = ds1.Tables["ViewSales"];


            GridView1.Visible = true;
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            TextBox1.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //con.Close();
            //con.Open();

            //string str = "insertsaledetail '" + TextBox22.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "'";
            //SqlCommand cmd = new SqlCommand(str, con);
            //cmd.ExecuteNonQuery();

            //string str1 = "select * from ViewActiveSaleDetail where IdSale='" + TextBox7.Text + "' ";
            //SqlCommand cmd1 = new SqlCommand(str1, con);
            //cmd1.ExecuteNonQuery();
            //SqlDataAdapter da1 = new SqlDataAdapter();
            //da1.SelectCommand = cmd1;
            //DataSet ds1 = new DataSet();
            //DataTable dt1 = new DataTable();
            //da1.Fill(ds1, "ViewSales");
            //dt1 = ds1.Tables["ViewSales"];


            //GridView4.Visible = true;
            //GridView4.DataSource = dt1;
            //GridView4.DataBind();

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC insertsaledetail '" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Sales Details recorded successfully')", true);
            this.saledetail();
           

            

        }

        //protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Close();
        //    con.Open();
        //    TextBox7.Text = GridView3.SelectedRow.Cells[1].Text;
        //    TextBox11.Text = GridView3.SelectedRow.Cells[2].Text;
        //}

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            TextBox8.Text = GridView5.SelectedRow.Cells[1].Text;
            TextBox12.Text = GridView5.SelectedRow.Cells[2].Text;
            TextBox13.Text = GridView5.SelectedRow.Cells[6].Text;
            TextBox14.Text = GridView5.SelectedRow.Cells[5].Text;
            TextBox10.Text = GridView5.SelectedRow.Cells[7].Text;
        }

        //protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Close();
        //    con.Open();
        //    TextBox7.Text = GridView4.SelectedRow.Cells[7].Text;
        //    TextBox11.Text = GridView4.SelectedRow.Cells[1].Text;
        //    TextBox8.Text = GridView4.SelectedRow.Cells[8].Text;
        //    TextBox12.Text = GridView4.SelectedRow.Cells[2].Text;
        //    TextBox9.Text = GridView4.SelectedRow.Cells[3].Text;
        //}

        protected void Button8_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string str = "EXEC insertClient '" +TextBox16.Text + "','" + TextBox17.Text + "','" + DropDownList1.SelectedItem + "','" + TextBox21.Text + "','" + Label18.Text + "','" + TextBox20.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Inserted Client Sucessful')", true);
            TextBox16.Text = TextBox17.Text = TextBox21.Text = TextBox20.Text = "";
            this.Client();
           

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "select *  from VRSaleDetail WHERE IdSale = '" + TextBox7.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DSInvoice ds = new DSInvoice();
            da.Fill(ds, "VRSaleDetail");

            CRI.SetDataSource(ds.Tables["VRSaleDetail"]);
            string fileName = $"Invoice";
            CRI.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, true, fileName);

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox1.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveClient WHERE IdClient = '" + TextBox1.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox3.Text = dr["ClientName"].ToString();
                    //TextBox1.Text = dr["IdClient"].ToString();
                   
                }
                con.Close();


            }
            this.sale();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox5.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveSales  WHERE IdSale = '" + TextBox5.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox1.Text = dr["IdClient"].ToString();
                    TextBox3.Text = dr["ClientName"].ToString();
                    TextBox2.Text = dr["SaleDate"].ToString();
                }
                con.Close();


            }
        }

        protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox19.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveClient  WHERE IdClient = '" + TextBox19.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox16.Text = dr["ClientName"].ToString();
                    DropDownList1.SelectedValue = dr["ClientSex"].ToString();
                    TextBox17.Text = dr["ClientPhone"].ToString();
                    TextBox20.Text = dr["Tin"].ToString();
                    TextBox21.Text = dr["ClientEmail"].ToString();
                }
                con.Close();


            }
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox7.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveSales  WHERE IdSale = '" + TextBox7.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox11.Text = dr["ClientName"].ToString();
                   
                }
                con.Close();


            }
            this.saledetail();
        }

        protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox8.Text = row.Cells[1].Text;

                string query = "select *  from ViewStock  WHERE IdItem = '" + TextBox8.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox12.Text = dr["ItemName"].ToString();
                    TextBox13.Text = dr["Unity"].ToString();
                    TextBox14.Text = dr["QuantityBalance"].ToString();
                    TextBox10.Text = dr["SellingPrice"].ToString();
                }
                con.Close();


            }
        }

        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox7.Text = row.Cells[1].Text;
                TextBox8.Text = row.Cells[8].Text;

                string query = "select *  from ViewActiveSaleDetail  WHERE IdSale = '" + TextBox7.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {

                    TextBox8.Text = dr["IdItem"].ToString();
                    TextBox9.Text = dr["ItemQuantity"].ToString();
                    TextBox10.Text = dr["SellingPrice"].ToString();
                    TextBox11.Text = dr["ClientName"].ToString();
                    TextBox12.Text = dr["ItemName"].ToString();
                    TextBox13.Text = dr["Unity"].ToString();
                    TextBox14.Text = dr["QuantityBalance"].ToString();
                   
                }
                con.Close();


            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            con.Close();
            con.Open();
            string str = "select *  from ViewActiveClient where ClientName like '%" + TextBox4.Text + "%' ";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds, "ViewActiveClient");
            dt = ds.Tables["ViewActiveClient"];

            GridView2.Visible = true;
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            con.Close();
            con.Open();
            string str = "select *  from ViewActiveSales where ClientName like '%" + TextBox6.Text + "%' ";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds, "ViewActiveSales");
            dt = ds.Tables["ViewActiveSales"];

            GridView3.Visible = true;
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        //protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{

        //}
    }
}