﻿using DrunkenPandaBackend.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaBackend
{
    public partial class ActivateAccount : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnSucc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            MembershipUser user;
            user = Membership.GetUser(Session["UserName"].ToString());
            Boolean isSucess = user.ChangePassword(oldPassword.Text, newPass.Text);
            if (isSucess)
            {
                string[] arr = { newPass.Text.ToString() };
                string svd = ObjclsFrms.SaveData("sp_Masters", "UpdNewUserStatus", Session["UserID"].ToString() , arr);
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>SuccessModal('Password Change Successfull, Please Login with new password');</script>", false);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>SuccessModal('Please check the old password is correct or not');</script>", false);
            }
        }
    }
}