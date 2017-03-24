using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Invitations : System.Web.UI.Page
{
    public static int i = 0;
    public static int h = 0;
    public string QueryString;
    public string dbPath;
    public string coffeeCode,price,price2;
    public string img = "images/";
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label1.Visible = false;
        string QueryString2 = string.Format("select * from userInCoffee");
        //---------
        string dbPath2 = HttpContext.Current.Server.MapPath("~\\App_Data\\" + "website.mdb");
        //מחרוזת התחברות לקובץ אקסס 2003
        string connectionString2 = @"Data Source='" + dbPath2 + "';Provider='Microsoft.Jet.OLEDB.4.0';";
        //יצירת אוביקט התחברות בהתאם למחרות ההתחברות
        OleDbConnection con2 = new OleDbConnection(connectionString2);
        //פתיחת החיבור 
        con2.Open();
        //יצירת אוביקט הפקודה להרצת השאילתה עבור החיבור הנתון
        OleDbCommand cmd2 = new OleDbCommand(QueryString2, con2);
        //הפעלת הפקודה
        OleDbDataAdapter da2 = new OleDbDataAdapter(cmd2);
        //הכנסת הנתונים,תוצאת השאילתה,לתוך הדטהסט שבזיכון
        da2.Fill(ds2, "tbl");
        h = ds2.Tables[0].Rows.Count;
        //סגירת החיבור לדטהביס
        con2.Close();
        //------------------------------------------------------------------------------------------------------------------------------------
        QueryString = string.Format("select * from CoffeeTbl");
        //---------
        dbPath = HttpContext.Current.Server.MapPath("~\\App_Data\\" + "website.mdb");
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
        //הכנסת הנתונים,תוצאת השאילתה,לתוך הדטהסט שבזיכוןx
        da.Fill(ds,"tbl");
        //סגירת החיבור לדטהביס
        con.Close();
        if (i < ds.Tables[0].Rows.Count)
        {
            traImg.ImageUrl = img;
            
            price = ds.Tables[0].Rows[i]["price"].ToString();
            price2 = ds.Tables[0].Rows[i]["price"].ToString();  
            coffeeCode = ds.Tables[0].Rows[i]["coffeeCode"].ToString();
          
            traImg.ImageUrl += ds.Tables[0].Rows[i]["picture"].ToString();

            traPrice.Text = "Price : " + price + "CoffeeCode : " + coffeeCode;
        }
        else
            i = -1;
    }
    protected void ButtonNext_Click(object sender, EventArgs e)
    {
        i = i + 1;
       
    }
    protected void ButtonHazmana_Click(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            string QueryString = string.Format("insert into userInCoffee values({0},'{1}','{2}')",h++,coffeeCode,Session["email"].ToString());
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
            //   cmd.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            //סגירת החיבור לדטהביס
            con.Close();
        }
        else
        {
            Label1.Visible = true;
        }
    }
    protected void ButtonHome_Click(object sender, EventArgs e)
    {

    }

    protected void ButtonChart_Click(object sender, EventArgs e)
    {
       
        gvPeople.DataSource = CreatePeopleList();
        gvPeople.DataBind();
    }

   
    protected void Homebtn_Click(object sender, EventArgs e)
    {
        
    }
    protected void ButtonChartStore_Click1(object sender, EventArgs e)
    {
       
    }
    static List<AddChart> people = new List<AddChart>();
    private List<AddChart> CreatePeopleList()
    {
            people.Add(new AddChart
            {
                code = coffeeCode,
                price = price2
            });
        return people;
    }
    protected void gvPeople_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
        people.Clear();
        Response.Redirect("HomePage.aspx");
    }
}