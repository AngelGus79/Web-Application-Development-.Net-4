using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandlingEventsAndManagingStates
{
    public partial class CreatingControlsDinamically : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            //creating dinamically a label
            Label myLabel = new Label();

            Button myButton = new Button();

            TextBox myTextBox = new TextBox();

            //setting the properties

            myLabel.ID = "myLabel";
            myLabel.Text = "Name:";


            myButton.ID = "myButton";
            myButton.Text = "Accept";
            myButton.Click += new System.EventHandler(myButton_Click);


            myTextBox.ID = "myTextBox";

            //adding the controls to the panel
            Panel1.Controls.Add(myLabel);
            Panel1.Controls.Add(myButton);
            Panel1.Controls.Add(myTextBox);


        }

        private void myButton_Click(object sender, EventArgs e)
        {
            Button myButtonXX = (Button)sender;
            myButtonXX.Text = "Ok";

            Label myLabelXX = (Label)FindControl("myLabel");

            TextBox myTextXX = (TextBox)FindControl("myTextBox");

            myLabelXX.Text = string.Format("this is a new message {0}", myTextXX.Text);
        }
    }
}