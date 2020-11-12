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
    public partial class passwordrecovery : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkReq_Click(object sender, EventArgs e)
        {
            Reset();
        }

        public void Reset()
        {
            string mail = this.txtMail.Text.ToString();


            string password = Membership.GeneratePassword(8, 1);
            UserProfile userProfile = new UserProfile();
            MembershipUser user;
            user = Membership.GetUser(this.txtMail.Text);
            if (user != null)
            {

                DataTable dtLogin = ObjclsFrms.loadList("SelLoginCredentailsForReset", "sp_Masters", txtMail.Text.ToString());
                if (dtLogin.Rows.Count > 0)
                {
                    user.UnlockUser();
                    string NewPass = user.ResetPassword();

                    string[] arr = { };
                    string svd = ObjclsFrms.SaveData("sp_Masters", "UpdNewUserStatusToNull", Session["UserID"].ToString(), arr);

                    this.ltrlMessage.Text = "Your Password Reset Success, Please login using new password";
                }
                else
                {
                    this.ltrlMessage.Text = UICommon.GetErrorMessage("We are facing some technical issues, please try again later");
                }
            }
            else
            {
                this.ltrlMessage.Text = UICommon.GetErrorMessage("User along with this account not Found");
            }
        }
    }
}