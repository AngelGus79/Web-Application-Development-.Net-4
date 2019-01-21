using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using SalesModel;
namespace ConsumingWebServices
{
    class Program
    {
        static void Main(string[] args)
        {
            //ConsumingWCF();
            ConsumingWCFDataServices();
            Console.ReadLine();
        }

      static void ConsumingWCFDataServices()
        {

            SalesEntities entities = new SalesEntities(new Uri("http://localhost:50434/WcfDataService1.svc/"));

            var products = entities.Products.ToList();


            foreach (var product in products)
            {
                Console.WriteLine("Id: {0}, Name: {1}, Price: {2}", product.ProductID, product.ProductName, product.ProductPrice);
            }

        }
      static  void ConsumingWCF()
        {

            WfcProxy.WFCServiceClient proxy = new WfcProxy.WFCServiceClient();
            var worker = proxy.GetEmployeesById(1);
            Console.WriteLine("Id: {0}, Name: {1}, Salary: {2:c}, BirthDay: {3} ",worker.WorkerId,worker.WorkerName,worker.WorkerSalary,worker.WorkerAge.ToString("dd/MM/yyyy"));

        }
       static void ConsumingWebService()
        {
            myReference.myWebServiceasmxSoapClient client = new myReference.myWebServiceasmxSoapClient();


            DataTable dtEmployees = client.getEmployeesWithSalaryGreatherThan(12000);

            foreach (DataRow row in dtEmployees.Rows)
            {
                Console.WriteLine("Id: {0}, Name: {1}, BirthDay: {2:yyyy}, Salary: {3:C}", row[0], row[1], row[2], row[3]);
            }

            Console.ReadLine();
        }
    }
}
