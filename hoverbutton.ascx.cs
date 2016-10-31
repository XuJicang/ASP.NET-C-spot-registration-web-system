using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hoverbutton : System.Web.UI.UserControl
{
    private String Addr;
    public int addrreflect(String a)
    {
        if(a=="篮球馆")return 1;
        if(a=="游泳馆")return 2;
        if(a=="健身房")return 3;
        if(a=="羽毛球馆")return 4;
        if(a=="足球场")return 5;
        if(a=="网球场")return 6;
        if (a == "舞蹈练功房") return 7;
        else return 0;
    }
    public string addr
    {
        get { return Addr; }
        set { Addr = value; }
    }
    public string Text
    {
        get { return this.Button1.Text; }
        set { this.Button1.Text = value; }
    }

    public bool enabled
    {
        get { return this.Button1.Enabled; }
        set { 
            this.Button1.Enabled = value;
            setcss();
        }
    }
    private void setcss(){

    } 
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        timetablelinqDataContext db2 = new timetablelinqDataContext();
        ordertable add = new ordertable();
        //add.day=DateTime.ParseExact(Session["date"], "MM月dd日", System.Globalization.CultureInfo.InvariantCulture).Day;
        //add.month=DateTime.ParseExact(Session["date"], "MM月dd日", System.Globalization.CultureInfo.InvariantCulture).Month;
        add.customerid = int.Parse(Session["customerid"].ToString()); 
            //Session["yonghu"];
        add.year =int.Parse(DateTime.Now.Year.ToString());
        add.day=(int)DateTime.Parse(Session["date"].ToString()).Day;
        add.month = (int)DateTime.Parse(Session["date"].ToString()).Month;
        add.address= Addr.ToString();
        add.addressid = addrreflect(Addr);
        add.hour = int.Parse(Button1.Text.ToString().Substring(0, Button1.Text.ToString().IndexOf(":")));
        db2.ordertable.InsertOnSubmit(add);
        db2.SubmitChanges();
        Response.Redirect("~/ordersubmit.aspx");//跳转页面
        
    }
}