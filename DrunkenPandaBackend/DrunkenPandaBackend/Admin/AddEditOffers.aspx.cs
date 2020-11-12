using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace DrunkenPandaBackend.Admin
{
    public partial class AddEditOffers : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        public int ResponseID
        {
            get
            {
                int ResponseID;
                int.TryParse(Request.Params["Id"], out ResponseID);

                return ResponseID;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ViewState["claimID"] = null;
                fillForm();
            }
        }

        protected void fillForm()
        {
            if (ResponseID == 0)
            {

            }
            else
            {
                DataTable lstData = default(DataTable);
                lstData = ObjclsFrms.loadList("SelectOfferByID", "sp_Masters", ResponseID.ToString());
                if (lstData.Rows.Count > 0)
                {
                    string name, status, description, image, highlight;
                    name = lstData.Rows[0]["ofr_Name"].ToString();
                    status = lstData.Rows[0]["Status"].ToString();
                    description = lstData.Rows[0]["ofr_Description"].ToString();
                    image = lstData.Rows[0]["ofr_Image"].ToString();
                    highlight = lstData.Rows[0]["ofr_IsActive"].ToString();

                    txtName.Text = name.ToString();
                    txtDescription.Text = description.ToString();
                    ddlStatus.SelectedValue = status.ToString();
                    ddlHighLight.SelectedValue = highlight.ToString();
                    hpl1.NavigateUrl = image.ToString(); hlval1.Value = ResponseID.ToString();
                    img1.ImageUrl = image.ToString();
                    ViewState["LoadedImage"] = image.ToString();
                }
            }
        }
        protected void lnkSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ResponseID == 0)
                {
                    string mode = "I";
                    Save(mode);
                }
                else
                {
                    string mode = "U";
                    Save(mode);
                }
            }
            catch (Exception ex)
            {
                String innerMessage = (ex.InnerException != null) ? ex.InnerException.Message : "";
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "AddEditOffers.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }

        protected void Save(string mode)
        {
            string user, name, description, image, highlight, status;
            name = txtName.Text.ToString();
            description = txtDescription.Text.ToString();
            image = "";
            status = ddlStatus.SelectedValue.ToString();
            highlight = ddlHighLight.SelectedValue.ToString();
            user = UICommon.GetCurrentUserID().ToString();

            int ImageID = 0;
            foreach (UploadedFile uploadedFile in upd1.UploadedFiles)
            {
                ImageID += 1;

                string csvPath = Server.MapPath(("..") + @"/UploadFiles/Offer/") + ImageID.ToString() + "_" + uploadedFile.FileName;
                uploadedFile.SaveAs(csvPath);
                image = @"/UploadFiles/Offer/" + ImageID.ToString() + "_" + uploadedFile.FileName.ToString();
                ViewState["image"] = image.ToString();
            }

            if (image == "")
            {
                image = ViewState["LoadedImage"].ToString();
            }
            else
            {
                image = ViewState["image"].ToString();
            }

            if (mode.Equals("I"))
            {
                string[] arr = { name.ToString(), description.ToString(), image.ToString(), highlight.ToString(), status.ToString(), user.ToString() };
                DataTable lstClaim = ObjclsFrms.loadList("InsertOffer", "sp_Masters", mode.ToString(), arr);
                if (lstClaim.Rows.Count > 0)
                {
                    string claimID = lstClaim.Rows[0]["sliderID"].ToString();
                    ViewState["claimID"] = claimID.ToString();
                }
            }
            else
            {
                string id = ResponseID.ToString();
                string[] arr = { name.ToString(), description.ToString(), image.ToString(), highlight.ToString(), status.ToString(), user.ToString(), id.ToString() };
                string Value = ObjclsFrms.SaveData("sp_Masters", "InsertOffer", mode.ToString(), arr);
                int res = Int32.Parse(Value.ToString());
                if (res > 0)
                {
                    string claimID = res.ToString();
                    ViewState["claimID"] = claimID.ToString();
                }
            }
            string claim = ViewState["claimID"].ToString();

            if (claim == "0")
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>failedModal();</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>successModal();</script>", false);
            }
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            Response.Redirect("Offers.aspx");
        }
    }
}