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
    public partial class gallery : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        string BackendName = @"http://";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Gallery();
            }
        }

        public void Gallery()
        {
            DataTable lstGallery = default(DataTable);
            lstGallery = ObjclsFrms.loadList("SelectFrontGallery", "sp_Masters");
            if (lstGallery.Rows.Count > 0)
            {
                dllCast.DataSource = lstGallery;
                dllCast.DataBind();
            }
        }

        protected void dllCast_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //image1
                Label lblImage = e.Item.FindControl("label1") as Label;
                Image imgSing = e.Item.FindControl("imgSing") as Image;
                if (lblImage.Text == "")
                {

                }
                else
                {
                    string image = lblImage.Text.ToString().Replace("\\", "/");
                    string signature = BackendName + image;
                    imgSing.ImageUrl = signature;
                }
            }
        }

        //protected void lbtGallery_Click1(object sender, EventArgs e)
        //{
        //    LinkButton lnk = sender as LinkButton;
        //    Label lblImage = (Label)lnk.FindControl("label1");
        //    string image = lblImage.Text.ToString().Replace("\\", "/");
        //    string signature = BackendName + image;
        //    Response.Redirect(signature.ToString());
        //}
    }
}