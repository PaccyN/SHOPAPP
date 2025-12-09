using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace ShopManagement
{
    public partial class DashBoard : System.Web.UI.Page
    {
        string Shop = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Shop);
            

            if (!IsPostBack)
            {
                NoClients();
                Replenishment();
               


            }
        }
        private void NoClients()
        {
            string query = "SELECT ClientSex, COUNT(IdClient) as Number  FROM ViewActiveClient GROUP BY ClientSex";
            DataTable dt = GetData(query);

            List<string> genders = (from p in dt.AsEnumerable()
                                    select p.Field<string>("ClientSex")).Distinct().ToList();


            foreach (string gender in genders)
            {


                string[] x = (from p in dt.AsEnumerable()
                              //where p.Field<string>("ClientSex") == gender

                              select p.Field<string>("ClientSex")).ToArray();


                int[] y = (from p in dt.AsEnumerable()
                           //where p.Field<string>("ClientSex") == gender

                           select p.Field<int>("Number")).ToArray();


                //Chart4.Series.Add(new Series(gender));
                Chart4.Series[0].IsValueShownAsLabel = true;
                Chart4.Series[0].ChartType = SeriesChartType.Column;
                Chart4.Series[0].Points.DataBindXY(x, y);
                Chart4.Series[0].LabelFormat = "{0:#,##0}";
                Chart4.Series[0]["PixelPointWidth"] = "40";
                for( int i =0; i <x.Length;i++)
                {
                    if (i == 0)
                        Chart4.Series[0].Points[i].Color = Color.Pink;
                    if (i == 1)
                        Chart4.Series[0].Points[i].Color = Color.Teal;


                }
            }
        }
        private void Replenishment()
        {
            string query = "SELECT CategoryName, Sum(TotalPrice) as Repl  FROM ViewActiveReplinishiment GROUP BY CategoryName";
            DataTable dt = GetData(query);

            List<string> Category = (from p in dt.AsEnumerable()
                                    select p.Field<string>("CategoryName")).Distinct().ToList();


            foreach (string Categor in Category)
            {


                string[] x = (from p in dt.AsEnumerable()
                            

                              select p.Field<string>("CategoryName")).ToArray();


                Double[] y = (from p in dt.AsEnumerable()
                          

                           select p.Field<Double>("Repl")).ToArray();


                
                Chart5.Series[0].IsValueShownAsLabel = true;
                Chart5.Series[0].ChartType = SeriesChartType.Pie;
                Chart5.Series[0].Points.DataBindXY(x, y);
                Chart5.Series[0].LabelFormat = "{0:#,##0}";
                Chart5.Series[0]["PixelPointWidth"] = "40";
               
            }
        }

        //private voidIncomeStatement()
        //{
        //    string query = "SELECT sum(AmountIn), as Amount  FROM ViewIncomeStatement GROUP BY TotalExpense";
        //    DataTable dt = GetData(query);

        //    List<string> Amount = (from p in dt.AsEnumerable()
        //                           select p.Field<string>("Expense")).Distinct().ToList();


        //    foreach (string Amoun in Amount)
        //    {


        //        string[] x = (from p in dt.AsEnumerable()


        //                      select p.Field<string>("TotalExpense")).ToArray();


        //        Double[] y = (from p in dt.AsEnumerable()


        //                      select p.Field<Double>("")).ToArray();



        //        Chart6.Series[0].IsValueShownAsLabel = true;
        //        Chart6.Series[0].ChartType = SeriesChartType.column;
        //        Chart6.Series[0].Points.DataBindXY(x, y);
        //        Chart6.Series[0].LabelFormat = "{0:#,##0}";
        //        Chart6.Series[0]["PixelPointWidth"] = "40";

        //    }
        //}

        private static DataTable GetData(string query)
        {
            string constr = ConfigurationManager.ConnectionStrings["ShopManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    return dt;
                }
            }
        }

        protected void Chart5_Load(object sender, EventArgs e)
        {

        }
    }

    //protected void Chart4_Load(object sender, EventArgs e)
        

        }
    
