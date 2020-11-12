using DrunkenPandaFrontend.democategories.cafe.Admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace DrunkenPandaFrontend.democategories.cafe
{
    public partial class order : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserID"] as string))
                {
                    branch();
                    menu();
                    fillForm();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
        public void branch()
        {
            ddlBranch.DataSource = ObjclsFrms.loadList("SelectDDLBranch", "sp_Masters");
            ddlBranch.DataTextField = "name";
            ddlBranch.DataValueField = "id";
            ddlBranch.DataBind();
        }
        public void menu()
        {
            ddlMenu.DataSource = ObjclsFrms.loadList("SelectDDLMenu", "sp_Masters");
            ddlMenu.DataTextField = "name";
            ddlMenu.DataValueField = "id";
            ddlMenu.DataBind();
        }
        public void fillForm()
        {
            string user = Session["UserID"].ToString();
            if (user.Equals("0") || user == null)
            {

            }
            else
            {
                DataTable lstData = default(DataTable);
                lstData = ObjclsFrms.loadList("SelectCustomerByID", "sp_Masters", user.ToString());
                if (lstData.Rows.Count > 0)
                {
                    string name, email, phone, address;
                    name = lstData.Rows[0]["name"].ToString();
                    email = lstData.Rows[0]["cus_Email"].ToString();
                    phone = lstData.Rows[0]["cus_Phone"].ToString();
                    address = lstData.Rows[0]["cus_Address"].ToString();

                    txtName.Text = name.ToString();
                    txtEmail.Text = email.ToString();
                    txtPhone.Text = phone.ToString();
                    txtAddress.Text = address.ToString();
                }
            }
        }
        public void ListData()
        {
            string user = Session["UserID"].ToString();
            DataTable lstUser = default(DataTable);
            lstUser = ObjclsFrms.loadList("SelectOrderDetailByCusID", "sp_Masters", user.ToString());
            grvRpt.DataSource = lstUser;
        }
        protected void grvRpt_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            ListData();
        }

        protected void grvRpt_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            if (e.CommandName.Equals("Delete"))
            {
                GridDataItem dataItem = e.Item as GridDataItem;
                string ID = dataItem.GetDataKeyValue("odd_ID").ToString();
                DataTable lstUser = default(DataTable);
                lstUser = ObjclsFrms.loadList("DeleteOrder", "sp_Masters", ID.ToString());
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void btn_Order_Click(object sender, EventArgs e)
        {
            try
            {
                orders();
            }
            catch (Exception ex)
            {
                String innerMessage = (ex.InnerException != null) ? ex.InnerException.Message : "";
                ObjclsFrms.LogMessageToFile(UICommon.GetLogFileName(), "order.aspx PageLoad()", "Error : " + ex.Message.ToString() + " - " + innerMessage);
            }
        }
        public void orders()
        {
            string name, email, phone, address, id;
            name = txtName.Text.ToString();
            email = txtEmail.Text.ToString();
            phone = txtPhone.Text.ToString();
            address = txtAddress.Text.ToString();
            id = Session["UserID"].ToString();
            string[] arr = { phone.ToString(), address.ToString() };
            DataTable lstData = default(DataTable);
            lstData = ObjclsFrms.loadList("InsertCustomer", "sp_Masters", id.ToString(), arr);

            string customer;
            customer = Session["UserID"].ToString();
            DataTable lstDatas = ObjclsFrms.loadList("SelectOrderStatus", "sp_Masters", customer.ToString());
            if (lstDatas.Rows.Count > 0)
            {
                string status = lstDatas.Rows[0]["Status"].ToString();
                string orders = lstDatas.Rows[0]["ord_ID"].ToString();
                ViewState["Status"] = status.ToString();
                ViewState["Order"] = orders.ToString();
            }
            else
            {
                ViewState["Status"] = "C";
                ViewState["Order"] = "0";
            }

            string stat, ord_ID, item, quantity, branch, custom;
            stat = ViewState["Status"].ToString();
            ord_ID = ViewState["Order"].ToString();
            item = ddlMenu.SelectedValue.ToString();
            quantity = ddlQuantity.SelectedValue.ToString();
            branch = ddlBranch.SelectedValue.ToString();
            custom = Session["UserID"].ToString();
            string[] arrs = { ord_ID.ToString(), item.ToString(), quantity.ToString(), branch.ToString(), custom.ToString() };
            DataTable lstDatass = ObjclsFrms.loadList("InsertOrder", "sp_Masters", stat.ToString(), arrs);
            if (lstDatass.Rows.Count > 0)
            {
                ddlBranch.SelectedValue = "0";
                ddlQuantity.SelectedValue = "0";
                ddlMenu.SelectedValue = "0";
                grvRpt.Rebind();
            }
        }

    }
}