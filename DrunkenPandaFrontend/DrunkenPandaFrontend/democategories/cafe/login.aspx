<%@ Page Title="" Language="C#" MasterPageFile="~/democategories/cafe/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DrunkenPandaFrontend.democategories.cafe.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login | Drunken Panda - Premium Cafe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--=================================
page-title-->

    <section class="page-title bg-overlay-black-60 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(images/bg/03.jpg);">

        <div class="bg-bottom-before pt-30"></div>
    </section>

    <!--=================================
page-title -->


    <section class="page-section-ptb bg-overlay-white-70 login-signup parallax" style="background: url(../../images/login/07.jpg);">
        >
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8">
                    <div class="tab tab-border nav-center">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active show" id="login-tab" data-toggle="tab" href="#login" role="tab" aria-controls="login" aria-selected="true"><i class="fa fa-home"></i>Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="signup-tab" data-toggle="tab" href="#signup" role="tab" aria-controls="signup" aria-selected="false"><i class="fa fa-user"></i>Profile </a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade active show" id="login" role="tabpanel" aria-labelledby="login-tab">
                                <div class="login-box-02 white-bg">
                                    <div class="pb-50 clearfix">
                                        <h4 class="mb-30">Login </h4>

                                        <div class="section-field mb-20">
                                            <label class="mb-10" for="name">Email* </label>
                                            <asp:TextBox ID="UserName" runat="server" CssClass="web form-control" placeholder="User name"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="form" runat="server"
                                                    ControlToValidate="UserName" ErrorMessage="Please Enter Email" ForeColor="Red" Display="Dynamic"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator><br />--%>
                                        </div>
                                        <div class="section-field mb-20">
                                            <label class="mb-10" for="Password">Password* </label>
                                            <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="Password form-control" TextMode="Password"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="form" runat="server"
                                                    ControlToValidate="Password" ErrorMessage="Please Enter Password" ForeColor="Red" Display="Dynamic"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                                        </div>

                                        <asp:Literal ID="lblMessage" runat="server" Visible="false"></asp:Literal>
                                        <%--<div class="section-field">
                                            <div class="remember-checkbox mb-30">
                                                <input type="checkbox" class="form-control" name="two" id="two" />
                                                <label for="two">Remember me</label>
                                                <a href="passwordrecovery.aspx" class="float-right">Forgot Password?</a>
                                            </div>
                                        </div>--%>
                                        <asp:LinkButton ID="LoginButton" runat="server" CssClass="button btn-block" OnClick="LoginButton_Click" Text="Log in"><span>Log in</span><i class="fa fa-check"></i></asp:LinkButton>

                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                                <div class="login-box-02 white-bg">
                                    <div class="pb-50 clearfix">
                                        <h4 class="mb-0">Signup</h4>
                                        <br />
                                        <asp:Literal ID="ltrlMessage" runat="server" Visible="false"></asp:Literal><br />
                                        <div class="row">
                                            <div class="section-field col-sm-6">
                                                <label class="mb-10" for="name">First name* </label>
                                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="web form-control" ValidationGroup="form" Placeholder="First name"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="form" runat="server"
                                                    ControlToValidate="txtFirstName" ErrorMessage="Please Enter First Name" ForeColor="Red" Display="Dynamic"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator><br />--%>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="form" runat="server" ForeColor="Red" Display="Dynamic"
                                                    ValidationExpression="^[a-zA-Z .]+$" ControlToValidate="txtFirstName" ErrorMessage="Only alphabets allowed."></asp:RegularExpressionValidator>
                                            </div>
                                            <div class="section-field col-sm-6">
                                                <label class="mb-10" for="name">Last name* </label>
                                                <asp:TextBox ID="txtLastName" runat="server" CssClass="web form-control" Placeholder="Last name"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="form" runat="server"
                                                    ControlToValidate="txtLastName" ErrorMessage="Please Enter First Name" ForeColor="Red" Display="Dynamic"
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator><br />--%>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="form" runat="server" ForeColor="Red" Display="Dynamic"
                                                    ValidationExpression="^[a-zA-Z .]+$" ControlToValidate="txtLastName" ErrorMessage="Only alphabets allowed."></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="section-field mb-20">
                                            <label class="mb-10" for="name">Email* </label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ValidationGroup="form" Placeholder="Email"></asp:TextBox>

                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="form" runat="server"
                                                ControlToValidate="txtEmail" ErrorMessage="Please Enter UserName" Display="Dynamic" ForeColor="Red"
                                                SetFocusOnError="True"></asp:RequiredFieldValidator>--%>

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationGroup="form" runat="server" ForeColor="Red" Display="Dynamic"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"
                                                ErrorMessage="Please enter valid email address"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="section-field mb-20">
                                            <label class="mb-10" for="Password">Password* </label>
                                            <asp:TextBox ID="txtPassword" runat="server" CssClass="Password form-control" ValidationGroup="form" Placeholder="Password"></asp:TextBox>
                                        </div>
                                        <asp:LinkButton ID="btnSave" runat="server" ValidationGroup="form" CausesValidation="true" OnClick="btnSave_Click" Text='Signup' CssClass="button btn-block"><span>Signup</span>
                                            <i class="fa fa-check"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
