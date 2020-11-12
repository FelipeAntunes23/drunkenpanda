<%@ Page Title="" Language="C#" MasterPageFile="~/democategories/cafe/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="DrunkenPandaFrontend.democategories.cafe.order" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Order Food | Drunken Panda - Premium Cafe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--=================================
page-title-->

<section class="page-title bg-overlay-black-60 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(images/bg/03.jpg);">
  <div class="bg-bottom-before pt-30"></div>
</section>

<!--=================================
page-title -->

    <!--=================================
     Register-->
    
    <section class="white-bg page-section-ptb o-hidden">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="section-title text-center">
                        <h6 class="">Hungry for food? Order Now.</h6>
                        <h2 class="title-effect">Order Food Online</h2>
                        <p class="">We only take take away deliveries</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div id="register-form" class="register-form">
                        
                        <div class="section-field">
                            <label>Name* </label>
                            <div class="field-widget">
                                <asp:TextBox ID="txtName" runat="server" CssClass="web form-control" placeholder="Enter your name" Enabled="false"></asp:TextBox>
                            </div>
                        </div>

                        <div class="section-field mt-15">
                            <label>Email *</label>
                            <div class="field-widget">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="email form-control" placeholder="Enter your email" Enabled="false"></asp:TextBox>
                            </div>
                        </div>

                        <div class="section-field">
                            <label>Mobile phone *</label>
                            <div class="field-widget">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="phone form-control" placeholder="Enter your mobile no"></asp:TextBox>
                            </div>
                        </div>

                        <div class="section-field">
                            <label>Delivery Address* </label>
                            <div class="field-widget">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter your Address" rows="3" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="section-field mt-20">
                            <label>Pick Up Branch *</label>
                            <div class="field-widget">
                                <asp:DropDownList ID="ddlBranch" runat="server" CssClass="Wide fancyselect"></asp:DropDownList>
                            </div>
                        </div>

                        <label>Item List *</label>
                        <div class="row">
                            <div class="section-field col-md-8">
                                <div class="box">
                                    <asp:DropDownList ID="ddlMenu" runat="server" CssClass="Wide fancyselect"></asp:DropDownList>
                                    
                                </div>
                            </div>
                            <div class="section-field col-md-4">
                                <div class="box">
                                    <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="Wide fancyselect">
                                        <asp:ListItem Text="Quantity" Value="0" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </div>
                            </div>
                            
                        </div>

                        
                        <%--<div class="section-field">
                            <div class="remember-checkbox">
                                <input type="checkbox" class="form-control" name="two" id="two" />
                                <label for="two">Accept our <a href="#"> privacy policy</a> and <a href="#"> customer agreement</a></label>
                            </div>
                        </div>--%>
                    </div>
                    <asp:LinkButton ID="btn_Order" runat="server" CssClass="button mt-20" OnClick="btn_Order_Click"><span>Order</span><i class="fa fa-check"></i></asp:LinkButton>
                    
                </div>
            </div>
        </div>
    </section>
    <asp:ScriptManager ID="scrptMngr" runat="server"></asp:ScriptManager>
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
    <section class="white-bg page-section-ptb o-hidden">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="register-form">

                        <telerik:RadSkinManager ID="RadSkinManager1" runat="server" Skin="Silk" />
                        <telerik:RadGrid RenderMode="Lightweight" runat="server" EnableLinqExpressions="false" AllowMultiRowSelection="true"
                            ID="grvRpt" GridLines="None"
                            ShowFooter="True" AllowSorting="True"
                            OnNeedDataSource="grvRpt_NeedDataSource"
                            OnItemCommand="grvRpt_ItemCommand"
                            AllowFilteringByColumn="false"
                            ClientSettings-Resizing-ClipCellContentOnResize="true"
                            EnableAjaxSkinRendering="true"
                            AllowPaging="true" PageSize="10" CellSpacing="0">
                            <ClientSettings>
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true"></Scrolling>
                            </ClientSettings>
                            <MasterTableView AutoGenerateColumns="False" FilterItemStyle-Font-Size="XX-Small" CanRetrieveAllData="false"
                                ShowFooter="false" DataKeyNames="odd_ID"
                                EnableHeaderContextMenu="true">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="itm_Name" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Item" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="itm_Name">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="itm_OriginalPrice" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Price" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="itm_OriginalPrice">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="itm_Discount" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Discount" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="itm_Discount">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="odd_Quantity" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Quantity" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="odd_Quantity">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Price" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Total Price" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="Price">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Status" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Status" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="Status">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="CreatedDate" AllowFiltering="true" HeaderStyle-Width="60px"
                                        HeaderStyle-Font-Size="Smaller" HeaderText="Date" FilterControlWidth="100%"
                                        CurrentFilterFunction="Contains" AutoPostBackOnFilter="true" ShowFilterIcon="false"
                                        HeaderStyle-Font-Bold="true" UniqueName="CreatedDate">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridButtonColumn CommandName="Delete" Text='<i class="fa fa-delete"></i>' HeaderStyle-Width="60px" EditFormColumnIndex="0" UniqueName="DeleteColumn">
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
    </section>
    </telerik:RadAjaxPanel>
    <!--=================================
     Register-->
</asp:Content>
