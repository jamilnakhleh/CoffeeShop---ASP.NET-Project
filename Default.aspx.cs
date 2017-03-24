using System;
using System.Collections.Generic;
using System.Web;
using System.Linq; 
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Boolean emailF = false, passwordF = false;
    DataSet ds = new DataSet();
    private static string email1, password1, fullName;
    private string adminNum;
    private int i;
    string flag = "true",f1="P";
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void signInbtn_Click(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            signInbtn2.Visible = false;
            
          
             Session["true"] = flag;
             
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            if (TextBox1.Text == null) 
            {
                emailError.Visible = true;
                emailError.Text = "Insert your email please";
                emailError.ForeColor = Color.Red;
            }
            else
            {
                emailError.Visible = false;
                emailF = true;
                email1 = TextBox1.Text;
                try
                {
                    MailAddress flag = new MailAddress(TextBox1.Text);
                }
                catch   
                {
                    emailError.Visible = true;
                    emailError.ForeColor = Color.Red;
                    emailError.Text = "Invalid mail";
                }
            }
            if (TextBox2.Text == null)
            {
                passwordError.Visible = true;
                passwordError.Text = "Insert a password please";
                passwordError.ForeColor = Color.Red;
            }
            else
            {
                passwordError.Visible = false;
                passwordF = true;
                password1 = TextBox2.Text;
            }
            if (emailF && passwordF)
            {
                string email, password;
                string QueryString = string.Format("select * from userTbl");
                //---------
                string dbPath = HttpContext.Current.Server.MapPath("~\\App_Data\\" + "website.mdb");
                //מחרוזת התחברות לקובץ אקסס 2003
                string connectionString = @"Data Source='" + dbPath + "';Provider='Microsoft.Jet.OLEDB.4.0';";
                //יצירת אוביקט התחברות בהתאם למחרות ההתחברות
                OleDbConnection con = new OleDbConnection(connectionString);
                //פתיחת החיבור 
                con.Open();
                //יצירת אוביקט הפקודה להרצת השאילתה עבור החיבור הנתון
                OleDbCommand cmd = new OleDbCommand(QueryString, con);
                //הפעלת הפקודה
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                //הכנסת הנתונים,תוצאת השאילתה,לתוך הדטהסט שבזיכון
                da.Fill(ds, "tbl");
                //סגירת החיבור לדטהביס
                con.Close();
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    email = ds.Tables[0].Rows[i]["email"].ToString();
                    password = ds.Tables[0].Rows[i]["password"].ToString();
                    if (email.Equals(email1) == true && password.Equals(password1) == true)
                    {
                        TextBox1.Visible = false;
                        TextBox2.Visible = false;
                       
                        signInbtn2.Visible = false;
                        fullName = ds.Tables[0].Rows[i]["fname"].ToString() + " ";
                        fullName += ds.Tables[0].Rows[i]["lname"].ToString();
                        title.Text = "Welcome back " + fullName;
                        adminNum = ds.Tables[0].Rows[i]["admin"].ToString();
                        Session["userFullName"] = fullName;
                        Session["roleNumber"] = adminNum;
                        if(email.Equals("mr.nakhle@gmail.com"))
                            Session["p"] = f1;
                        Session["email"] = email1;
                       Session["true"] = flag;
                       Response.Redirect("HomePage.aspx");
                        title.Text = Session["userFullName"].ToString();
                        break;
                    }
                }
                if (i == ds.Tables[0].Rows.Count)
                {
                    title.Text = "This password or email, isn't valid or not exist";
                }
            }
        }
    }
    protected void name_Click(object sender, EventArgs e)
    {

    }
}