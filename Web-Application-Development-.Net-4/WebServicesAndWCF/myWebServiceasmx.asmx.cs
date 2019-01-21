using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebServicesAndWCF
{
    /// <summary>
    /// Descripción breve de myWebServiceasmx
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class myWebServiceasmx : System.Web.Services.WebService
    {

       public class Employee
        {
            public int EmployeeId { get; set; }
            public string EmployeeName { get; set; }
            public DateTime EmployeeAge { get; set; }
            public decimal EmployeeSalary { get; set; }
        }

        [WebMethod]
        public Employee GetEmployeeById(int EmployeeId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["EmployeesConnection"].ConnectionString;
            Employee e = new Employee();
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from Employee where EmployeeId = @EmployeeId", cn);

                cmd.Parameters.AddWithValue("@EmployeeId",EmployeeId);

                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

               
                if (reader.Read())
                {
                    e.EmployeeId = (int)reader["EmployeeId"];
                    e.EmployeeName = (string)reader["EmployeeName"];
                    e.EmployeeAge = (DateTime)reader["EmployeeAge"];
                    e.EmployeeSalary = (decimal)reader["EmployeeSalary"];
                }
            }

            return e;

        }      



    }
}
