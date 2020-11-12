<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DrunkenPandaFrontend.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Drunken Panda - Premium Cafe" />
    <meta name="author" content="drunkenpanda.com" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Drunken Panda - Premium Cafe</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="images/fav.png" />

    <!-- font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:400,400i,700,700i,900,900i|Condiment" rel="stylesheet">

    <!-- Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugins-css.css" />

    <!-- revoluation -->
    <link rel="stylesheet" type="text/css" href="revolution/css/settings.css" media="screen" />

    <!-- Typography -->
    <link rel="stylesheet" type="text/css" href="css/typography.css" />

    <!-- Shortcodes -->
    <link rel="stylesheet" type="text/css" href="css/shortcodes/shortcodes.css" />

    <!-- Style -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />

    <!-- cafe -->
    <link rel="stylesheet" type="text/css" href="democategories/cafe/css/cafe.css" />

    <!-- Responsive -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />

    <!-- Style customizer -->
    <link rel="stylesheet" type="text/css" href="css/skins/skin-gold.css" data-style="styles" />

    <!-- LOAD JQUERY LIBRARY -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>

    <!-- LOADING FONTS AND ICONS -->
    <link href="http://fonts.googleapis.com/css?family=Poppins:300%2C500" rel="stylesheet" property="stylesheet" type="text/css" media="all">

    <link rel="stylesheet" type="text/css" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">
    <!-- REVOLUTION STYLE SHEETS -->
    <link rel="stylesheet" type="text/css" href="css/settings.css">
    <!-- REVOLUTION LAYERS STYLES -->
    <style></style>

    <!-- ADD-ONS CSS FILES -->
    <!-- ADD-ONS JS FILES -->
    <!-- REVOLUTION JS FILES -->
    <script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>


    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
    <script type="text/javascript" src="js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="js/extensions/revolution.extension.video.min.js"></script>


    <script type="text/javascript">function setREVStartSize(e) {
            try {
                e.c = jQuery(e.c); var i = jQuery(window).width(), t = 9999, r = 0, n = 0, l = 0, f = 0, s = 0, h = 0;
                if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function (e, f) { f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e) }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) { var u = (e.c.width(), jQuery(window).height()); if (void 0 != e.fullScreenOffsetContainer) { var c = e.fullScreenOffsetContainer.split(","); if (c) jQuery.each(c, function (e, i) { u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0)) } f = u } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight); e.c.closest(".rev_slider_wrapper").css({ height: f })
            } catch (d) { console.log("Failure at Presize of Slider:" + d) }
        };</script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">

            <!--=================================
 preloader -->

            <div id="pre-loader">
                <img src="images/pre-loader/loader-food.gif" alt="">
            </div>

            <!--=================================
 preloader -->

            <!--=================================
 header -->

            <header id="header" class="header default fullWidth">

                <!--=================================
 mega menu -->

                <div class="menu">
                    <!-- menu start -->
                    <nav id="menu" class="mega-menu">
                        <!-- menu list items container -->
                        <section class="menu-list-items">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <!-- menu logo -->
                                        <ul class="menu-logo">
                                            <li>
                                                <a href="index.aspx">
                                                    <img src="democategories/cafe/images/logo.png" alt="logo">
                                                </a>
                                            </li>
                                        </ul>
                                        <!-- menu links -->
                                        <div class="menu-bar">
                                            <ul class="menu-links">
                                                <li><a href="index.aspx">Home </a></li>
                                                <li><a href="democategories/cafe/about.aspx">About Us </a></li>
                                                <li><a href="democategories/cafe/menu.aspx">Menu </a></li>
                                                <li><a href="democategories/cafe/offers.aspx">Offers </a></li>
                                                <li><a href="democategories/cafe/gallery.aspx">Gallery </a></li>
                                                <li><a href="democategories/cafe/branch.aspx">Branches </a></li>
                                                <li><a href="democategories/cafe/contact.aspx">Contact US </a></li>
                                                <li class="pr-10"><a href="democategories/cafe/order.aspx" class="btn btn-primary">Order Now </a></li>
                                                <li class="pr-15">|</li>
                                            </ul>
                                            <div class="search-cart">
                                                <div class="shpping-cart">
                                                    <a class="cart-btn" href="#"><i class="fa fa-sign-in icon"></i>
                                                        <!--<strong class="item">2</strong>-->
                                                    </a>
                                                    <div class="cart">
                                                        <div class="cart-total">
                                                            <a class="button" href="democategories/cafe/login.aspx">Sign In</a>
                                                            <a class="button black" href="democategories/cafe/login.aspx">Sign up</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </nav>
                    <!-- menu end -->
                </div>
            </header>

            <!--=================================
 header -->

            <!--=================================
 rev-slider -->

            <div id="lechefheader_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="le-chef-header5" data-source="gallery" style="background: #000000; padding: 0px;">
                <!-- START REVOLUTION SLIDER 5.4.8.1 fullscreen mode -->
                <div id="lechefheader" class="rev_slider fullscreenbanner" style="display: none;" data-version="5.4.8.1">
                    <ul>
                        <!-- SLIDE  -->
                        <li data-index="rs-6" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/5b4bd-04.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-7" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/4a149-01.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-8" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/59a02-05.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-29" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/e0a57-10.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-30" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/6a072-16.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-31" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/24574-11.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-32" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/b9fc9-06.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                        <!-- SLIDE  -->
                        <li data-index="rs-34" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/dummy.png" alt="" data-lazyload="assets/a8cf0-17.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
                    </ul>
                    <div style="" class="tp-static-layers">
                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption tp-shape tp-shapewrapper  tp-static-layer"
                            id="slider-4-layer-11"
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                            data-width="full"
                            data-height="full"
                            data-whitespace="nowrap"
                            data-type="shape"
                            data-basealign="slide"
                            data-responsive_offset="off"
                            data-responsive="off"
                            data-startslide="0"
                            data-endslide="7"
                            data-frames='[{"delay":250,"speed":600,"frame":"0","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                            data-textalign="['inherit','inherit','inherit','inherit']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            style="z-index: 5; background-color: rgba(0,0,0,0.35);">
                        </div>
                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption   rs-parallaxlevel-3 tp-static-layer"
                            id="slider-4-layer-13"
                            data-x="['center','center','center','center']" data-hoffset="['-1','-1','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['-123','-123','-190','-190']"
                            data-width="none"
                            data-height="none"
                            data-whitespace="nowrap"
                            data-type="image"
                            data-responsive_offset="off"
                            data-responsive="off"
                            data-startslide="0"
                            data-endslide="7"
                            data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:20px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                            data-textalign="['inherit','inherit','inherit','inherit']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            style="z-index: 6;">
                            <img src="assets/dummy.png" alt="" data-ww="['90px','90px','80px','80px']" data-hh="['90','90','80px','80px']" data-lazyload="assets/e0afd-dp_icon_white.png" data-no-retina>
                        </div>
                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption   rs-parallaxlevel-3 tp-static-layer"
                            id="slider-4-layer-5"
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['-14','-14','-70','-50']"
                            data-fontsize="['25','25','20','20']"
                            data-lineheight="['35','35','30','30']"
                            data-width="['640','640','480','320']"
                            data-height="['70','70','none','none']"
                            data-whitespace="normal"
                            data-type="text"
                            data-responsive_offset="off"
                            data-responsive="off"
                            data-startslide="0"
                            data-endslide="7"
                            data-frames='[{"delay":1000,"split":"chars","splitdelay":0.0200000000000000004163336342344337026588618755340576171875,"speed":1000,"split_direction":"random","frame":"0","from":"sX:1;sY:1;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                            data-textalign="['center','center','center','center']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[5,5,5,5]"
                            style="z-index: 7; min-width: 640px; max-width: 640px; max-width: 70px; max-width: 70px; white-space: normal; font-size: 25px; line-height: 35px; font-weight: 300; color: #ffffff; letter-spacing: 5px; font-family: Poppins; text-transform: uppercase;">
                            Cusine & Drinks beyond the boundaries of taste.
                        </div>
                        <!-- LAYER NR. 4 -->
                        <a href="democategories/cafe/menu.aspx">
             
                        <div class="tp-caption rev-btn   tp-rs-menulink rs-parallaxlevel-3 tp-static-layer"
                            id="slider-4-layer-6"
                            data-x="['center','center','center','center']" data-hoffset="['-150','-150','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['100','100','48','70']"
                            data-fontsize="['14','14','14','12']"
                            data-lineheight="['60','60','60','50']"
                            data-width="['280','280','280','240']"
                            data-height="none"
                            data-whitespace="nowrap"
                            data-type="button"
                            data-actions='[{"event":"click","action":"simplelink","target":"_self","url":"#lechefspecials","delay":""}]'
                            data-responsive_offset="off"
                            data-responsive="off"
                            data-startslide="0"
                            data-endslide="7"
                            data-frames='[{"delay":2000,"speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"200","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;fb:0;","style":"c:rgba(255,255,255,1);bg:rgb(0,0,0);"}]'
                            data-textalign="['center','center','center','center']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            style="z-index: 8; min-width: 280px; max-width: 280px; white-space: nowrap; font-size: 14px; line-height: 60px; font-weight: 500; color: #000000; letter-spacing: 3px; font-family: Poppins; background-color: rgb(255,255,255); outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer;">
                            <i class="fa-icon-star"></i>VIEW OUR SPECIALS
                        </div>
                            </a>
                        <!-- LAYER NR. 5 -->
                        <a href="democategories/cafe/order.aspx">
                        <div class="tp-caption rev-btn   tp-rs-menulink rs-parallaxlevel-3 tp-static-layer"
                            id="slider-4-layer-7"
                            data-x="['center','center','center','center']" data-hoffset="['150','150','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['100','100','130','142']"
                            data-fontsize="['14','14','14','12']"
                            data-lineheight="['60','60','60','50']"
                            data-width="['280','280','280','240']"
                            data-height="none"
                            data-whitespace="nowrap"
                            data-type="button"
                            data-actions='[{"event":"click","action":"simplelink","target":"_self","url":"#lechefcontact","delay":""}]'
                            data-responsive_offset="off"
                            data-responsive="off"
                            data-startslide="0"
                            data-endslide="7"
                            data-frames='[{"delay":2000,"speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"200","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;fb:0;","style":"c:rgba(255,255,255,1);bg:rgb(0,0,0);"}]'
                            data-textalign="['center','center','center','center']"
                            data-paddingtop="[0,0,0,0]"
                            data-paddingright="[0,0,0,0]"
                            data-paddingbottom="[0,0,0,0]"
                            data-paddingleft="[0,0,0,0]"
                            style="z-index: 9; min-width: 280px; max-width: 280px; white-space: nowrap; font-size: 14px; line-height: 60px; font-weight: 500; color: #000000; letter-spacing: 3px; font-family: Poppins; background-color: rgb(255,255,255); outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer;">
                            <i class="fa-icon-cutlery"></i>ORDER FOOD ONLINE
                        </div>
                            </a>
                    </div>
                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                </div>
            </div>
            <!-- END REVOLUTION SLIDER -->
            <script type="text/javascript">
                var revapi4,
                    tpj;
                (function () {
                    if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad); else onLoad();

                    function onLoad() {
                        if (tpj === undefined) { tpj = jQuery; if ("off" == "on") tpj.noConflict(); }
                        if (tpj("#lechefheader").revolution == undefined) {
                            revslider_showDoubleJqueryError("#lechefheader");
                        } else {
                            revapi4 = tpj("#lechefheader").show().revolution({
                                sliderType: "standard",
                                jsFileLocation: "//localhost/revslider/revslider/public/assets/js/",
                                sliderLayout: "fullscreen",
                                dottedOverlay: "none",
                                delay: 4000,
                                navigation: {
                                    onHoverStop: "off",
                                },
                                responsiveLevels: [1240, 1024, 778, 480],
                                visibilityLevels: [1240, 1024, 778, 480],
                                gridwidth: [1240, 1024, 778, 480],
                                gridheight: [868, 768, 960, 720],
                                lazyType: "single",
                                parallax: {
                                    type: "scroll",
                                    origo: "slidercenter",
                                    speed: 400,
                                    speedbg: 0,
                                    speedls: 0,
                                    levels: [5, 20, 15, 20, 25, 30, 35, 40, 45, 50, -5, -10, -15, -20, -25, 55],
                                },
                                shadow: 0,
                                spinner: "off",
                                stopLoop: "off",
                                stopAfterLoops: -1,
                                stopAtSlide: -1,
                                shuffle: "off",
                                autoHeight: "off",
                                fullScreenAutoWidth: "off",
                                fullScreenAlignForce: "off",
                                fullScreenOffsetContainer: "",
                                fullScreenOffset: "",
                                disableProgressBar: "on",
                                hideThumbsOnMobile: "off",
                                hideSliderAtLimit: 0,
                                hideCaptionAtLimit: 0,
                                hideAllCaptionAtLilmit: 0,
                                debugMode: false,
                                fallbacks: {
                                    simplifyAll: "off",
                                    nextSlideOnWindowFocus: "off",
                                    disableFocusListener: false,
                                }
                            });
                        }; /* END OF revapi call */
                    }; /* END OF ON LOAD FUNCTION */
                }()); /* END OF WRAPPING FUNCTION */
            </script>

            <!--=================================
 rev-slider -->

            <!--=================================
