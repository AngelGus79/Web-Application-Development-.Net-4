using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebServicesAndWCF
{
   
    public class Employee
    {
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public DateTime EmployeeAge { get; set; }
        public decimal EmployeeSalary { get; set; }
    }
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        public static Employee GetEmployeeById(int EmployeeId)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeesConnection"].ConnectionString;
            Employee e = new Employee();
            using (SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from Employee where EmployeeId = @EmployeeId", cn);
                cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);

                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    e.EmployeeId = (int)reader["EmployeeId"];
                    e.EmployeeName = (string)reader["EmployeeName"];
                    e.EmployeeAge = (DateTime)reader["EmployeeAge"];
                    e.EmployeeSalary = (decimal)reader["EmployeeSalary"];
                }

                cmd.Dispose();
                reader.Close();
            }

            return e;
        }

        [System.Web.Services.WebMethod]
        public static Object GetEmployees()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeesConnection"].ConnectionString;
            List<Employee> Employees = new List<Employee>();

            using(SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from Employee", cn);

                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Employees.Add(new Employee{
                        EmployeeId = (int)reader["EmployeeId"],
                        EmployeeName =  (string)reader["EmployeeName"],
                        EmployeeSalary = (decimal)reader["EmployeeSalary"],
                        EmployeeAge = (DateTime)reader["EmployeeAge"]
                    });
                }
            }

            object json = new { ListEmployees = Employees };
            return json;

        }
    }
}