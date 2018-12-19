using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Web.Caching;
namespace MasterPages
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Cache["people"] = getPeople(1000);

        }

        private List<string> getPeople(int NumPeople)
        {
            string[] Names = { "Johana", "Kimberly", "Kim", "Guty", "Stephany", "Jhon", "Andrew", "Sina" };
            string[] LastNames = { "Jhonson", "Jordan", "Mcarney", "McDonal", "Mcdawell","Jersey"};

            List<string> People = new List<string>();
            Random ran = new Random();
            int lengthName = Names.Length;
            int lengthLastName = LastNames.Length;

            for (int i = 0; i < NumPeople; i++)
            {
                People.Add(Names[ran.Next(0,lengthName-1)] + " " + LastNames[ran.Next(0, lengthLastName - 1)]);
            }

            return People;

        }

        protected void Dinamic_Click(object sender, EventArgs e)
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            List<string> People = getPeople(1000);
            AddPeopleInListBox(People);
            watch.Stop();

            lblElapsedTime.Text = watch.ElapsedTicks.ToString();

        }

        private void AddPeopleInListBox(List<string> People)
        {
            foreach (var person in People)
            {
                ListBoxPeople.Items.Add(person);
            }
        }

        protected void btnCache_Click(object sender, EventArgs e)
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            List<string> People = (List<string>)Cache["people"];
            AddPeopleInListBox(People);
            watch.Stop();

            lblElapsedTime.Text = watch.ElapsedTicks.ToString();
        }
    }
}