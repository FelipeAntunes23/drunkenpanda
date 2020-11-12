using DrunkenPandaFrontend.democategories.cafe.Admin;
using Ecosoft.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaFrontend.democategories.cafe
{
    public partial class login : System.Web.UI.Page
    {
        General ObjGeneral = new General();
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = null;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string mail = txtEmail.Text.ToString();

                DataTable lstData = default(DataTable);
                lstData = ObjclsFrms.loadList("CheckCustomerMailExist", "sp_Masters", mail.ToString());
                if (lstData.Rows.Count > 0)
                {
                    ltrlMessage.Visible = true;
                    ltrlMessage.Text = "Username already exists.";
                }
                else
                {
                    Save();
                    Response.Redirect("order.aspx");
                }
            }
            catch(Exception ex)
            {
                String innerMessage = (ex.InnerException != null) ? ex.InnerException.Message : "";
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "login.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }

        public void Save()
        {
            string fName, lName, email, password;
            fName = txtFirstName.Text.ToString();
            lName = txtLastName.Text.ToString();
            email = txtEmail.Text.ToString();
            password = txtPassword.Text.ToString();
            //string mode = "I";

            string[] arr = { lName.ToString(), email.ToString(), password.ToString() };
            DataTable lstData = default(DataTable);
            lstData = ObjclsFrms.loadList("SignUpCustomer", "sp_Masters", fName.ToString(), arr);
            if (lstData.Rows.Count > 0)
            {
                string id = lstData.Rows[0]["sliderID"].ToString();
                Session["UserID"] = id.ToString();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                LoginUser();
            }
            catch(Exception ex)
            {
                String innerMessage = (ex.InnerException != null) ? ex.InnerException.Message : "";
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "login.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }

        public void LoginUser()
        {
            string username, password;
            username = UserName.Text.ToString();
            password = Password.Text.ToString();

            DataTable lstData = default(DataTable);
            lstData = ObjclsFrms.loadList("SelectCustomerLogin", "sp_Masters", username.ToString());
            if (lstData.Rows.Count > 0)
            {
                string pass = lstData.Rows[0]["cus_Password"].ToString();
                string id = lstData.Rows[0]["cus_ID"].ToString();

                if (String.Compare(password, pass) == 0)
                {
                    Session["UserID"] = id.ToString();
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Incorrect Username or Password.";
                }
            }
            Response.Redirect("order.aspx");
        }
    }
}