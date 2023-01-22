using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity_Task
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        EntityEntities db = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var x = from City in db.Cities select City;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "cityName";
                DropDownList1.DataValueField = "cityID";
                DropDownList1.DataBind();


                lblNum.Text= (from item in db.Customers select item).Count().ToString();
                lblAvg.Text = (from item in db.Customers select item.Age).Average().ToString();
                lblMax.Text = (from item in db.Customers select item.Age).Max().ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer insertTest = new Customer();

            City insertCity = new City();


            insertTest.City = int.Parse(DropDownList1.SelectedValue);

            insertTest.customerName = name.Text;

            insertTest.Age = Convert.ToInt32(Agee.Text);
            insertTest.Phone = Convert.ToInt32(phone.Text);

            insertTest.Email = email.Text;
            string image = "";
            if (FileUpload2.HasFile)
            {
                image = "/img/" + FileUpload2.FileName;
                FileUpload2.SaveAs(Server.MapPath("/img/") + FileUpload2.FileName);
            }
            insertTest.Photo = image;
            db.Customers.Add(insertTest);

            


            db.Customers.Add(insertTest);
            db.SaveChanges();





            //insertTest.cityID = guid.ToString();

            //insertTest.cityName = Convert.ToInt32(DropDownList1.SelectedValue);
            //insertTest.Email = Email.Text;
            //insertTest.city_id = Convert.ToInt32(DropDownList1.SelectedValue);
            //db.AspNetUsers.Add(insertTest);
            //db.SaveChanges();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            var c = db.Customers.ToList();


            var items = (from item in c join ct in db.Cities on item.City equals ct.cityID
                        where item.customerName.Contains(name) 

                         select new
                        {
                            item.customerName,
                            item.Age,
                            ct.cityName,
                            item.Email,
                            item.Phone,
                            item.Photo
                        }).ToList();



            GridView1.DataSource = items;

            GridView1.DataBind();
        }
    }
}