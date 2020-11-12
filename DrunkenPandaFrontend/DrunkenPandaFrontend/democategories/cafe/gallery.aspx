<%@ Page Title="" Language="C#" MasterPageFile="~/democategories/cafe/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="DrunkenPandaFrontend.democategories.cafe.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Gallery | Drunken Panda - Premium Cafe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--=================================
page-title-->

    <section class="page-title bg-overlay-black-60 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(images/bg/06.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-name">
                        <h1>Gallery </h1>
                        <p>We know the secret of your success</p>
                    </div>
                    <ul class="page-breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a> <i class="fa fa-angle-double-right"></i></li>
                        <li><span>Gallery </span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="bg-bottom-before pt-150"></div>
    </section>

    <!--=================================
page-title -->


    <!--=================================
     portfolio -->

    <section class="white-bg page-section-ptb">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                    <%--<div class="isotope-filters">
                        <button data-filter="" class="active">All</button>
                        <button data-filter=".restaurant">Restaurant</button>
                        <button data-filter=".menu-items">Menu Items</button>
                        <button data-filter=".inaguration">Inaguration</button>
                    </div>--%>
                    <div class="isotope columns-5 popup-gallery">
                        <asp:Repeater ID="dllCast" runat="server" OnItemDataBound="dllCast_ItemDataBound">
                            <ItemTemplate>
                                <div class="grid-item photography branding">
                                    <div class="portfolio-item">
                                        <asp:Label ID="label1" runat="server" Text='<%# Eval("gry_Image") %>' Visible="false"></asp:Label>
                                        <asp:Image ID="imgSing" runat="server" ImageUrl="../UploadFiles/Images/default.png"/>
                                        <div class="portfolio-overlay">
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- jquery -->
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <!--=================================
     portfolio -->
</asp:Content>
