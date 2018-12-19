using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;
using System.IO;
using System.Diagnostics;
namespace MasterPages
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                 
            
        }

       
        private void CreateFile()
        {
            using(FileStream file = File.Create("myFile.txt"))
            {
                using(StreamWriter writer = new StreamWriter(file))
                {
                    List<string> People = GenerateName(10000);
                    foreach (string person in People)
                    {
                        writer.WriteLine(person);
                    }
                }
            }
        }

        private void ReadFileDinamically()
        {
            using(FileStream file = File.Open("myFile.txt", FileMode.Open))
            {
                using(StreamReader reader = new StreamReader(file))
                {
                    string myFile = reader.ReadToEnd();
                }
            }
        }

        private void ReadFileWithCach()
        {

        }

        private List<string> GenerateName(int NamesNumber)
        {
            string[] Names = { "Johana", "Kimberly", "Kim", "Guty", "Stephany", "Jhon", "Andrew", "Sina" };
            string[] LastNames = { "Jhonson", "Jordan", "Mcarney", "McDonal", "Mcdawell", "Jersey" };

            List<string> NamesList = new List<string>();
            Random ran = new Random();
            int NamesLength = 0;
            int LastNamesLength = 0;

            for (int i = 0; i < NamesNumber; i++)
            {
                NamesList.Add(Names[ran.Next(0, NamesLength - 1)] + " " + LastNames[ran.Next(0, LastNamesLength - 1)]);
            }

            return NamesList;
        }

        protected void btnInserting_Click(object sender, EventArgs e)
        {
            //setting a dependency
            Cache.Insert("myFile", File.ReadAllText("myFile.txt"), new CacheDependency(Server.MapPath("myFile.txt")));

            //just you need to catch
            Cache.Insert("myFile1", File.ReadAllText("myFile.txt"));

            //also you can use
            Cache.Add("myFile2", File.ReadAllText("myFile.txt"), null, Cache.NoAbsoluteExpiration, Cache.NoSlidingExpiration, CacheItemPriority.Default, null);

        }

        protected void btnCache_Click(object sender, EventArgs e)
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            string myFile = (string)Cache["myFile"];
            watch.Stop();
            lblElapsedTime.Text = "The elapsed time is: " + watch.ElapsedTicks;
        }

        protected void btnDinamically_Click(object sender, EventArgs e)
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
        
        ReadFileDinamically();
            watch.Stop();

            lblElapsedTime.Text = "The elapsed time is: " + watch.ElapsedTicks;

        }
    }
}