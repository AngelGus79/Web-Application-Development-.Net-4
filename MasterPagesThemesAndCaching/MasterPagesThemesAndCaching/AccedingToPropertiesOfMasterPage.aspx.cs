using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_Pages__Themes_and_Caching
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //you can implement caching by code

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {

            //changing a public property of master page from content page
            Master.myProperty = txtProperty.Text;

            
            //Changing a master control from content page by encapsulation of control
            Label lblAge = Master.Age;
            lblAge.Text = txtAge.Text;

            //Changing a master control from content page with FindControl method
            Label myLabel = (Label)Master.FindControl("lblName");
            myLabel.Text = txtName.Text;

        }

        protected void Switch_Click(object sender, EventArgs e)
        {
            if(Session["masterpage"] != null)
                if((string)Session["masterpage"]== "~/Main2.Master")
                    Session["masterpage"] = "~/Main.Master";
                else
                    Session["masterpage"] = "~/Main2.Master";
            else
                Session["masterpage"] = "~/Main2.Master";

            Response.Redirect(Request.Url.ToString());

            //after this code you shoul write a code snippet in Page_PreInit in the content page
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["masterpage"] != null)
                MasterPageFile = (string)Session["masterpage"];

            //MasterPageFile is the property in charge of setting the Master Page File
        }
    }
}