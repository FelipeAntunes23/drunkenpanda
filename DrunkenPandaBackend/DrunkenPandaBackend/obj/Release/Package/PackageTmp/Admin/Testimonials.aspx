<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" Inherits="DrunkenPandaBackend.Admin.Testimonials" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
        <div class="row">
            <div class="col-lg-12">
                <!--begin::Portlet-->
                <div class="kt-portlet">
                    <div class="kt-portlet__head" style="padding-top: 20px; padding-bottom: 20px;">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">Testimonials
                            </h3>
                        </div>

                    </div>

                    <div class="kt-portlet__body">

                        <telerik:RadSkinManager ID="RadSkinManager1" runat="server" Skin="Silk" />
                        <telerik:RadGrid RenderMode="Lightweight" runat="server" EnableLinqExpressions="false" AllowMultiRowSelection="true"
                            ID="grvRpt" GridLines="None"
                            ShowFooter="True" AllowSorting="True"
                            OnNeedDataSource="grvRpt_NeedDataSource"
                            OnItemCommand="grvRpt_ItemCommand"
                            AllowFilteringByColumn="true"
                            ClientSettings-Resizing-ClipCellContentOnResize="true"
                            EnableAjaxSkinRendering="true"
                            AllowPaging="true" PageSize="10" CellSpacing="0">
                            <ClientSettings>
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true"></Scrolling>
                            </ClientSettings>
                            <MasterTableView AutoGenerateColumns="False" FilterItemStyle-Font-Size="XX-Small" CanRetrieveAllData="false"
                                ShowFooter="false" DataKeyNames="tst_ID"
                                EnableHeaderContextMenu="true">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="tst_Name" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Name" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="tst_Name">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="tst_Email" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Email" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="tst_Email">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="tst_Mobile" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Mobile" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="tst_Mobile">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="tst_Comment" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Comment" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="tst_Comment">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="tst_IsActive" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="HighLight" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="tst_IsActive">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridButtonColumn CommandName="Edit" Text='<i class="fa fa-edit"></i>' HeaderStyle-Width="60px" EditFormColumnIndex="0" UniqueName="EditColumn">
                                    </telerik:GridButtonColumn>

                                </Columns>
                            </MasterTableView>
                            <GroupingSettings CaseSensitive="false" />
                            <ClientSettings AllowDragToGroup="True" EnableRowHoverStyle="true" AllowColumnsReorder="True">
                                <Resizing AllowColumnResize="true"></Resizing>
                                <Selecting AllowRowSelect="True" EnableDragToSelectRows="true"></Selecting>
                            </ClientSettings>
                        </telerik:RadGrid>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
