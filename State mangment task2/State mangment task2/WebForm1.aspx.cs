using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_mangment_task2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            Label1.Text = DateTime.Now.ToString();
            if(Request.Cookies ["cookfilee"] != null)
            {

                HttpCookie cook1 = Request.Cookies["cookfilee"];


                string co = cook1["color"];
                Label1.ForeColor = System.Drawing.Color.FromName(co);

            }

          

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie cook = new HttpCookie("cookfilee");
            cook["color"] = DropDownList1.SelectedValue;
            cook.Expires = DateTime.Now.AddSeconds(5);
            Response.Cookies.Add(cook);

            string co = cook["color"];
            Label1.ForeColor = System.Drawing.Color.FromName(co);




        }
    }
}