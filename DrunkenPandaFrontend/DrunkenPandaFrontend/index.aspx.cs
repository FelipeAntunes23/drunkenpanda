using DrunkenPandaFrontend.democategories.cafe.Admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaFrontend
{
    public partial class index : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        string BackendName = @"http://";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Gallery();
                Testimonials();
            }
        }

        public void Gallery()
        {
            DataTable lstGallery = default(DataTable);
            lstGallery = ObjclsFrms.loadList("SelectIndexGallery", "sp_Masters");
            if (lstGallery.Rows.Count > 0)
            {
                dllGallery.DataSource = lstGallery;
                dllGallery.DataBind();
            }
        }

        public void Testimonials()
        {
            DataTable lstTestimonials = default(DataTable);
            lstTestimonials = ObjclsFrms.loadList("SelectIndexTestimonials", "sp_Masters");
            if (lstTestimonials.Rows.Count > 0)
            {
                dllTestimonial.DataSource = lstTestimonials;
                dllTestimonial.DataBind();
            }
        }

        protected void dllGallery_ItemDataBound(object sender, RepeaterItemEventArgs e)
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
    }
}