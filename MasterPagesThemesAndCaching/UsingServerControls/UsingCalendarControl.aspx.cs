using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingServerControls
{
    public partial class UsingCalendarControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddSchedule();
        }
        private void AddSchedule()
        {
            Dictionary<DateTime, string> mySchedule = new Dictionary<DateTime, string>();

            mySchedule.Add(new DateTime(2018, 12, 18), "Today");
            mySchedule.Add(new DateTime(2018, 12, 19), "Tomorrow");
            mySchedule.Add(new DateTime(2018, 12, 20), "20");
            mySchedule.Add(new DateTime(2018, 12, 21), "21");
            mySchedule.Add(new DateTime(2018, 12, 22), "22");
            mySchedule.Add(new DateTime(2018, 12, 23), "23");
            mySchedule.Add(new DateTime(2018, 12, 24), "Chrismas Eve");
            mySchedule.Add(new DateTime(2018, 12, 25), "Chrismas");


            Calendar1.Caption = "My Schedule";
            Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
            Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;
            Calendar1.TitleFormat = TitleFormat.MonthYear;
            Calendar1.ShowGridLines = true;
            Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Left;
            Calendar1.DayStyle.VerticalAlign = VerticalAlign.Top;
            Calendar1.DayStyle.Height = new Unit(75);
            Calendar1.DayStyle.Width = new Unit(100);
            Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.Cornsilk;
            Calendar1.TodaysDate = DateTime.Now;
            Calendar1.VisibleDate = Calendar1.TodaysDate;

            Calendar1.DayRender += (sender, e) =>
            {
                if (mySchedule.ContainsKey(e.Day.Date))
                {
                    Literal myLit = new Literal();
                    myLit.Text = "<br/>";
                    e.Cell.Controls.Add(myLit);

                    Label myLabel = new Label();
                    myLabel.Text = mySchedule[e.Day.Date];
                    e.Cell.Controls.Add(myLabel);
                }
            };

            Calendar1.SelectionChanged += (sender, e) =>
            {
                string script = @"<script> alert("" Day Selection has changed"") </script>";
                Response.Write(script);
            };

            Calendar1.VisibleMonthChanged += (sender, e) =>
            {
                string script = @"<script> alert("" Month Selection has changed"") </script>";
                Response.Write(script);
            };
        }
    }
}