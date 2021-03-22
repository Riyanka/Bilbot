using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BilBot
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        

        protected void Button2_Click(object sender, EventArgs e)
        {
           

            
            string url;
            url = "ShowCarDetails.aspx?fuel=" + TextBox1.Text + "&style=" + TextBox2.Text + "&size=" + TextBox3.Text + "&purpose=" + TextBox4.Text;
            Response.Redirect(url);
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}