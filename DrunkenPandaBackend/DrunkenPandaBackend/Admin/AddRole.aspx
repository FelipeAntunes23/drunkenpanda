<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="AddRole.aspx.cs" Inherits="DrunkenPandaBackend.Admin.AddRole" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
    <script type="text/javascript">
        function Confim(val) {

            $('#modalConfirm').modal('show');

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
        <div class="row">
            <div class="col-lg-12">
                <!--begin::Portlet-->
                <div class="kt-portlet">
                    <div class="kt-portlet__head" style="padding-top: 20px; padding-bottom: 20px;">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">Add Edit Role
                            </h3>
                        </div>

                    </div>
                    <div class="kt-portlet__body">
                        <label class="control-label"></label>
                        <asp:Literal ID="ltrlMessage" runat="server"></asp:Literal>

                        <div class="form-group">
                            <label class="control-label col-md-3">Role <span class="required">* </span></label>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtEnglishTitle" runat="server" CssClass="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                    ControlToValidate="txtEnglishTitle" ErrorMessage="Please Enter Role Title" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="pnlMaster" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="col-lg-12 form-actions">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <asp:LinkButton ID="btnSave" Width="100px" runat="server" ValidationGroup="form" OnClientClick="return Confim('Are you sure want to Update..?');" UseSubmitBehavior="false" Text='<i class="icon-ok"></i>Save'
                                                CssClass="btn btn-brand btn-elevate btn-icon-sm" />
                                            <asp:LinkButton ID="btnCancel" Width="100px" runat="server"
                                                Text="Cancel" CssClass="btn btn-brand btn-elevate btn-icon-sm"
                                                CausesValidation="False" OnClick="btnCancel_Click" />

                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <div class="clearfix"></div>
    <div class="modal fade modal-center" id="modalConfirm" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="exampleModalLabels" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Confirm">Are You sure want to save..??
                    </h5>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton ID="lnkAdds" runat="server" Text="Yes" OnClick="btnSave_Click" CssClass="btn btn-brand btn-elevate btn-icon-sm" />
                    <button type="reset" data-dismiss="modal" class="btn btn-secondary">
                        Cancel
                    </button>
                </div>
            </div>
        </div>
    </div>

    <style type="text/css">
        .modal-center {
            position: absolute;
            top: 50% !important;
            transform: translate(0, -50%) !important;
            -ms-transform: translate(0, -50%) !important;
            -webkit-transform: translate(0, -50%) !important;
            margin: auto 5%;
        }
    </style>
    <a href="javascript:;" class="page-quick-sidebar-toggler">
        <i class="icon-login"></i>
    </a>

</asp:Content>
