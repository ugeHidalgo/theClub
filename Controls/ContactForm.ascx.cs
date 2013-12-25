using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(txbxPhone.Text)  )      
            args.IsValid=true;
        else 
            args.IsValid=false;
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/APP_Data/ContactForm.txt");
            string mailBody = File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", txbxName.Text);
            mailBody = mailBody.Replace("##Email##", txbxMail.Text);
            mailBody = mailBody.Replace("##Phone##", txbxPhone.Text);
            mailBody = mailBody.Replace("##Comments##", txbxComents.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Comentario en el Web Site";
            myMessage.Body = mailBody;
            myMessage.From = new MailAddress("ugehidalgo@hotmail.com", "Uge Pruebas");
            myMessage.To.Add(new MailAddress("ugehidalgo@hotmail.com", "Eugenio"));
            myMessage.ReplyToList.Add(new MailAddress(txbxMail.Text));
            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);

            laMessageSent.Visible=true;
            MessageSentPara.Visible = true;
            FormTable.Visible = false;
        }
    }
}