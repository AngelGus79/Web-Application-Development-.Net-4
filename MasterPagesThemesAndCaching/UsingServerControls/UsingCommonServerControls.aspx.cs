using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingCommonServerControls : System.Web.UI.Page
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            Button button1 = new Button();
            Button button2 = new Button();
            Button button3 = new Button();

            button1.Text = "Red";
            button2.Text = "Blue";
            button3.Text = "Black";

            EventHandler event_click = new EventHandler((s, ev) => 
            {
                Button btnColor = (Button)s;
                switch (btnColor.Text)
                {
                    case "Red":
                        Response.Write(@"<script> alert(""Red"")</script>");
                        break;
                    case "Blue":
                        Response.Write(@"<script> alert(""Blue"")</script>");
                        break;
                    case "Black":
                        Response.Write(@"<script> alert(""Black"")</script>");
                        break;
                }

            });
            button1.Click += event_click;
            button2.Click += event_click;
            button3.Click += event_click;

            Panel1.Controls.Add(button1);
            Panel1.Controls.Add(button2);
            Panel1.Controls.Add(button3);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void Unnamed5_SelectedIndexChanged(object sender, EventArgs e)
        {
            RadioButtonList RadioButtonColors = (RadioButtonList)sender;

            switch (RadioButtonColors.SelectedItem.Value)
            {
                case "0":
                    Response.Write(@"<script> alert(""red"") </script>");
                    break;
                case "1":
                    Response.Write(@"<script> alert(""blue"") </script>");
                    break;
                case "2":
                    Response.Write(@"<script> alert(""black"") </script>");
                    break;
            }



        }

        protected void Unnamed3_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton myButton = (RadioButton)sender;

            switch (myButton.ID)
            {
                case "rbSmall":
                    Response.Write(@"<script> alert(""small"")</script>");
                    break;
                case "rbMedium":
                    Response.Write(@"<script> alert(""Medium"")</script>");
                    break;
                case "rbLarge":
                    Response.Write(@"<script> alert(""Large"")</script>");
                    break;
            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            //print html and execute the script
            LiteralPassThrough.Text = @"<h1> PassThrough</h1> <script>alert("" This is a alert message of literal passthrough"")</script>";
            LiteralPassThrough.Mode = LiteralMode.PassThrough;

            //do es not print anything
            LiteralEncode.Text = @"<h1> Encode</h1><script>alert("" This is a alert message of literal encode"")<script>"; ;
            LiteralEncode.Mode = LiteralMode.Encode;

            //print html and remove script
            LiteralTransform.Text = @"<h1> Transform</h1><script>alert("" This is a alert message of literal transform"")<script>"; ;
            LiteralTransform.Mode = LiteralMode.Transform;
        }
    }
}