<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="img\favicon.ico">
    <!-- Fontawesome css -->
    <link rel="stylesheet" href="css\font-awesome.min.css">
    <!-- Ionicons css -->
    <link rel="stylesheet" href="css\ionicons.min.css">
    <!-- linearicons css -->
    <link rel="stylesheet" href="css\linearicons.css">
    <!-- Nice select css -->
    <link rel="stylesheet" href="css\nice-select.css">
    <!-- Jquery fancybox css -->
    <link rel="stylesheet" href="css\jquery.fancybox.css">
    <!-- Jquery ui price slider css -->
    <link rel="stylesheet" href="css\jquery-ui.min.css">
    <!-- Meanmenu css -->
    <link rel="stylesheet" href="css\meanmenu.min.css">
    <!-- Nivo slider css -->
    <link rel="stylesheet" href="css\nivo-slider.css">
    <!-- Owl carousel css -->
    <link rel="stylesheet" href="css\owl.carousel.min.css">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <!-- Custom css -->
    <link rel="stylesheet" href="css\default.css">
    <!-- Main css -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css\responsive.css">

    <!-- Modernizer js -->
    <script src="js\vendor\modernizr-3.5.0.min.js"></script>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main Wrapper Start Here -->
<div class="wrapper">
    <!-- Banner Popup Start --- BANNER -->
    <div class="popup_banner">
        <span class="popup_off_banner">×</span>
        <div class="banner_popup_area">
            <img src="img\banner\banner1.png" alt="">
        </div>
    </div>
