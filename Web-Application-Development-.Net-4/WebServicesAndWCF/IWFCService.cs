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
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IWFCService" en el código y en el archivo de configuración a la vez.
    [DataContract]
    public class Worker
    {   
        [DataMember]
        public int WorkerId { get; set; }
        [DataMember]
        public string WorkerName { get; set; }
        [DataMember]
        public DateTime WorkerAge { get; set; }
        [DataMember]
        public decimal WorkerSalary { get; set; }
    }

    [ServiceContract]
    public interface IWFCService
    {
        [OperationContract]
        void DoWork();

        [OperationContract]
        Worker GetEmployeesById(int WorkerId);

        [OperationContract]
        List<Worker> GetEmployees();
        
    }


    
}
