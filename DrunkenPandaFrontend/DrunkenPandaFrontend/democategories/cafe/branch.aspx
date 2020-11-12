<%@ Page Title="" Language="C#" MasterPageFile="~/democategories/cafe/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="branch.aspx.cs" Inherits="DrunkenPandaFrontend.democategories.cafe.branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Branches | Drunken Panda - Premium Cafe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--=================================
page-title-->

    <section class="page-title bg-overlay-black-60 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(images/bg/04.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-name">
                        <h1>Branches </h1>
                        <p>See all the shells and whistles</p>
                    </div>
                    <ul class="page-breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a> <i class="fa fa-angle-double-right"></i></li>
                        <li><span>Branches </span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="bg-bottom-before pt-150"></div>
    </section>

    <!--=================================
page-title -->


    <!--=================================
 Branches-->

    <section class="our-clients white-bg page-section-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="section-title text-center">
                        <h6>Our Branches</h6>
                        <h2 class="title-effect">Drunken Panda Store Locations</h2>
                        <p class="">The following are the contact details of each of our branches around south india.</p>
                    </div>

                </div>
            </div>

            <!--=================================
            contact map -->

            <row class="contact-map clearfix o-hidden">
                <div class="container-fluid p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div style="width: 100%; height: 350px;" id="map" class="g-map" data-type='black'></div>
                        </div>
                    </div>
                </div>
            </row>

            <!--=================================
            contact map -->


            <div class="row pt-40">
                <asp:Repeater ID="dllCast" runat="server" OnItemCommand="dllCast_ItemCommand">
                    <ItemTemplate>
                        <div class="col-lg-6 col-md-6">
                            <div class="clients-box mb-30 clearfix">
                                <!--<div class="clients-photo">
                            <img src="../../images/branch.png" alt="">
                        </div>-->
                                <div class="clients-info sm-pt-20">
                                    <h5><asp:Label ID="Label1" runat="server" Text='<%# Eval("brn_Location") %>'></asp:Label></h5>
                                    <a href="mailto:#"><i class="fa fa-inbox"></i><asp:Label ID="Label2" runat="server" Text='<%# Eval("brn_Email") %>'></asp:Label></a>
                                    </br>
                            <a href="tel:#"><i class="fa fa-phone"></i><asp:Label ID="Label3" runat="server" Text='<%# Eval("brn_Mobile") %>'></asp:Label></a>
                                    <p><i class="fa fa-map-pin"></i><asp:Label ID="Label4" runat="server" Text='<%# Eval("brn_Address") %>'></asp:Label></p>
                                    <asp:LinkButton ID="lblNavigate" runat="server" CommandName="Navigate">
                                        <i class="fa fa-map"></i><span>Navigate</span>
                                    </asp:LinkButton>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("brn_GeoCode") %>' Visible="false"></asp:Label>
                                    
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>
    <!--=================================
 Branches-->
</asp:Content>
