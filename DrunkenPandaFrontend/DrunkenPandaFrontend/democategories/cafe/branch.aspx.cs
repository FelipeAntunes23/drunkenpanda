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
    public partial class branch : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Branch();
            }
        }

        public void Branch()
        {
            DataTable lstBrand = default(DataTable);
            lstBrand = ObjclsFrms.loadList("SelectBranch", "sp_Masters");
            if (lstBrand.Rows.Count > 0)
            {
                dllCast.DataSource = lstBrand;
                dllCast.DataBind();
            }
        }

        protected void dllCast_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Navigate")
            {
                Label lblNavigate = e.Item.FindControl("Label5") as Label;
                string navigation;
                navigation = lblNavigate.Text.ToString();
                Response.Redirect(navigation.ToString());
            }
        }

    }
}