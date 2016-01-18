using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace HelloWebClient
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         //string connectionString = ConfigurationManager.ConnectionStrings["Genius_ConnectionString"].ConnectionString;
         //SqlConnection conn = new SqlConnection( ConfigurationManager.ConnectionStrings["Genius_ConnectionString"].ConnectionString);
       
      //  string url = HttpContext.Current.Request.Url.Host;
         string url = HttpContext.Current.Request.Url.AbsoluteUri;

        



        protected void Page_Load(object sender, EventArgs e)
        {
            //if (conn.State == ConnectionState.Closed)
            //{
            //    conn.Open();
            //}
            //if (!Page.IsPostBack)
            //{
            //   BindData();
            //}
        }
        void BindData()
        {
            try
            {


                //  conn.Open();
                //SqlCommand comm = new SqlCommand("select WebLeadID,Planid,AccountRef,Firstname,Surname,Email,Tel1,DebtLevel,MonthlyPayment,website from cic_HBwebleads Order By WebLeadID DESC ", conn);
                //SqlDataAdapter adp = new SqlDataAdapter(comm);
                //DataSet ds = new DataSet();
                //adp.Fill(ds);
                //grvCustomers.DataSource = ds;
                //grvCustomers.DataBind();
                //comm.Connection.Close();
                //comm.Connection.Dispose();


            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message);
            }
            finally
            {
                //close the database connection
              //  conn.Close();
            }

        }
        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            HelloService.HelloServiceClient cl = new HelloService.HelloServiceClient("BasicHttpBinding_IHelloService");
            cl.UrlIsValid(url);

            HelloService.HelloServiceClient client = new HelloService.HelloServiceClient("BasicHttpBinding_IHelloService");
            Label1.Text = client.ProcessDataAdd(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, url);

            Label8.Text = url;
         //   BindData();
         
        }

        protected void grvCustomers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvCustomers.PageIndex = e.NewPageIndex;
            BindData();
        }

       
     
    }
}