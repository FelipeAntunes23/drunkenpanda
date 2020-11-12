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
    public partial class AddEditMenu : System.Web.UI.Page
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
                Category();
                fillForm();
            }
        }

        public void Category()
        {
            ddlCategory.DataSource = ObjclsFrms.loadList("SelectDDLCategory", "sp_Masters");
            ddlCategory.DataTextField = "name";
            ddlCategory.DataValueField = "id";
            ddlCategory.DataBind();
        }

        protected void fillForm()
        {
            if (ResponseID == 0)
            {

            }
            else
            {
                DataTable lstData = default(DataTable);
                lstData = ObjclsFrms.loadList("SelectMenuByID", "sp_Masters", ResponseID.ToString());
                if (lstData.Rows.Count > 0)
                {
                    string name, desciption, price, discount, category, status;

                    name = lstData.Rows[0]["itm_Name"].ToString();
                    desciption = lstData.Rows[0]["itm_Description"].ToString();
                    price = lstData.Rows[0]["itm_OriginalPrice"].ToString();
                    discount = lstData.Rows[0]["itm_Discount"].ToString();
                    category = lstData.Rows[0]["itm_cat_ID"].ToString();
                    status = lstData.Rows[0]["Status"].ToString();


                    txtItem.Text = name.ToString();
                    txtDescription.Text = desciption.ToString();
                    txtPrice.Text = price.ToString();
                    txtDiscount.Text = discount.ToString();
                    ddlCategory.SelectedValue = category.ToString();
                    ddlStatus.SelectedValue = status.ToString();
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
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "AddEditMenu.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }

        protected void Save(string mode)
        {
            string user, name, description, category, price, discount, image, highlight, status;
            name = txtItem.Text.ToString();
            description = txtDescription.Text.ToString();
            category = ddlCategory.SelectedValue.ToString();
            price = txtPrice.Text.ToString();
            discount = txtDiscount.Text.ToString();
            highlight = "";
            status = ddlStatus.SelectedValue.ToString();
            user = UICommon.GetCurrentUserID().ToString();

            image = "";
            
            if (mode.Equals("I"))
            {
                string[] arr = { name.ToString(), description.ToString(), category.ToString(), price.ToString(), discount.ToString(), image.ToString(), highlight.ToString(), status.ToString(), user.ToString() };
                DataTable lstClaim = ObjclsFrms.loadList("InsertMenu", "sp_Masters", mode.ToString(), arr);
                if (lstClaim.Rows.Count > 0)
                {
                    string claimID = lstClaim.Rows[0]["sliderID"].ToString();
                    ViewState["claimID"] = claimID.ToString();
                }
            }
            else
            {
                string id = ResponseID.ToString();
                string[] arr = { name.ToString(), description.ToString(), category.ToString(), price.ToString(), discount.ToString(), image.ToString(), highlight.ToString(), status.ToString(), user.ToString(), id.ToString() };
                string Value = ObjclsFrms.SaveData("sp_Masters", "InsertMenu", mode.ToString(), arr);
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
            Response.Redirect("Menu.aspx");
        }
    }
}