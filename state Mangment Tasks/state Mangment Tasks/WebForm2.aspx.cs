using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace state_Mangment_Tasks
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            HttpCookie rc = Request.Cookies["cookfilee"];

            Response.Write("UserName Is " + rc["UserName"]+ "and Your PAssword Is "+ rc["Password"]);


        }
    }
}