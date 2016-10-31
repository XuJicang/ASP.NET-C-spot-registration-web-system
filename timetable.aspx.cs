using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class timetable : System.Web.UI.Page
{
    public void choose(Button o)
    {
        ScriptManager1.RegisterAsyncPostBackControl(this.Button1);
        ScriptManager1.RegisterAsyncPostBackControl(this.Button2);
        timetablelinqDataContext db = new timetablelinqDataContext();
        var results = from r in db.ordertable
                      where r.month.ToString() + "月" + r.day.ToString() + "日" == o.Text.ToString()
                      select r;
        for (int i = 1; i <= 91; i++)
        {
            hoverbutton k = (hoverbutton)this.FindControl("b" + i.ToString());
            k.enabled = true;

        }

        if (results.FirstOrDefault() != null)
        {
            foreach (var r in results)
            {
                int a = r.addressid;
                int d = int.Parse(r.hour.ToString().Substring(0, 2));
                hoverbutton c = (hoverbutton)this.FindControl("b" + ((a - 1) * 13 + d - 7).ToString());
                c.enabled = false;
            }
        }

        Session["date"] = o.Text.ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(IsPostBack)Session["ID"]=((Button)sender).ID;
        if (!IsPostBack)
        {
            this.Button1.Attributes.Add("style", "display:none");
            this.Button2.Attributes.Add("style", "display:none");
            DateTime dt = DateTime.Now;
            int w = (int)dt.DayOfWeek;
            DateTime start = DateTime.Now.AddDays(w == 0 ? w - 6 : -(w - 1));
            titlehover1.Text = start.GetDateTimeFormats('M')[0].ToString();
            titlehover2.Text = start.AddDays(1).GetDateTimeFormats('M')[0].ToString();
            titlehover3.Text = start.AddDays(2).GetDateTimeFormats('M')[0].ToString();
            titlehover4.Text = start.AddDays(3).GetDateTimeFormats('M')[0].ToString();
            titlehover5.Text = start.AddDays(4).GetDateTimeFormats('M')[0].ToString();
            titlehover6.Text = start.AddDays(5).GetDateTimeFormats('M')[0].ToString();
            titlehover7.Text = start.AddDays(6).GetDateTimeFormats('M')[0].ToString();
             Session["date"]=dt.GetDateTimeFormats('M')[0].ToString();
            timetablelinqDataContext db = new timetablelinqDataContext();
            var results2 = (from r in db.ordertable
                            where r.month.ToString() + "月" + r.day.ToString() + "日" == dt.GetDateTimeFormats('M')[0].ToString()
                            select r);
            if (results2 != null)
            {
                foreach (var q in results2)
                {
                    int a = q.addressid;
                    int d = int.Parse(q.hour.ToString().Substring(0, 2));
                    hoverbutton c = (hoverbutton)this.FindControl("b" + ((a - 1) * 13 + d - 7).ToString());
                    c.enabled = false;
                }
            }
        }
    }
    public void Button1_Click(object sender, EventArgs e)
    {
        titlehover1.Text = DateTime.Parse(titlehover1.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        titlehover2.Text = DateTime.Parse(titlehover2.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        titlehover3.Text = DateTime.Parse(titlehover3.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        titlehover4.Text = DateTime.Parse(titlehover4.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        titlehover5.Text = DateTime.Parse(titlehover5.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        titlehover6.Text = DateTime.Parse(titlehover6.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        titlehover7.Text = DateTime.Parse(titlehover7.Text).AddDays(-7).GetDateTimeFormats('M')[0].ToString();
        UpdatePanel1.Update();
    }
    public void Button2_Click(object sender, EventArgs e)
    {
        titlehover1.Text = DateTime.Parse(titlehover1.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        titlehover2.Text = DateTime.Parse(titlehover2.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        titlehover3.Text = DateTime.Parse(titlehover3.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        titlehover4.Text = DateTime.Parse(titlehover4.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        titlehover5.Text = DateTime.Parse(titlehover5.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        titlehover6.Text = DateTime.Parse(titlehover6.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        titlehover7.Text = DateTime.Parse(titlehover7.Text).AddDays(7).GetDateTimeFormats('M')[0].ToString();
        UpdatePanel1.Update();
    }
    protected void titlehover1_Click(object sender, EventArgs e)
    {

        choose(titlehover1);
        //UpdatePanel2.Update();
    }
    protected void titlehover2_Click(object sender, EventArgs e)
    {
        choose(titlehover2);
       // UpdatePanel2.Update();
    }
    protected void titlehover3_Click(object sender, EventArgs e)
    {
        choose(titlehover3);
        //UpdatePanel2.Update();
    }
    protected void titlehover4_Click(object sender, EventArgs e)
    {
        choose(titlehover4);
       // UpdatePanel2.Update();
    }
    protected void titlehover5_Click(object sender, EventArgs e)
    {
        choose(titlehover5);
        //UpdatePanel2.Update();
    }
    protected void titlehover6_Click(object sender, EventArgs e)
    {
        choose(titlehover6);
       // UpdatePanel2.Update();
    }
    protected void titlehover7_Click(object sender, EventArgs e)
    {
        choose(titlehover7);
       // UpdatePanel2.Update();
    }
}