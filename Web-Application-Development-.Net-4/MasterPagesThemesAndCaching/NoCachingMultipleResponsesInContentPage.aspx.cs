using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace MasterPages
{
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet Products = GetData("All");

                GridView1.DataSource = Products;
                GridView1.DataBind();

              

            }
            lblServerTime.Text = DateTime.Now.ToString();
        }

        private DataSet GetData(string ProductName)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("GetProducts", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductName", ProductName);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds);
            return ds;



        }

        protected void DdlProductName_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet Products = GetData(DdlProductName.SelectedValue);

            GridView1.DataSource = Products;
            GridView1.DataBind();

            lblServerTime.Text = DateTime.Now.ToString();
        }
    }
}