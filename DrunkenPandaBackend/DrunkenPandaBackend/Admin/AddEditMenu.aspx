<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="AddEditMenu.aspx.cs" Inherits="DrunkenPandaBackend.Admin.AddEditMenu" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
    <script>
        function openModal() {
            $('#kt_modal_1_3').modal('show');
        }
        function successModal() {
            $('#kt_modal_1_4').modal('show');
        }
        function failedModal() {
            $('#kt_modal_1_5').modal('show');
        }
        
    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>

    <telerik:RadAjaxLoadingPanel runat="server" Skin="Sunset" ID="LoadingPanel1" EnableEmbeddedSkins="false"
        BackColor="Transparent"
        ForeColor="Blue">
        <div class="col-lg-12 text-center mt-5">
            <img alt="Loading..." src="../Media/eclaim.gif" style="border: 0px;" />
        </div>

    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxPanel ID="RadAjaxpanel3" runat="server" LoadingPanelID="LoadingPanel1">
        <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
            <div class="row">
                <div class="col-lg-12">
                    <!--begin::Portlet-->
                    <div class="kt-portlet">
                        <div class="kt-portlet__head" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="kt-portlet__head-label">
                                <h3 class="kt-portlet__head-title">Add Edit Menu
                                </h3>
                            </div>
                            <div class="kt-portlet__head-actions">
                                <asp:LinkButton ID="lnkSave" runat="server" CssClass="btn btn-brand btn-elevate btn-icon-sm" Text="Save" OnClick="lnkSave_Click">

                                </asp:LinkButton>

                            </div>

                        </div>
                        <!--end: Search Form -->
                        <asp:Literal ID="ltrlMessage" runat="server"></asp:Literal>

                        <div class="kt-portlet__body">

                            <div class="col-lg-12 row">

                                <div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">Item Name <span class="required">* </span></label>
                                    <div class="col-lg-12">
                                        <telerik:RadTextBox ID="txtItem" runat="server" CssClass="form-control" Width="100%"></telerik:RadTextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="txtItem" ErrorMessage="Please Enter Item Name" ForeColor="Red" Display="Dynamic"
                                            SetFocusOnError="True"></asp:RequiredFieldValidator><br />

                                    </div>
                                </div>

                                <div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">Category <span class="required">* </span></label>
                                    <div class="col-lg-12">
                                        <telerik:RadComboBox ID="ddlCategory" runat="server" Width="100%"></telerik:RadComboBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ControlToValidate="ddlCategory" ErrorMessage="Please Select Categoy" ForeColor="Red" Display="Dynamic" InitialValue="Select Category"
                                            SetFocusOnError="True"></asp:RequiredFieldValidator><br />

                                    </div>
                                </div>

                                <div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">Price <span class="required">* </span></label>
                                    <div class="col-lg-12">
                                        <telerik:RadTextBox ID="txtPrice" runat="server" CssClass="form-control" Width="100%"></telerik:RadTextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ControlToValidate="txtPrice" ErrorMessage="Please Enter Price" ForeColor="Red" Display="Dynamic"
                                            SetFocusOnError="True"></asp:RequiredFieldValidator><br />

                                    </div>
                                </div>

                                <div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">Description <span class="required">* </span></label>
                                    <div class="col-lg-12">
                                        <telerik:RadTextBox ID="txtDescription" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine" Rows="5"></telerik:RadTextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="txtDescription" ErrorMessage="Please Enter Description" ForeColor="Red" Display="Dynamic"
                                            SetFocusOnError="True"></asp:RequiredFieldValidator><br />

                                    </div>
                                </div>

                                <div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">Discount Percentage</label>
                                    <div class="col-lg-12">
                                        <telerik:RadNumericTextBox ID="txtDiscount" runat="server" CssClass="form-control" Width="100%" MaxLength="2"></telerik:RadNumericTextBox>
                                        
                                    </div>
                                </div>

                                <%--<div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">HighLight <span class="required">* </span></label>
                                    <div class="col-lg-12">
                                        <telerik:RadDropDownList ID="ddlHighLight" runat="server" Width="100%">
                                            <Items>
                                                <telerik:DropDownListItem Text="Active" Value="Y" Selected="true" />
                                                <telerik:DropDownListItem Text="Inactive" Value="N" />
                                            </Items>
                                        </telerik:RadDropDownList>

                                    </div>
                                </div>--%>

                                <div class="col-lg-4 form-group">
                                    <label class="control-label col-lg-12">Status <span class="required">* </span></label>
                                    <div class="col-lg-12">
                                        <telerik:RadDropDownList ID="ddlStatus" runat="server" Width="100%">
                                            <Items>
                                                <telerik:DropDownListItem Text="Active" Value="Y" Selected="true" />
                                                <telerik:DropDownListItem Text="Inactive" Value="N" />
                                            </Items>
                                        </telerik:RadDropDownList>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </telerik:RadAjaxPanel>

    <!--begin::ValidationModal-->
    <div class="modal fade" id="kt_modal_1_3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Some Fields Are Missing</h5>
                </div>
                <div class="modal-body">
                    <span>Please Fill All The Areas And Try Again.</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>
    <!--end::ValidationModal-->

    <!--begin::SuccessModal-->
    <div class="modal fade" id="kt_modal_1_4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Success</h5>
                </div>
                <div class="modal-body">
                    <span>Your Menu Has Been Updated Successfully.</span>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton ID="btnOK" runat="server" OnClick="btnOK_Click" CssClass="btn btn-secondary">OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <!--end::SuccessModal-->

    <!--begin::FailureModal-->
    <div class="modal fade" id="kt_modal_1_5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Oops..!</h5>
                </div>
                <div class="modal-body">
                    <span>Something Went Wrong, Please Try Again Later.</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>
    <!--end::FailureModal-->
</asp:Content>
