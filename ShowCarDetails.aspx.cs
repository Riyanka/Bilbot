using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BilBot
{
    public partial class ShowCarDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fuel.Text = Request.QueryString["fuel"];
            style.Text= Request.QueryString["style"];
            TextSize.Text = Request.QueryString["size"];
            purpose.Text = Request.QueryString["purpose"];
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string query = "Select   car_company, car_model, car_style,car_purpose, car_fuel,car_size, car_price,car_topspeed,car_imageurl from cardetails_tbl where car_fuel = '" + Convert.ToString(fuel.Text) + "' and  car_style = '" + Convert.ToString(style.Text) + "' and car_size = '" + Convert.ToString(TextSize.Text) + "' and car_purpose = '" + Convert.ToString(purpose.Text) + "'  ";
            con.Open();
            SqlCommand comm = new SqlCommand(query, con);
            //SqlDataAdapter d = new SqlDataAdapter(query, con); 
            SqlDataReader Dr = comm.ExecuteReader();
            if (!Dr.Read())
            {
                Label1.Visible = true;
                Image1.Visible = true;
                
            }
            else
            {
                GridView1.DataSource = Dr;
                GridView1.DataBind();
                Dr.Close();
                con.Close();
            }
            }
        protected void Button1_Click(object sender, EventArgs e)
        {
        }
    }
}