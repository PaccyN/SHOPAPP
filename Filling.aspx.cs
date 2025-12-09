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
    public partial class Filling : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);

            if (!IsPostBack)
            {
                this.filling();

                string query = "select * from DocumentType ORDER BY DocumentTypeName ASC";
                this.BindDropDownList(DropDownList1, query, "DocumentTypeName", "IdFinDocType", "--Select DocumentType--");
            }
            }
        private void filling()
        {
            string query = "select *  from ViewFilling";
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string str = "EXEC insertdocumenttype '" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "ClientScript", "alert('Document added successfully!!')", true);

            TextBox4.Text = "";

            string query = "select * from DocumentType ORDER BY DocumentTypeName ASC";
            this.BindDropDownList(DropDownList1, query, "DocumentTypeName", "IdFinDocType", "--Select DocumentType--");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();

            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName).Replace(".pdf", "");
            string contentType = FileUpload1.PostedFile.ContentType;
            string FileExt = Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (FileUpload1.PostedFile.FileName.EndsWith(".xls") || FileUpload1.PostedFile.FileName.EndsWith(".xlsx") || FileUpload1.PostedFile.FileName.EndsWith(".png") || FileUpload1.PostedFile.FileName.EndsWith(".jpeg") || FileUpload1.PostedFile.FileName.EndsWith(".GIF") || FileUpload1.PostedFile.FileName.EndsWith(".JPG") || FileUpload1.PostedFile.FileName.EndsWith(".pdf") || FileUpload1.PostedFile.FileName.EndsWith(".docx"))

                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        string str4 = "Exec insertfile '" + DropDownList1.SelectedValue + "','"+TextBox2.Text+ "',@Data,'" + FileExt + "','" + Label10.Text + "','" + TextBox3.Text + "'  ";
                        SqlCommand cmd4 = new SqlCommand(str4, con);
                        cmd4.Parameters.AddWithValue("@Data", bytes);
                        cmd4.ExecuteNonQuery();

                        this.filling();

                        //string str2 = "select * from ViewFilling where IdDocument='" + TextBox1.Text + "'   order by dateadded desc ";
                        //SqlCommand cmd3 = new SqlCommand(str2, con);
                        //cmd3.ExecuteNonQuery();
                        //SqlDataAdapter da = new SqlDataAdapter();
                        //da.SelectCommand = cmd3;
                        //DataSet ds = new DataSet();
                        //DataTable dt = new DataTable();
                        //da.Fill(ds, "ViewFilling");
                        //dt = ds.Tables["ViewFilling"];
                        //GridView1.Visible = true;
                        //GridView1.DataSource = dt;
                        //GridView1.DataBind();


                    }
                }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Close();
            con.Open();


            byte[] bytes;
            string fileName, fileType;
            using (SqlCommand cmd = new SqlCommand("Select *  FROM  ViewFilling where IdDocument=@IdDocument"))
            {
                cmd.Parameters.AddWithValue("@IdDocument", GridView1.SelectedRow.Cells[1].Text);
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        bytes = (byte[])dt.Rows[0]["imageFile"];
                        fileType = dt.Rows[0]["DocType"].ToString();
                        fileName = dt.Rows[0]["documentTitle"].ToString();
                    }
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = fileType;
            //Response.AppendHeader("Content-Disposition","inline");
            Response.AppendHeader("Content-Disposition", "attachement; filename=" + fileName + fileType);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

       
    }


}
    
    

