using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ordersubmit : System.Web.UI.Page
{
     int q = 1;
     double sum = 0.0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = String.Format("{0:F}", sum);
        }//if     
        timetablelinqDataContext db = new timetablelinqDataContext();
        var results = (from r in db.ordertable
                       where r.customerid.ToString() ==Session["customerid"].ToString()
                       select r);
        if (results.FirstOrDefault() != null)
        {
            foreach (var r in results)
            {
                Panel pn = new Panel();
                pn.ID = "pn" + q.ToString();
                CheckBox rb = new CheckBox();
                rb.AutoPostBack = true;
                rb.ID = "rb" + q.ToString();
                Label lb = new Label();
                lb.ID = "lb" + q.ToString();
                String str;
                str = r.address.ToString() + " " + r.month.ToString() + "月" + r.day.ToString() + "日" + " " + r.hour.ToString() + "点";//修改
                lb.Text = str + "<br/>";
                pn.Controls.Add(rb);
                pn.Controls.Add(lb);
                Panel1.Controls.Add(pn);
                //Response.Write("<div =\"showMessage\"><asp:RadioButton ID=\"rb\" runat=\"server\" /><asp:Label ID=\"lb\" runat=\"server\"></asp:Label></div><br/>");
                q++;
            }//foreach
        }//if
           
        }//pageload
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        for (int s = 1; s < q; s++)
        {
            CheckBox a = (CheckBox)this.FindControl("rb" + s.ToString());
            a.Checked = allcheck.Checked;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/timetable.aspx");//跳转页面
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["pay"] = Label1.Text.ToString();

        for (int i = 1; i < q; i++)
        {
            CheckBox a = (CheckBox)this.FindControl("rb" + i.ToString());
            if (a.Checked == true)
            {
                Label l = (Label)a.Parent.FindControl("lb" + i.ToString());
                Session["orderdetail"] = Session["orderdetail"] + "【" + l.Text.ToString() + "】";
            }
        }
        Response.Redirect("~/SubmitPayPage.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 1; i < q; i++)
        {
            CheckBox a = (CheckBox)this.FindControl("rb" + i.ToString());
            if (a.Checked == true)
            {
                Label l = (Label)a.Parent.FindControl("lb" + i.ToString());
                String lbstr = l.Text;
                String addr = "";
                String tm = "";
                int j = 0;
                for (; lbstr[j] != ' '; j++)
                {
                    addr = addr + lbstr[j].ToString();
                }
                j++;
                for(;lbstr[j]!=' ';j++){}
                j++;
                for (; lbstr[j] != '点'; j++)
                {
                   
                        tm = tm + lbstr[j].ToString();
                    
                    
                }
                timetablelinqDataContext db1 = new timetablelinqDataContext();
                var results2 = (from s in db1.PRICE
                                join b in db1.ordertable on s.addressid equals b.addressid
                                where b.address.ToString() == addr && s.time.ToString() == tm
                                select s.price1).FirstOrDefault();
                sum = sum + Convert.ToDouble(results2);
            }//if
        }//for
        Label1.Text = String.Format("{0:F}", sum);
        Session["pay"] = Label1.Text;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 1; i < q; i++)
        {
            CheckBox a = (CheckBox)this.FindControl("rb" + i.ToString());
            if (a.Checked == true)
            {
                Label l = (Label)a.Parent.FindControl("lb" + i.ToString());
                String lbstr = l.Text;
                String addr = "";
                String tm = "";
                int j = 0;
                for (; lbstr[j] != ' '; j++)
                {
                    addr = addr + lbstr[j].ToString();
                }
                j++;
                for (; lbstr[j] != ' '; j++) { }
                j++;
                for (; lbstr[j] != '点'; j++)
                {

                    tm = tm + lbstr[j].ToString();


                }
                timetablelinqDataContext db3 = new timetablelinqDataContext();
                var results3 = from t in db3.ordertable
                               where t.customerid.ToString() == Session["customerid"].ToString() && t.address.ToString() == addr && t.hour.ToString() == tm.ToString()
                               select t;
                /*Session["customerid"].ToString()*/
                if (results3.FirstOrDefault() != null)
                {
                    db3.ordertable.DeleteAllOnSubmit(results3);
                    db3.SubmitChanges();
                }
            }
        }
        Response.Redirect("~/ordersubmit.aspx");

    }
}