welcome -->

            <div id="rev_slider_6_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="le-chef-philosophy7" data-source="gallery" style="margin: 0px auto; background: #ffffff; padding: 0px; margin-top: 0px; margin-bottom: 0px;">
                <!-- START REVOLUTION SLIDER 5.4.8.1 fullwidth mode -->
                <div id="rev_slider_6_1" class="rev_slider fullwidthabanner" style="display: none;" data-version="5.4.8.1">
                    <ul>
                        <!-- SLIDE  -->
                        <li data-index="rs-10" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1000" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="assets/bw_bg1.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <div id="rrzt_10" class="rev_row_zone rev_row_zone_top" style="z-index: 5;">
                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption  "
                                    id="slide-10-layer-1"
                                    data-x="['left','left','left','left']" data-hoffset="['100','100','100','100']"
                                    data-y="['top','top','top','top']" data-voffset="['100','100','100','100']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="row"
                                    data-columnbreak="2"
                                    data-basealign="slide"
                                    data-responsive_offset="off"
                                    data-responsive="off"
                                    data-frames='[{"delay":10,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                    data-margintop="[200,200,150,100]"
                                    data-marginright="[0,0,0,0]"
                                    data-marginbottom="[200,200,150,100]"
                                    data-marginleft="[0,0,0,0]"
                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[100,50,50,50]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[100,50,50,50]"
                                    style="z-index: 5; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: #ffffff; letter-spacing: 0px;">
                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption  "
                                        id="slide-10-layer-2"
                                        data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                        data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                        data-width="none"
                                        data-height="none"
                                        data-whitespace="nowrap"
                                        data-type="column"
                                        data-responsive_offset="on"
                                        data-responsive="off"
                                        data-frames='[{"delay":"+990","speed":1000,"frame":"0","from":"x:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                        data-bgopacity="1"
                                        data-columnwidth="16.67%"
                                        data-verticalalign="top"
                                        data-margintop="[0,0,0,0]"
                                        data-marginright="[0,0,0,0]"
                                        data-marginbottom="[0,0,0,0]"
                                        data-marginleft="[0,0,0,0]"
                                        data-textalign="['center','center','center','center']"
                                        data-paddingtop="[20,20,20,20]"
                                        data-paddingright="[20,20,20,20]"
                                        data-paddingbottom="[20,20,20,20]"
                                        data-paddingleft="[20,20,20,20]"
                                        style="z-index: 6; background: url('assets/restaurant5.jpg') no-repeat center center; background-size: cover; width: 100%;">
                                        <!-- LAYER NR. 3 -->
                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                            id="slide-10-layer-7"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="100%"
                                            data-height="['480','480','200','150']"
                                            data-whitespace="normal"
                                            data-type="shape"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+100","speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[0,0,0,0]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[0,0,0,0]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 7; display: inline-block; border-color: rgb(255,255,255); border-style: solid; border-width: 1px 1px 1px 1px;">
                                        </div>
                                    </div>
                                    <!-- LAYER NR. 4 -->
                                    <div class="tp-caption  "
                                        id="slide-10-layer-3"
                                        data-x="['left','left','left','left']" data-hoffset="['347','100','100','100']"
                                        data-y="['top','top','top','top']" data-voffset="['0','100','100','100']"
                                        data-width="none"
                                        data-height="none"
                                        data-whitespace="nowrap"
                                        data-type="column"
                                        data-responsive_offset="on"
                                        data-responsive="off"
                                        data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                        data-bgopacity="1"
                                        data-columnwidth="66.67%"
                                        data-verticalalign="top"
                                        data-margintop="[0,0,0,0]"
                                        data-marginright="[0,0,0,0]"
                                        data-marginbottom="[0,0,0,0]"
                                        data-marginleft="[0,0,0,0]"
                                        data-textalign="['center','center','center','center']"
                                        data-paddingtop="[20,20,50,50]"
                                        data-paddingright="[100,50,0,0]"
                                        data-paddingbottom="[0,0,50,50]"
                                        data-paddingleft="[100,50,0,0]"
                                        style="z-index: 8; background: url('https://revolution.themepunch.com/wp-content/') no-repeat center center; background-size: cover; width: 100%;">
                                        <!-- LAYER NR. 5 -->
                                        <div class="tp-caption   tp-resizeme"
                                            id="slide-10-layer-5"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="100%"
                                            data-height="none"
                                            data-whitespace="normal"
                                            data-type="text"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+490","speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[0,0,0,0]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[30,30,30,30]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 9; min-width: 100%; max-width: 100%; white-space: normal; font-size: 40px; line-height: 50px; font-weight: 400; color: #000000; letter-spacing: -1px; display: inline-block; font-family: PT Serif;">
                                            We Specialize in Modern<br />
                                            Fusion Cuisine
                                        </div>
                                        <!-- LAYER NR. 6 -->
                                        <div class="tp-caption   tp-resizeme"
                                            id="slide-10-layer-6"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="100%"
                                            data-height="none"
                                            data-whitespace="normal"
                                            data-type="text"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+590","speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[0,0,0,0]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[40,40,40,40]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 10; min-width: 100%; max-width: 100%; white-space: normal; font-size: 17px; line-height: 30px; font-weight: 300; color: #000000; letter-spacing: 0px; display: inline-block; font-family: Poppins;">
                                            The highest quality, Fresh products paired with excellent craftsmanship in cooking. Drunken Panda was established in 2012 and has 20+ branches in kerala<br />
                                            <br />
                                            "For us everything starts with passion for food.“
                                        </div>
                                        <!-- LAYER NR. 7 -->
                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                            id="slide-10-layer-13"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="100%"
                                            data-height="1"
                                            data-whitespace="normal"
                                            data-type="shape"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[0,0,0,0]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[0,0,0,0]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 13; display: block;">
                                        </div>
                                        <!-- LAYER NR. 8 -->
                                        <div class="tp-caption   tp-resizeme"
                                            id="slide-10-layer-8"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="none"
                                            data-height="none"
                                            data-whitespace="normal"
                                            data-type="image"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+690","speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[0,0,0,0]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[0,0,0,0]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 11; display: inline-block;">
                                            <img src="assets/d7e8e-dp_top.png" alt="" data-ww="['100px','100px','100px','100px']" data-hh="['100px','100px','100px','100px']" data-no-retina>
                                        </div>
                                        <!-- LAYER NR. 9 -->
                                        <div class="tp-caption   tp-resizeme"
                                            id="slide-10-layer-9"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="100%"
                                            data-height="none"
                                            data-whitespace="normal"
                                            data-type="text"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+790","speed":1000,"frame":"0","from":"y:50px;opacity:0;fb:10px;","to":"o:1;fb:0;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[20,20,20,20]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[0,0,0,0]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 12; min-width: 100%; max-width: 100%; white-space: normal; font-size: 25px; line-height: 25px; font-weight: 400; color: #000000; letter-spacing: -1px; display: block; font-family: PT Serif;">
                                            Team Drunken Panda
                                        </div>
                                    </div>
                                    <!-- LAYER NR. 10 -->
                                    <div class="tp-caption  "
                                        id="slide-10-layer-11"
                                        data-x="['left','left','left','left']" data-hoffset="['100','100','100','100']"
                                        data-y="['top','top','top','top']" data-voffset="['100','100','100','100']"
                                        data-width="none"
                                        data-height="none"
                                        data-whitespace="nowrap"
                                        data-type="column"
                                        data-responsive_offset="on"
                                        data-responsive="off"
                                        data-frames='[{"delay":"+990","speed":1000,"frame":"0","from":"x:50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                        data-bgopacity="1"
                                        data-columnwidth="16.67%"
                                        data-verticalalign="top"
                                        data-margintop="[0,0,0,0]"
                                        data-marginright="[0,0,0,0]"
                                        data-marginbottom="[0,0,0,0]"
                                        data-marginleft="[0,0,0,0]"
                                        data-textalign="['inherit','inherit','inherit','inherit']"
                                        data-paddingtop="[20,20,20,20]"
                                        data-paddingright="[20,20,20,20]"
                                        data-paddingbottom="[20,20,20,20]"
                                        data-paddingleft="[20,20,20,20]"
                                        style="z-index: 14; background: url('assets/restaurant2-1.jpg') no-repeat center center; background-size: cover; width: 100%;">
                                        <!-- LAYER NR. 11 -->
                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                            id="slide-10-layer-12"
                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                            data-width="100%"
                                            data-height="['480','480','200','150']"
                                            data-whitespace="normal"
                                            data-type="shape"
                                            data-responsive_offset="on"
                                            data-frames='[{"delay":"+100","speed":1000,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                            data-margintop="[0,0,0,0]"
                                            data-marginright="[0,0,0,0]"
                                            data-marginbottom="[0,0,0,0]"
                                            data-marginleft="[0,0,0,0]"
                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                            data-paddingtop="[0,0,0,0]"
                                            data-paddingright="[0,0,0,0]"
                                            data-paddingbottom="[0,0,0,0]"
                                            data-paddingleft="[0,0,0,0]"
                                            style="z-index: 15; display: inline-block; border-color: rgb(255,255,255); border-style: solid; border-width: 1px 1px 1px 1px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                </div>
            </div>
            <!-- END REVOLUTION SLIDER -->
            <script type="text/javascript">
                var revapi6,
                    tpj;
                (function () {
                    if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad); else onLoad();

                    function onLoad() {
                        if (tpj === undefined) { tpj = jQuery; if ("off" == "on") tpj.noConflict(); }
                        if (tpj("#rev_slider_6_1").revolution == undefined) {
                            revslider_showDoubleJqueryError("#rev_slider_6_1");
                        } else {
                            revapi6 = tpj("#rev_slider_6_1").show().revolution({
                                sliderType: "hero",
                                jsFileLocation: "//localhost/revslider/revslider/public/assets/js/",
                                sliderLayout: "fullwidth",
                                dottedOverlay: "none",
                                delay: 9000,
                                navigation: {
                                },
                                viewPort: {
                                    enable: true,
                                    outof: "wait",
                                    visible_area: "80%",
                                    presize: true
                                },
                                responsiveLevels: [1240, 1024, 778, 480],
                                visibilityLevels: [1240, 1024, 778, 480],
                                gridwidth: [1240, 1024, 778, 480],
                                gridheight: [868, 768, 960, 720],
                                lazyType: "none",
                                parallax: {
                                    type: "scroll",
                                    origo: "slidercenter",
                                    speed: 400,
                                    speedbg: 0,
                                    speedls: 0,
                                    levels: [5, 10, 15, 20, 25, 30, 35, 40, 50, -10, -20, -30, -40, -50, 51, 55],
                                },
                                shadow: 0,
                                spinner: "off",
                                autoHeight: "off",
                                disableProgressBar: "on",
                                hideThumbsOnMobile: "off",
                                hideSliderAtLimit: 0,
                                hideCaptionAtLimit: 0,
                                hideAllCaptionAtLilmit: 0,
                                debugMode: false,
                                fallbacks: {
                                    simplifyAll: "off",
                                    disableFocusListener: false,
                                }
                            });
                        }; /* END OF revapi call */
                    }; /* END OF ON LOAD FUNCTION */
                }()); /* END OF WRAPPING FUNCTION */
            </script>

            <!--=================================
