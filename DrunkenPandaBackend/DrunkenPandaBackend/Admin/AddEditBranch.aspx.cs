using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrunkenPandaBackend.Admin
{
    public partial class AddEditBranch : System.Web.UI.Page
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
                lstData = ObjclsFrms.loadList("SelectBranchByID", "sp_Masters", ResponseID.ToString());
                if (lstData.Rows.Count > 0)
                {
                    string location, geo, email, phone, address, status;

                    //name = lstData.Rows[0]["brn_Name"].ToString();
                    location = lstData.Rows[0]["brn_Location"].ToString();
                    geo = lstData.Rows[0]["brn_GeoCode"].ToString();
                    email = lstData.Rows[0]["brn_Email"].ToString();
                    phone = lstData.Rows[0]["brn_Mobile"].ToString();
                    address = lstData.Rows[0]["brn_Address"].ToString();
                    status = lstData.Rows[0]["brn_IsActive"].ToString();


                    //txtBranch.Text = name.ToString();
                    txtLocation.Text = location.ToString();
                    txtGeo.Text = geo.ToString();
                    txtEmail.Text = email.ToString();
                    txtMobile.Text = phone.ToString();
                    txtAddress.Text = address.ToString();
                    ddlStatus.SelectedValue = status.ToString();
                }
            }
        }



        protected void Save(string mode)
        {
            string user, name, location, geo, email, phone, address, status;
            location = txtLocation.Text.ToString();
            name = "";
            geo = txtGeo.Text.ToString();
            email = txtEmail.Text.ToString();
            phone = txtMobile.Text.ToString();
            address = txtAddress.Text.ToString();
            status = ddlStatus.SelectedValue.ToString();
            user = UICommon.GetCurrentUserID().ToString();


            if (mode.Equals("I"))
            {
                string[] arr = { name.ToString(), location.ToString(), geo.ToString(), email.ToString(), phone.ToString(), address.ToString(), status.ToString(), user.ToString() };
                DataTable lstClaim = ObjclsFrms.loadList("InsertBranch", "sp_Masters", mode.ToString(), arr);
                if (lstClaim.Rows.Count > 0)
                {
                    string claimID = lstClaim.Rows[0]["sliderID"].ToString();
                    ViewState["claimID"] = claimID.ToString();
                }
            }
            else
            {
                string id = ResponseID.ToString();
                string[] arr = { name.ToString(), location.ToString(), geo.ToString(), email.ToString(), phone.ToString(), address.ToString(), status.ToString(), user.ToString(), id.ToString() };
                string Value = ObjclsFrms.SaveData("sp_Masters", "InsertBranch", mode.ToString(), arr);
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
            Response.Redirect("Branch.aspx");
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
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "AddEditBranch.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }
    }
}