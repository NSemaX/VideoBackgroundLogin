using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        bool IsValid = false;
        if(UserName.Text.Count()>0 && Password.Text.Count()>0)
        {
            try
            {
                //Şifre kullanıcı adı kontrolü işlemleri...
                if (UserName.Text == "sampleuser@hotmail.com" && Password.Text=="2015")
                {
                    lblAlert_Text.Visible = false;
                    IsValid = true;
                }

               
            }
            catch (Exception ex)
            {
                lblAlert_Text.Visible = true;
                lblAlert_Text.Text = "Sistemde bir hata oluştu daha sonra tekrar deneyiniz.";      
            }

            if (!IsValid)
            {
                lblAlert_Text.Visible = true;
                lblAlert_Text.Text="Yanlış kullanıcı adı ve şifre.";                
                return;
            }
            else
                Response.Redirect("~/Default.aspx");
        }
        else
        {
            lblAlert_Text.Visible = true;
            lblAlert_Text.Text = "Kullanıcı adı ve şifre alanlarını doldurunuz.";      
        }

    }
}