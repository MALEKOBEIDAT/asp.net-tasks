using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace state_Mangment_Tasks
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["cookfilee"] !=null)
            {

                TextBox1.Text = Request.Cookies["cookfilee"]["UserName"];
                TextBox2.Text = Request.Cookies["cookfilee"]["Password"];

            }

            else
            {
                Response.Write("s");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                HttpCookie cook = new HttpCookie("cookfilee");
                cook["UserName"] = TextBox1.Text;
                cook["Password"] = TextBox2.Text;
                cook.Expires=DateTime.Now. AddSeconds(10);
                Response.Cookies.Add(cook);
                Response.Redirect("WebForm2.aspx");
    


            }

            
        }
    }
}