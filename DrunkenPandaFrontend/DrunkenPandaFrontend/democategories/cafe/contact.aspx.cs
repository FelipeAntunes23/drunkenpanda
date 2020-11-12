using DrunkenPandaFrontend.democategories.cafe.Admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaFrontend.democategories.cafe
{
    public partial class contact : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ltrlMessage.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Sends();
            }
            catch(Exception ex)
            {
                String innerMessage = (ex.InnerException != null) ? ex.InnerException.Message : "";
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "contact.aspx btnSave_Click()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }
        public void Sends()
        {
            string name, email, mobile, comment;
            name = txtName.Text.ToString();
            email = txtEmail.Text.ToString();
            mobile = txtMobile.Text.ToString();
            comment = txtMessage.Text.ToString();

            string[] arr = { email.ToString(), mobile.ToString(), comment.ToString() };
            DataTable lstContact = ObjclsFrms.loadList("InsertContact", "sp_Masters", name.ToString(), arr);
            if (lstContact.Rows.Count > 0)
            {
                ltrlMessage.Visible = true;
                ltrlMessage.Text = "Your message has been sent successfully.";
                txtName.Text = "";
                txtEmail.Text = "";
                txtMobile.Text = "";
                txtMessage.Text = "";
            }
            else
            {
                ltrlMessage.Visible = true;
                ltrlMessage.Text = "Oops..! Something went wrong, Please try again later.";
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SendTestimonial();
            }
            catch (Exception ex)
            {
                String innerMessage = (ex.InnerException != null) ? ex.InnerException.Message : "";
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "contact.aspx btnSend_Click()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }
        public void SendTestimonial()
        {
            string names, emails, mobiles, comments, highlight;
            names = txtNames.Text.ToString();
            emails = txtEmails.Text.ToString();
            mobiles = txtMobiles.Text.ToString();
            comments = txtMessages.Text.ToString();
            highlight = "N";

            string[] arr = { emails.ToString(), mobiles.ToString(), comments.ToString(), highlight.ToString() };
            DataTable lstContact = ObjclsFrms.loadList("InsertTestimonials", "sp_Masters", names.ToString(), arr);
            if (lstContact.Rows.Count > 0)
            {
                Literal1.Visible = true;
                Literal1.Text = "Your message has been sent successfully.";
                txtNames.Text = "";
                txtEmails.Text = "";
                txtMobiles.Text = "";
                txtMessages.Text = "";
            }
            else
            {
                Literal1.Visible = true;
                Literal1.Text = "Oops..! Something went wrong, Please try again later.";
            }
        }
    }
}