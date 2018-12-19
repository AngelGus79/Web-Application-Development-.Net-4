using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingEspecializedServerControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            myTable.BorderStyle = BorderStyle.Solid;

            for (int r = 0; r < 10; r++)
            {
                TableRow row = new TableRow();
                for (int c = 0; c < 5; c++)
                {
                    TableCell cell = new TableCell();
                    cell.Text = string.Format("r{0} c{1}",r,c);
                    row.Cells.Add(cell);
                }
                myTable.Rows.Add(row);
            }
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "https://i.pinimg.com/originals/69/d5/fe/69d5fed4b68abeb9873bb1a45c4acbb4.jpg";


            Image1.DescriptionUrl = "https://www.pinterest.com.mx/pin/473089135848260886/";

            //if the image is not charged, this text appears
            //it generates an <img> tag
            Image1.AlternateText = "This is an alternative text if image is not available";

            //this control has a click event, and the coordinates where were clicked can be fetch
            //it generates an <input type="image"> tag
            myImagenButton.ImageUrl = "https://i.pinimg.com/originals/69/d5/fe/69d5fed4b68abeb9873bb1a45c4acbb4.jpg"; ;
        }

        protected void myImagenButton_Click(object sender, ImageClickEventArgs e)
        {
            string script = string.Format(@"<script>alert(""x = {0}, y = {1}"") </script>",e.X,e.Y);
            Response.Write(script);
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            myImageMap.ImageUrl = "https://i.pinimg.com/originals/69/d5/fe/69d5fed4b68abeb9873bb1a45c4acbb4.jpg"; ;
            myImageMap.HotSpotMode = HotSpotMode.PostBack;
            myImageMap.AlternateText = "Image is not available";

            RectangleHotSpot hs1 = new RectangleHotSpot();
            hs1.Top = 0;
            hs1.Bottom = 100;
            hs1.Left = 0;
            hs1.Right = 100;
            hs1.PostBackValue = "up";

            myImageMap.HotSpots.Add(hs1);

            RectangleHotSpot hs2 = new RectangleHotSpot();
            hs2.Top = 101;
            hs2.Bottom = 200;
            hs2.Left = 0;
            hs2.Right = 100;
            hs2.PostBackValue = "middle";

            myImageMap.HotSpots.Add(hs2);

            RectangleHotSpot hs3 = new RectangleHotSpot();
            hs3.Top = 201;
            hs3.Bottom = 300;
            hs3.Left = 0;
            hs3.Right = 100;
            hs3.PostBackValue = "down";

            myImageMap.HotSpots.Add(hs3);
        }

        protected void myImageMap_Click(object sender, ImageMapEventArgs e)
        {
            string script = string.Format(@"<script>alert(""{0}"") </script>", e.PostBackValue);

            Response.Write(script);
        }
    }
}