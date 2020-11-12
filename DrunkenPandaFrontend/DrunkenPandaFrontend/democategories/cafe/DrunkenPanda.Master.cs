using DrunkenPandaFrontend.democategories.cafe.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaFrontend.democategories.cafe
{
    public partial class DrunkenPanda : System.Web.UI.MasterPage
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserID"] as string))
                {
                    pnlIn.Visible = false;
                    pnlOut.Visible = true;
                }
                else
                {
                    pnlIn.Visible = true;
                    pnlOut.Visible = false;
                }
            }
        }

        protected void lnkIn_Click(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Response.Redirect("../../index.aspx");
        }
    }
}