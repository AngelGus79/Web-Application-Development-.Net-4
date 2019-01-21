using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

namespace WebServicesAndWCF
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "WFCService" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione WFCService.svc o WFCService.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class WFCService : IWFCService
    {
        public void DoWork()
        {
        }

        public List<Worker> GetEmployees()
        {
            throw new NotImplementedException();
        }

        public Worker GetEmployeesById(int WorkerId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["EmployeesConnection"].ConnectionString;
            Worker e = new Worker();
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from Employee where EmployeeId = @EmployeeId", cn);

                cmd.Parameters.AddWithValue("@EmployeeId", WorkerId);

                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();


                if (reader.Read())
                {
                    e.WorkerId = (int)reader["EmployeeId"];
                    e.WorkerName = (string)reader["EmployeeName"];
                    e.WorkerAge = (DateTime)reader["EmployeeAge"];
                    e.WorkerSalary = (decimal)reader["EmployeeSalary"];
                }
            }

            return e;
        }
    }
}
