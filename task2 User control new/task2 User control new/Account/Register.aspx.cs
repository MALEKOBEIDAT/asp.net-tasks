using System; 
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using task2_User_control_new.Models;

namespace task2_User_control_new.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            //IdentityResult result = manager.Create(user, Password.Text);
            //if (result.Succeeded)
            //{
            //    // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
            //    //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

            //    signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
            //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);


            var M = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(M);
            conn.Open();
            Guid G = Guid.NewGuid();//Genreat increbted ID 
            SqlCommand comm = new SqlCommand($"insert into AspNetUsers values('{G}','{Email.Text}',0,'AKGwNuAAbaHljPyhvKmOcO66D9XeDprDQ60e7CxtDPyAfdzDTlfF2xEDCpyA0nAB9A==','AIa5VYrpJy2KqO29U','',0,0,1,1,0,'{Email.Text}')",conn);
            comm.ExecuteNonQuery();
            SqlCommand coom2 = new SqlCommand($"insert into AspNetUserRoles values ('{G}',{RadioButtonList1.SelectedValue} )", conn);
            coom2.ExecuteNonQuery();
            conn.Close();









        }


    }
}