welcome -->

            <!--=================================
menu -->

            <section class="page-section-pb bg-overlay-black-50 parallax" data-jarallax='{"speed": 0.6}' style="background-image: url(democategories/cafe/images/01.jpg);">
                <div class="bg-top-before pt-150"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="section-title dark-bg text-center">
                                <h6 class="subtitle">Week <span class="theme-color">Specials </span></h6>
                                <h2 class="title">Drunken Panda menu  </h2>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="cafe-menu">
                                <h4 class="text-white">Chikken Fried Momos <span class="prize text-white float-right">140₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                            <div class="divider dashed light mt-30 mb-30"></div>
                            <div class="cafe-menu">
                                <h4 class="text-white">Mississippi Mud <span class="prize text-white float-right">110₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                            <div class="divider dashed light mt-30 mb-30"></div>
                            <div class="cafe-menu">
                                <h4 class="text-white">Classic Mojito <span class="prize text-white float-right">60₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                            <div class="divider dashed light mt-30 mb-30"></div>
                            <div class="cafe-menu">
                                <h4 class="text-white">Blue Lime<span class="prize text-white float-right">70₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="cafe-menu">
                                <h4 class="text-white">Mixed Froot Falooda <span class="prize text-white float-right">90₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                            <div class="divider dashed light mt-30 mb-30"></div>
                            <div class="cafe-menu">
                                <h4 class="text-white">French Fries Saulty <span class="prize text-white float-right">60₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                            <div class="divider dashed light mt-30 mb-30"></div>
                            <div class="cafe-menu">
                                <h4 class="text-white">Double Panda Chikken Burger <span class="prize text-white float-right">180₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                            <div class="divider dashed light mt-30 mb-30"></div>
                            <div class="cafe-menu">
                                <h4 class="text-white">Chikken Nuggets <span class="prize text-white float-right">70₹</span></h4>
                                <p class="text-white">A Latte is a coffee drink made with espresso and steamed milk A Latte is a coffee drink made with espresso and steamed milk.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 text-center mt-30">
                            <a href="democategories/cafe/menu.aspx" class="button icon">View Full Menu <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </section>

            <!--=================================
