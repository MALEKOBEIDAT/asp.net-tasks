using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_1_2022_tasks
{
    public partial class one : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                if (DropDownList1.SelectedValue == "-1")
                {
                  Panel1.Visible = false;
                Panel2.Visible = false;


                }



                
            
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == "0")
            {
                Panel1.Visible=true;
                Panel2.Visible=false;
            }

            else if(DropDownList1.SelectedValue=="1")
            {
                Panel1.Visible=false;
                Panel2.Visible=true;
            }

          

          
        }
    }
}