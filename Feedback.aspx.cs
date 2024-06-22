using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtname.Focus();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = txtname.Text;
        string email = txtemail.Text;
        string subject = txtsubject.Text;
        string Comments = txtcomment.Text;

        try
        {
            SendEmailToAdmin(name, email, subject, Comments);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "thank you", "alert('Comments send successfully')",true);
            lblStatus.ForeColor = System.Drawing.Color.Aqua;
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Error sending message: " + ex.Message;
        }
    }

    private void SendEmailToAdmin(string name, string email, string subject, string comments)
    {
        string adminEmail = "sivasankaric2022@gmail.com"; // Replace with the admin's email address
        string smtpServer = "smtp.gmail.com"; // Replace with your SMTP server address
        int smtpPort = 587; // Replace with your SMTP server port
        string smtpUser = "sivasankaric2022@gmail.com"; // Replace with your SMTP username
        string smtpPass = "gcca pgal kcsw bbve"; // Replace with your SMTP password

        using (MailMessage mail = new MailMessage())
        {
            mail.From = new MailAddress(email);
            mail.To.Add(adminEmail);
            mail.Subject = subject;
            mail.Body = $"Name: {name}\nEmail: {email}\n\ncomments:\n{comments}";

            using (SmtpClient smtp = new SmtpClient(smtpServer, smtpPort))
            {
                smtp.Credentials = new NetworkCredential(smtpUser, smtpPass);
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
        }




    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MenuList.aspx");
    }
}
   
    



     