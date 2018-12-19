using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            if (myFileUpload.HasFile)
            {
                myLiteral.Text = string.Format("Size: {0} <br/>File Name: {1}<br/>MIME Type: {2} ", myFileUpload.FileBytes.Length, myFileUpload.FileName, myFileUpload.PostedFile.ContentType);
                myFileUpload.SaveAs(MapPath("~/"+ myFileUpload.FileName));
            }
            else
                myLiteral.Text = string.Format("<h5> File was not uploaded </h5> ", myFileUpload.FileBytes.Length, myFileUpload.FileName, myFileUpload.PostedFile.ContentType);
        }
    }
}