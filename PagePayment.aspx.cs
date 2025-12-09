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
    public partial class PagePayment : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        CRPayment p = new CRPayment();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);
            if (!IsPostBack)
            {
                this.dropdownlist();
                this.payment();

                con.Close();
                con.Open();

                string str = "select *  from ViewPaymentType ";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "ViewPaymentType");
                dt = ds.Tables["ViewPaymentType"];


                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();

                string str1 = "select *  from  ViewClient  WHERE ClientBalance>0 ";
                SqlCommand cmd1 = new SqlCommand(str1, con);
                cmd1.ExecuteNonQuery();
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                DataTable dt1 = new DataTable();
                da1.Fill(ds1, "ViewClient");
                dt1 = ds1.Tables["ViewClient"];


                GridView2.Visible = true;
                GridView2.DataSource = dt1;
                GridView2.DataBind();

                //string str2 = "select *  from  ViewActivePayment  ";
                //SqlCommand cmd2 = new SqlCommand(str2, con);
                //cmd2.ExecuteNonQuery();
                //SqlDataAdapter da2 = new SqlDataAdapter();
                //da2.SelectCommand = cmd2;
                //DataSet ds2 = new DataSet();
                //DataTable dt2 = new DataTable();
                //da2.Fill(ds2, "ViewActivePayment");
                //dt2 = ds2.Tables["ViewActivePayment"];


                //GridView3.Visible = true;
                //GridView3.DataSource = dt2;
                //GridView3.DataBind();

               
            }
        }
        private void payment()
        {
            string query = "select *  from ViewActivePayment where IdClient='" + TextBox3.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable("dt");
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();

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
        private void dropdownlist()
        {
            string query = "select * from PaymentType ORDER BY PaymentTypeName ASC";
            this.BindDropDownList(DropDownList1, query, "PaymentTypeName", "PaymentIdType", "--Select Payment Type--");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC insertPaymentType '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";

            string str1 = "select *  from ViewPaymentType ";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            DataTable dt1 = new DataTable();
            da1.Fill(ds1, "ViewPaymentType");
            dt1 = ds1.Tables["ViewPaymentType"];


            GridView1.Visible = true;
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please enter Amount Paid')", true);
            }
            else if (TextBox7.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please enter Client Balance')", true);
            }
            else if (TextBox9.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please Enter Deposited Account')", true);
            }
            else
            {
                try
                {

                    con.Close();
                    con.Open();

                    double CurrentBalance = Convert.ToDouble(TextBox7.Text);
                    double AmountPaid = Convert.ToDouble(TextBox6.Text);

                    double NewBalance = CurrentBalance - AmountPaid;

                    TextBox7.Text = NewBalance.ToString();
                    string str = "EXEC insertPayment '" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox9.Text + "','" + Label15.Text + "'";
                    SqlCommand cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();
                    TextBox3.Text = TextBox5.Text = TextBox6.Text = TextBox4.Text = TextBox9.Text = "";
                    ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('You have Paid Successfully')", true);
                    this.payment();

                    string str1 = "select *  from  ViewClient  WHERE ClientBalance>0 ";
                    SqlCommand cmd1 = new SqlCommand(str1, con);
                    cmd1.ExecuteNonQuery();
                    SqlDataAdapter da1 = new SqlDataAdapter();
                    da1.SelectCommand = cmd1;
                    DataSet ds1 = new DataSet();
                    DataTable dt1 = new DataTable();
                    da1.Fill(ds1, "ViewClient");
                    dt1 = ds1.Tables["ViewClient"];


                    GridView2.Visible = true;
                    GridView2.DataSource = dt1;
                    GridView2.DataBind();

                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alter", "alert('Message: " + ex.Message.Replace("'", "").Replace("\"", "") + "');", true);
                }
            }
        }

                protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox3.Text = row.Cells[1].Text;

                string query = "select *  from ViewActiveClient  WHERE IdClient = '" + TextBox3.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox4.Text = dr["ClientName"].ToString();

                    TextBox7.Text = dr["ClientBalance"].ToString();

                }
                con.Close();


            }
            this.payment();
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox11.Text = row.Cells[1].Text;

                string query = "select *  from ViewActivePayment  WHERE IdPayment = '" + TextBox11.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox3.Text = dr["IdClient"].ToString();
                    TextBox4.Text = dr["ClientName"].ToString();
                    TextBox5.Text = dr["PaymentDate"].ToString();
                    TextBox6.Text = dr["AmountPaid"].ToString();
                    TextBox7.Text = dr["ClientBalance"].ToString();
                    TextBox9.Text = dr["DepositedAccount"].ToString();
                    DropDownList1.SelectedValue = dr["PaymentIdType"].ToString();

                }
                con.Close();
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC updatePayment '" + TextBox11.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox9.Text + "','" + Label15.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            TextBox3.Text = TextBox5.Text =TextBox11.Text= TextBox6.Text = TextBox9.Text = "";
            this.payment();
            double CurrentBalance = Convert.ToDouble(TextBox7.Text);
            double AmountPaid = Convert.ToDouble(TextBox6.Text);

            double NewBalance = CurrentBalance - AmountPaid;

            TextBox7.Text = NewBalance.ToString();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC deletePayment'" + TextBox11.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            
            this.payment();
            
            double CurrentBalance = Convert.ToDouble(TextBox7.Text);
            double AmountPaid = Convert.ToDouble(TextBox6.Text);

            double NewBalance = CurrentBalance - AmountPaid;

            TextBox7.Text = NewBalance.ToString();
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            con.Close();
            con.Open();
            string str = "select *  from ViewActiveClient where ClientName like '%" + TextBox5.Text + "%' ";
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

        protected void Button12_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "select *  from VRReceipt WHERE IdPayment = '" + TextBox11.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DSInvoice ds = new DSInvoice();
            da.Fill(ds, "VRReceipt");

            p.SetDataSource(ds.Tables["VRReceipt"]);
            string fileName = $"Receipt";
            p.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, true, fileName);
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC insertPaymentType '" + TextBox12.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            TextBox12.Text = "";

            string query = "select * from PaymentType ORDER BY PaymentTypeName ASC";
            this.BindDropDownList(DropDownList1, query, "PaymentTypeName", "PaymentIdType", "Select PaymentType");
        }
    }
}

       
