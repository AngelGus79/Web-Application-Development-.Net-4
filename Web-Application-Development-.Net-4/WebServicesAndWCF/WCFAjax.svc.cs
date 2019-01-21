using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

namespace WebServicesAndWCF
{
    [ServiceContract(Namespace = "WebServicesAndWCF")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class WCFAjax
    {
        // Para usar HTTP GET, agregue el atributo [WebGet]. (El valor predeterminado de ResponseFormat es WebMessageFormat.Json)
        // Para crear una operación que devuelva XML,
        //     agregue [WebGet(ResponseFormat=WebMessageFormat.Xml)]
        //     e incluya la siguiente línea en el cuerpo de la operación:
        //         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
        [OperationContract]
        public void DoWork()
        {
            // Agregue aquí la implementación de la operación
            return;
        }
       
        public class person
        {
            public int EmployeeId { get; set; }
            public string EmployeeName { get; set; }
            public DateTime EmployeeAge { get; set; }
            public decimal EmployeeSalary { get; set; }
        }

        [OperationContract]
        [WebInvoke ]
        public List<person> GetEmployees()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeesConnection"].ConnectionString;
            List<person> Employees = new List<person>();

            using (SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from Employee", cn);

                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Employees.Add(new person
                    {
                        EmployeeId = (int)reader["EmployeeId"],
                        EmployeeName = (string)reader["EmployeeName"],
                        EmployeeSalary = (decimal)reader["EmployeeSalary"],
                        EmployeeAge = (DateTime)reader["EmployeeAge"]
                    });
                }
            }

            return Employees;
        }
        // Agregue aquí más operaciones y márquelas con [OperationContract]
    }
}
