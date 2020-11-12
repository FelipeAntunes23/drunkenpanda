<%@ Page Title="" Language="C#" MasterPageFile="~/democategories/cafe/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="DrunkenPandaFrontend.democategories.cafe.contact" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us | Drunken Panda - Premium Cafe</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

    <!--=================================
page-title-->

    <section class="page-title bg-overlay-black-60 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(images/bg/05.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-name">
                        <h1>Contact us </h1>
                        <p>We know the secret of your success</p>
                    </div>
                    <ul class="page-breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a> <i class="fa fa-angle-double-right"></i></li>
                        <li><span>Contact us </span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="bg-bottom-before pt-150"></div>
    </section>

    <!--=================================
page-title -->



    <!--=================================
 contact -->

    <section class="contact-4 page-section-ptb clearfix o-hidden">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 sm-mb-30">
                    <blockquote class="blockquote quote pl-0">
                        He was my cream, and I was his coffee - And when you poured us together, it was something.
                    </blockquote>
                    <p>It would be great to hear from you! If you got any questions, please do not hesitate to send us a message. We are looking forward to hearing  please do not hesitate to send us a message. It would be great to hear from you! If you got any questions, please do not hesitate to send us a message.</p>
                    <p>We are looking forward to hearing  please do not hesitate to send us a message. We are looking forward to hearing from you!</p>
                </div>
                <div class="col-lg-6">
                    <div class="section-title">
                        <h6 class="subtitle">let's work  <span class="theme-color">together </span></h6>
                        <h2 class="title">Contact Us  </h2>
                    </div>


                    <%--<telerik:RadAjaxPanel ID="RadAjaxpanel3" runat="server" LoadingPanelID="LoadingPanel1">--%>

                        <asp:Literal ID="ltrlMessage" runat="server" Visible="false"></asp:Literal>
                        <br />
                        <div class="contact-form clearfix">
                            <div class="section-field">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name*"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtName" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Enter Your Name" ForeColor="Red" Font-Italic="true"> </asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="section-field">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email*"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="txtEmail"
                                    ErrorMessage="Enter Your Email" ValidationGroup="form" ForeColor="Red"> </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegtxtEmail1" runat="server" Display="Dynamic" ValidationGroup="form"
                                    ErrorMessage="Invalid Email Format" ControlToValidate="txtEmail"
                                    SetFocusOnError="True" ForeColor="Red"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </div>
                            <div class="section-field">
                                <asp:TextBox ID="txtMobile" runat="server" MaxLength="100" CssClass="form-control" placeholder="Phone*"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvmob" runat="server" Display="Dynamic" ControlToValidate="txtMobile"
                                    ErrorMessage="Enter Mobile Number" ValidationGroup="form" ForeColor="Red"> </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile"
                                    ErrorMessage="Please Enter Only Numbers" SetFocusOnError="True" ForeColor="Red"
                                    ValidationExpression="^\d+$" ValidationGroup="form"></asp:RegularExpressionValidator>

                            </div>
                            <div class="section-field textarea">
                                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="input-message form-control" Columns="30" Rows="7" placeholder="Comment*"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMessage" SetFocusOnError="true" ErrorMessage="Enter The Comment" ForeColor="Red" Font-Italic="true"> </asp:RequiredFieldValidator>--%>
                            </div>
                            <!-- Google reCaptch-->
                            <div class="g-recaptcha section-field clearfix" data-sitekey="[Add your site key]"></div>
                            <div class="submit-button">
                                <input type="hidden" name="action" value="sendEmail">
                                <asp:LinkButton ID="btnSubmits" runat="server" Text="Send message" CssClass="button" OnClick="btnSubmit_Click"/>

                            </div>
                        </div>

                    <%--</telerik:RadAjaxPanel>--%>

                </div>
            </div>
            <!--<div class="row mt-50">
      <div class="col-12">
        <img class="img-fluid mx-auto" src="images/world-map.png" alt="">
      </div>
    </div>-->
        </div>
    </section>

    <!--=================================
 contact -->

    <section class="leave-your-testimonial gray-bg contact-3 page-section-ptb">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-3-info text-center">
                        <div class="clearfix">
                            <div class="section-title mb-0">
                                <h2 class="title-effect">Leave Your Testimonial!</h2>
                            </div>
                            <p class="mb-50">If you have had an experience with Drunken Panda and you love us please share it here. We would love to hear your <span class="tooltip-content theme-color" data-original-title="This will help" data-toggle="tooltip" data-placement="top">thoughts and feelings.</span></p>
                            <div id="formmessage">Success/Error Message Goes Here</div>

                            <%--<telerik:RadAjaxPanel ID="RadAjaxpanel1" runat="server" LoadingPanelID="LoadingPanel1">--%>
                                <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>
                                <br />
                                <div class="contact-form clearfix">
                                    <div class="section-field">
                                        <asp:TextBox ID="txtNames" runat="server" CssClass="form-control" placeholder="Name*"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNames" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Enter Your Name" ForeColor="Red" Font-Italic="true"> </asp:RequiredFieldValidator>--%>
                                    </div>
                                    <div class="section-field">
                                        <asp:TextBox ID="txtEmails" runat="server" CssClass="form-control" placeholder="Email*"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="txtEmails"
                                            ErrorMessage="Enter Your Email" ValidationGroup="form" ForeColor="Red"> </asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ValidationGroup="form"
                                            ErrorMessage="Invalid Email Format" ControlToValidate="txtEmails"
                                            SetFocusOnError="True" ForeColor="Red"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <div class="section-field">
                                        <asp:TextBox ID="txtMobiles" runat="server" MaxLength="100" CssClass="form-control" placeholder="Phone*"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="txtMobiles"
                                            ErrorMessage="Enter Mobile Number" ValidationGroup="form" ForeColor="Red"> </asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobiles"
                                            ErrorMessage="Please Enter Only Numbers" SetFocusOnError="True" ForeColor="Red"
                                            ValidationExpression="^\d+$" ValidationGroup="form"></asp:RegularExpressionValidator>

                                    </div>
                                    <div class="section-field textarea">
                                        <asp:TextBox ID="txtMessages" runat="server" TextMode="MultiLine" CssClass="input-message form-control" Columns="30" Rows="7" placeholder="Comment*"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMessages" SetFocusOnError="true" ErrorMessage="Enter The Comment" ForeColor="Red" Font-Italic="true"> </asp:RequiredFieldValidator>--%>
                                    </div>
                                    <!-- Google reCaptch-->
                                    <div class="g-recaptcha section-field clearfix" data-sitekey="[Add your site key]"></div>
                                    <div class="submit-button">
                                        <asp:LinkButton ID="btnSends" runat="server" Text="Send" CssClass="button" OnClick="btnSend_Click"></asp:LinkButton>

                                    </div>
                                </div>

                            <%--</telerik:RadAjaxPanel>--%>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--=================================
 address -->

</asp:Content>
