using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
namespace UsingScriptingClientSideAjaxAndJquery
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LblTime.Text = DateTime.Now.ToString();
            //LblTime1.Text = DateTime.Now.ToString();
            //LblPanel3.Text = DateTime.Now.ToString();
            //GdvProducts.DataSource = null;
            //GdvProducts.DataBind();
        }

        protected void btnProducts_Click(object sender, EventArgs e)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["SalesConn"].ConnectionString;

            //using (SqlConnection cn = new SqlConnection(connectionString))
            //{
            //    SqlCommand cmd = new SqlCommand("select * from Products", cn);

            //    cn.Open();
            //    SqlDataReader reader = cmd.ExecuteReader();

            //    StringBuilder s = new StringBuilder();
            //    s.Append(@"<table class=""table"">");
            //    while (reader.Read())
            //    {
            //        s.Append(string.Format("<tr><td>{0}</td><td>{1}</td><td>{2:c}</td></tr>", reader["ProductId"],reader["ProductName"], reader["ProductPrice"]));
            //    }
            //    s.Append("</table>");
            //    LtrProducts.Text = s.ToString();
            //    cn.Close();
            //}

            DataTable dt = getProducts();

            GdvProducts.DataSource = dt;
            GdvProducts.DataBind();
        }

        protected DataTable getProducts()
        {
            DataTable dt = new DataTable();

            string connectionString = ConfigurationManager.ConnectionStrings["SalesConn"].ConnectionString;

            using (SqlConnection cn = new SqlConnection(connectionString))
            {

                SqlDataAdapter da = new SqlDataAdapter("Select * from Products", cn);
                cn.Open();
                da.Fill(dt);
                cn.Close();

            }

            return dt;
        }

        protected void btnGridView_Click(object sender, EventArgs e)
        {

            LblTime.Text = DateTime.Now.ToString();
            LblTime1.Text = DateTime.Now.ToString();
            DataTable dt = getProducts();  
            
            GdvProducts.DataSource = dt;
            GdvProducts.DataBind();

        }

        protected void GdvProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            LblTime.Text = DateTime.Now.ToString();
            LblTime1.Text = DateTime.Now.ToString();
            GdvProducts.PageIndex = e.NewPageIndex;

            DataTable dt = getProducts();

            GdvProducts.DataSource = dt;
            GdvProducts.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SalesConn"].ConnectionString;

            using(SqlConnection cn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("insert into Products(ProductName, ProductPrice) values(@ProductName, @ProductPrice)",cn);
                cmd.Parameters.AddWithValue("@ProductName",TxtProductName.Text);
                cmd.Parameters.AddWithValue("@ProductPrice", TxtProductPrice.Text);

                cn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                cn.Close();

            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            LblNow.Text = "Time: " + DateTime.Now.ToString();
            
        }

        protected void btnPanel3_Click(object sender, EventArgs e)
        {
            LblPanel3.Text = DateTime.Now.ToString();
        }
    }
}
