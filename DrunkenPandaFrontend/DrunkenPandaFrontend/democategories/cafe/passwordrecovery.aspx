<%@ Page Title="" Language="C#" MasterPageFile="~/democategories/cafe/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="passwordrecovery.aspx.cs" Inherits="DrunkenPandaFrontend.democategories.cafe.passwordrecovery" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Forgot Password | Drunken Panda - Premium Cafe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--=================================
page-title-->

    <section class="page-title bg-overlay-black-60 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(images/bg/03.jpg);">

        <div class="bg-bottom-before pt-30"></div>
    </section>

    <!--=================================
page-title -->


    <section class="white-bg page-section-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="section-title text-center">
                        <h6 class="">Forgot in with your id or social media</h6>
                        <h2 class="title-effect">Forgot Password?</h2>
                        <p>Truly ideal solutions for your business. Create a website that you are gonna be proud of. </p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="clearfix">
                        <asp:ScriptManager ID="scrptMngr" runat="server"></asp:ScriptManager>
                        <telerik:RadAjaxPanel id="pnl" runat="server" loadingpanelid="RadAjaxLoadingPanel1">
                        <div class="section-field mb-20">
                            <span style="color: red">
                                        <asp:Literal ID="ltrlMessage" runat="server"></asp:Literal>
                                    </span>
                                    <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" ValidationGroup="form" placeholder="Email address"></asp:TextBox>
                                        
										
                                
                        </div>
                        <div class="text-center">
                            <asp:LinkButton ID="lnkReq" OnClick="lnkReq_Click" runat="server" ValidationGroup="form" CssClass="button"><span> Recover your Password</span>
                                <i class="fa fa-check"></i></asp:LinkButton>&nbsp;&nbsp;
                        </div>
                        </telerik:RadAjaxPanel>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
