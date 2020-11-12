using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaBackend.Admin
{
    public partial class AddEditTestimonial : System.Web.UI.Page
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
                lstData = ObjclsFrms.loadList("SelectTestimonialsByID", "sp_Masters", ResponseID.ToString());
                if (lstData.Rows.Count > 0)
                {
                    string name, description, email, phone, highlight;

                    name = lstData.Rows[0]["tst_Name"].ToString();
                    description = lstData.Rows[0]["tst_Comment"].ToString();
                    email = lstData.Rows[0]["tst_Email"].ToString();
                    phone = lstData.Rows[0]["tst_Mobile"].ToString();
                    highlight = lstData.Rows[0]["tst_IsActive"].ToString();


                    txtName.Text = name.ToString();
                    txtComments.Text = description.ToString();
                    txtEmail.Text = email.ToString();
                    txtMobile.Text = phone.ToString();
                    ddlHighlight.SelectedValue = highlight.ToString();

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
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "AddEditTestimonial.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }

        protected void Save(string mode)
        {
            string highlight;
            highlight = ddlHighlight.SelectedValue.ToString();
            
            string id = ResponseID.ToString();
            string[] arr = { highlight.ToString() };
            string Value = ObjclsFrms.SaveData("sp_Masters", "UpdateTestimonial", id.ToString(), arr);
            int res = Int32.Parse(Value.ToString());
            if (res > 0)
            {
                string claimID = res.ToString();
                ViewState["claimID"] = claimID.ToString();
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
            Response.Redirect("Testimonials.aspx");
        }
    }
}