menu -->

            <!--=================================
 portfolio -->

            <section class="page-section-ptb white-bg">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section-title text-center">
                                <h6 class="subtitle">Lorem  <span class="theme-color">ipsum dolor sit amet.</span> </h6>
                                <h2 class="title">Drunken Panda gallery </h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="isotope popup-gallery columns-3 no-padding">
                                <asp:Repeater ID="dllGallery" runat="server" OnItemDataBound="dllGallery_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="grid-item">
                                            <div class="portfolio-item">
                                                <asp:Label ID="label1" runat="server" Text='<%# Eval("gry_Image") %>' Visible="false"></asp:Label>
                                                <asp:Image ID="imgSing" runat="server" ImageUrl="../UploadFiles/Images/default.png" />
                                                <div class="portfolio-overlay">
                                                    <h4 class="text-white"><a href="#">
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("gry_Name") %>'></asp:Label></a> </h4>
                                                    <span class="text-white"><a href="#">
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("gry_Description") %>'></asp:Label></a></span>
                                                </div>
                                                <%--<a class="popup portfolio-img" href="democategories/cafe/images/02.jpg"><i class="fa fa-arrows-alt"></i></a>--%>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--=================================
 portfolio -->

            <!--=================================
 testimonial -->

            <section class="page-section-pb bg-overlay-black-70 parallax pb-0" data-jarallax='{"speed": 0.6}' style="background-image: url(democategories/cafe/images/08.jpg);">
                <div class="bg-top-before pb-150"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="owl-carousel" data-nav-dots="true" data-items="1" data-md-items="1" data-sm-items="1">
                                <asp:Repeater ID="dllTestimonial" runat="server">
                                    <ItemTemplate>
                                        <div class="item">
                                            <div class="testimonial text-white clean">
                                                <div class="testimonial-avatar">
                                                    <img alt="" src="images/dummy.jpg">
                                                </div>
                                                <%--<div class="testimonial-info">Absolutely LOVED it! The coffee was great, as was the atmosphere and the staff. The artwork and scenery were beautiful! I'm telling everyone I know! I will definitely frequent Taste and See Coffee Shop & Gallery!!</div>--%>
                                                <div class="testimonial-info"><asp:Label ID="Label2" runat="server" Text='<%# Eval("tst_Comment") %>'></asp:Label></div>
                                                <div class="author-info"><strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("tst_Name") %>'></asp:Label></strong> </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="bg-bottom-before pb-150"></div>
            </section>

            <!--=================================
 testimonial -->


            <!--=================================
 testimonial -->

            <section class="page-section-pb gray-bg parallax" data-jarallax='{"speed": 0.6}' style="background-image: url(democategories/cafe/images/bg-03.jpg); background-repeat: no-repeat;">
                <div class="bg-top-before pb-150"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="cafe-box">
                                <div class="section-title text-center">
                                    <h6 class="subtitle">Partner  <span class="theme-color">with us.</span> </h6>
                                    <h2 class="title">Franchise Enquires</h2>
                                </div>
                                <div class="opening-time">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="list-unstyled">
                                                <li>Deepak Trosky(Relations Manager)<span class="float-right theme-color"><a href="tel:+919946790086">+91 9946790086</a></span></li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--=================================
 testimonial -->

            <!--=================================
 footer -->

            <footer class="footer page-section-pt black-bg pt-40">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3  col-sm-6 xs-mb-30">
                            <div class="footer-hedding">
                                <h6 class="text-white mb-30 mt-10 text-uppercase">Follow us</h6>
                                <div class="footer-social-big">
                                    <ul>
                                        <li class="facebook"><a href="https://www.facebook.com/Drunkenpandakerala/" target="_blank"><i class="fa fa-facebook"></i><span>Facebook</span></a> </li>
                                        <li class="instagram"><a href="https://www.instagram.com/invites/contact/?i=1py5p02nohvoa&utm_content=3qd76hs" target="_blank"><i class="fa fa-instagram"></i><span>Instagram</span> </a></li>
                                        <li class="youtube"><a href="#"><i class="fa fa-youtube"></i><span>Youtube</span> </a></li>
                                    </ul>
                                    <p class="mt-20">Drunken panda is cafe concept created by a group of entrepreneurs. Main concept of it is to give an access to major continental and fast food to all over south india.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-sm-6 sm-mb-30">
                            <div class="footer-useful-link footer-hedding">
                                <h6 class="text-white mb-30 mt-10 text-uppercase">Navigation</h6>
                                <ul>
                                    <li><a href="index.aspx">Home</a></li>
                                    <li><a href="democategories/cafe/about.aspx">About Us</a></li>
                                    <li><a href="democategories/cafe/menu.aspx">Menu</a></li>
                                    <li><a href="democategories/cafe/branch.aspx">Branches</a></li>
                                    <li><a href="democategories/cafe/contact.aspx">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-sm-6 sm-mb-30">
                            <div class="footer-useful-link footer-hedding">
                                <h6 class="text-white mb-30 mt-10 text-uppercase">Useful Link</h6>
                                <ul>
                                    <li><a href="democategories/cafe/login.aspx">Create Account</a></li>
                                    <li><a href="#">Brand Policies</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-5 col-sm-6 xs-mb-30">
                            <div class="footer-hedding">
                                <h6 class="text-white mb-30 mt-10 text-uppercase">Gallery</h6>
                                <div class="footer-gallery clearfix">
                                    <ul>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/01.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/02.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/03.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/04.gif" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/05.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/06.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/07.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/08.gif" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/09.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/10.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/01.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/02.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/03.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/05.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/06.jpg" alt="">
                                        </a></li>
                                        <li><a href="#">
                                            <img class="img-fluid" src="images/portfolio/small/07.jpg" alt="">
                                        </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="footer-widget mt-20">
                        <div class="row">
                            <div class="col-lg-10 col-md-6 xs-mb-20">
                                <p class="mt-15">
                                    &copy;Copyright <span id="copyright">
                                        <script>document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))</script>
                                    </span>Design & Developed by<a href="#"> Drunken Panda </a>All Rights Reserved
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </footer>

            <!--=================================
 footer -->

        </div>



        <div id="back-to-top"><a class="top arrow" href="#top"><i class="fa fa-angle-up"></i><span>TOP</span></a></div>

        <!--=================================
 jquery -->

        <!-- jquery -->
        <script src="js/jquery-3.3.1.min.js"></script>

        <!-- plugins-jquery -->
        <script src="js/plugins-jquery.js"></script>

        <!-- plugin_path -->
        <script>var plugin_path = 'js/';</script>

        <!-- REVOLUTION JS FILES -->
        <script src="revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="revolution/js/jquery.themepunch.revolution.min.js"></script>

        <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
        <script src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.video.min.js"></script>
        <!-- revolution custom -->
        <script src="revolution/js/revolution-custom.js"></script>

        <!-- custom -->
        <script src="js/custom.js"></script>

        <!--Start of Tawk.to Script-->
        <script type="text/javascript">
            var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
            (function () {
                var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = 'https://embed.tawk.to/5f9538ca194f2c4cbeb8c5a9/default';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
        <!--End of Tawk.to Script-->

        <div id='tawk_5f9538ca194f2c4cbeb8c5a9'></div>


        <!--Start of Tawk.to Script-->
        <script type="text/javascript">
            var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
            (function () {
                var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = 'https://embed.tawk.to/5f9538ca194f2c4cbeb8c5a9/default';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
        <!--End of Tawk.to Script-->
    </form>
</body>
</html>
