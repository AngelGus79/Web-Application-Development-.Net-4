using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MasterPages
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FetchUsers();
            
        }
        private void FetchUsers()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            
            SqlDataAdapter da = new SqlDataAdapter("FetchUsers", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();

            da.Fill(ds);

            GridView1.DataSource = ds;

            GridView1.DataBind();

            serverTime.Text = DateTime.Now.ToString();

        }
       
    }
}