<jsp:include page="header.jsp"></jsp:include>

    <!--------------H--- ------------->


    <!-- Main Header Area End Here -->
    <!-- Categorie Menu & Slider Area Start Here -->
    <div class="main-page-banner pb-50 off-white-bg">
        <div class="container">
            <!--------- cac thanh menu doc  -------- -->
            <div class="row">
                <!-- Vertical Menu Start Here -->

                <jsp:include page="catalog.jsp"></jsp:include>

                <!-- Vertical Menu End Here -->
                <!-- Slider Area Start Here -->

                <!--------- SLIDE  -------- -->

                <div class="col-xl-9 col-lg-8 slider_box">
                    <div class="slider-wrapper theme-default">
                        <!-- Slider Background  Image Start-->
                        <div id="slider" class="nivoSlider">
                            <a href="Shop"><img src="img\slider\1.jpg" data-thumb="img/slider/1.jpg" alt="" title="#htmlcaption"></a>
                            <a href="Shop"><img src="img\slider\2.jpg" data-thumb="img/slider/2.jpg" alt="" title="#htmlcaption2"></a>
                        </div>
                        <!-- Slider Background  Image Start-->
                    </div>
                </div>
                <!-- Slider Area End Here -->
            </div>
            <!--------- SLIDE  -------- -->
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>


    <!--------- PHAN HOT DEALS-------- -->

    <div class="hot-deal-products off-white-bg pb-90 pb-sm-50">
        <div class="container">
            <!-- Product Title Start -->
            <div class="post-title pb-30">
                <h2> sản phẩm khuyến mãi
                </h2>
            </div>
            <!-- Product Title End -->
            <!-- Hot Deal Product Activation Start -->

            <div class="hot-deal-active owl-carousel">
                <!-- Single Product Start -->
                <c:forEach items="${listCheepProduct}" var="o">
                    <div class="single-product">
                        <!-- Product Image Start -->
                        <div class="pro-img">
                            <a href="Detail?productID=${o.productID}">
                                <img class="primary-img" src="${o.image1}" alt="single-product">

                            </a>
                        </div>
                        <!-- Product Image End -->
                        <!-- Product Content Start -->
                        <div class="pro-content">
                            <div class="pro-info">
                                <h4><a href="product.html">${o.name}</a></h4>
                                <p><span class="price">${o.priceNew}</span><del class="prev-price">${o.price}</del></p>
                                <div class="label-product l_sale">${o.sale}<span class="symbol-percent">%</span></div>
                            </div>
                            <div class="pro-actions">
                                <div class="actions-primary">
                                    <a href="Buy?pID=${o.productID}" title="Thêm vào giỏ hàng"> Mua</a>
                                </div>
                                <div class="actions-secondary">
                                    <a href="Fav?pID=${o.productID}" title="Thêm vào yêu thích"><i class="lnr lnr-heart"></i> <span>Yêu thích</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Product Content End -->
                    </div>
                </c:forEach>

                <!-- Single Product End -->

            </div>
            <!-- Hot Deal Product Active End -->

        </div>
        <!-- Container End -->
    </div>

    <!--------- PHAN HOT DEALS-------- -->







    <!-------------------------- PHẦN YOU MAY LIKE sản phẩm mới ------------------------- -->

    <div class="like-product ptb-95 off-white-bg pt-sm-50 pb-sm-55 ">
        <div class="container">
            <div class="like-product-area">
                <h2 class="section-ttitle2 mb-30">Sản Phẩm Mới </h2>
                <!-- Arrivals Product Activation Start Here -->
                <div class="like-pro-active owl-carousel">
                    <!-- Double Product Start -->



                        <!-- Single Product Start -->
                        <c:forEach items="${listNewProduct}" var="o">
                        <div class="single-product">
                            <!-- Product Image Start -->
                            <div class="pro-img">
                                <a href="Detail?productID=${o.productID}">
                                    <img class="primary-img" src="${o.image1}" alt="single-product">

                                </a>
                            </div>
                            <!-- Product Image End -->
                            <!-- Product Content Start -->
                            <div class="pro-content">
                                <div class="pro-info">
                                    <h4><a href="product.html">${o.name}</a></h4>
                                    <p><span class="price">${o.priceNew}</span><del class="prev-price">${o.price}</del></p>
                                    <div class="label-product l_sale">${o.sale}<span class="symbol-percent">%</span></div>
                                </div>
                                <div class="pro-actions">
                                    <div class="actions-primary">
                                        <a href="Buy?pID=${o.productID}" title="Thêm vào giỏ hàng"> Mua</a>
                                    </div>
                                    <div class="actions-secondary">
                                        <a href="Fav?pID=${o.productID}" title="Thêm vào yêu thích"><i class="lnr lnr-heart"></i> <span>Yêu thích</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- Product Content End -->
                        </div>
                        </c:forEach>
                        <!-- Single Product End -->
                    </div>
                    <!-- Double Product End -->


                    <!-- Arrivals Product Activation End Here -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!------- phan 3---------->


    </div>

    <!-------------------------- PHẦN YOU MAY LIKE ------------------------- -->




<jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Area End Here -->
    <!-- Quick View Content Start -->
    <!-- Quick View Content End -->
</div>
<!-- Main Wrapper End Here -->

<!-- jquery 3.2.1 -->
<script src="js\vendor\jquery-3.2.1.min.js"></script>
<!-- Countdown js -->
<script src="js\jquery.countdown.min.js"></script>
<!-- Mobile menu js -->
<script src="js\jquery.meanmenu.min.js"></script>
<!-- ScrollUp js -->
<script src="js\jquery.scrollUp.js"></script>
<!-- Nivo slider js -->
<script src="js\jquery.nivo.slider.js"></script>
<!-- Fancybox js -->
<script src="js\jquery.fancybox.min.js"></script>
<!-- Jquery nice select js -->
<script src="js\jquery.nice-select.min.js"></script>
<!-- Jquery ui price slider js -->
<script src="js\jquery-ui.min.js"></script>
<!-- Owl carousel -->
<script src="js\owl.carousel.min.js"></script>
<!-- Bootstrap popper js -->
<script src="js\popper.min.js"></script>
<!-- Bootstrap js -->
<script src="js\bootstrap.min.js"></script>
<!-- Plugin js -->
<script src="js\plugins.js"></script>
<!-- Main activaion js -->
<script src="js\main.js"></script>
</body>

</html>