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
    public partial class Expense : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);
            if (!IsPostBack)
            {
                this.expense();
                this.expensedropdown();
            }
        }
        private void expense()
        {
            string query = "select *  from Viewexpense where ExpenseStatus='Active' ";
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
        private void expensedropdown ()
            {
             string query = "select * from ExpenseType ORDER BY ExpenseTypeName ASC";
                this.BindDropDownList(DropDownList1, query, "ExpenseTypeName", "IdExpenseType", "--Select Expense Type--");

    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please select Expense Name')", true);
            }
            else if (TextBox2.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please enter Date Expense')", true);
            }
            else if (TextBox4.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Please select Amount Spent')", true);
            }
            else
            {
                try
                {
                    con.Close();
                    con.Open();

                    string str = "EXEC insertexpense'" + DropDownList1.SelectedValue + "', '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Label9.Text + "','" + TextBox4.Text + "'";
                    SqlCommand cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Expense Inserted Succesful')", true);
                    TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
                    this.expense();
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alter", "alert('Message: " + ex.Message.Replace("'", "").Replace("\"", "") + "');", true);
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Select")
            {
                ImageButton img = (ImageButton)e.CommandSource;
                GridViewRow row = (GridViewRow)img.NamingContainer;

                TextBox5.Text = row.Cells[1].Text;

                string query = "select *  from Viewexpense  WHERE IdExpense = '" + TextBox5.Text + "'";
                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = sc.ExecuteReader();

                if (dr.Read())
                {
                    TextBox1.Text = dr["DateExpense"].ToString();
                    TextBox2.Text = dr["AmountSpent"].ToString();

                    DropDownList1.SelectedValue = dr["IdExpenseType"].ToString();
                    TextBox3.Text = dr["Description"].ToString();
                    TextBox4.Text = dr["Currency"].ToString();
                }
                con.Close();


            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                this.expense();
            }
            else
            {
                this.expensedropdown();
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC updateexpense'" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "', '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Label9.Text + "','" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Expense updated Succesful')", true);
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            this.expense();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC deleteexpense'" + TextBox5.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Expense Deleted Succesful')", true);
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            this.expense();
        }
    }
}