<%--
  Created by IntelliJ IDEA.
  User: Khanh Huy Studios
  Date: 08/01/2022
  Time: 8:49 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shop</title>
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
    <!-- Banner Popup Start -->
    <div class="popup_banner">
        <span class="popup_off_banner">×</span>
        <div class="banner_popup_area">
            <img src="img\banner\banner1.png" alt="">
        </div>
    </div>
    <!-- Banner Popup End -->
    <!-- Newsletter Popup Start -->

    <!-- Newsletter Popup End -->
    <!-- Main Header Area Start Here -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- danh mục sản phẩm      -->
    <div class="main-page-banner home-3">
        <div class="container">
            <div class="row">
                <!-- Vertical Menu Start Here -->
                <jsp:include page="catalog.jsp"></jsp:include>
            </div>
            <!-- Vertical Menu End Here -->
        </div>
        <!-- Row End -->
    </div>
    <!-- danh mục sản phẩm end Here  -->
    <!-- Container End -->
</div>




<!-- Categorie Menu & Slider Area End Here -->
<!-- Breadcrumb Start -->
<div class="breadcrumb-area mt-30">
    <div class="container">
        <div class="breadcrumb">
            <ul class="d-flex align-items-center">
                <li><a href="Home">Trang chủ</a></li>
                <li class="active"><a href="Shop">Shop</a></li>
            </ul>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- Breadcrumb End -->
<!-- Shop Page Start -->
<div class="like-product ptb-95 off-white-bg pt-sm-50 pb-sm-55 ">
    <div class="container">
        <div class="like-product-area">
            <h2 class="section-ttitle2 mb-30">Sản Phẩm  </h2>
            <!-- Arrivals Product Activation Start Here -->
            <div class="main-categorie mb-all-40">
                <div class="tab-content fix">
                    <div id="grid-view" class="tab-pane fade show active">
                        <div class="row"><!-- Single Product Start -->
                <c:forEach items="${listProduct}" var="o">
                            <div class="col-lg-3 col-md-3 col-sm-4 col-4">
                            <div class="single-product">
                        <!-- Product Image Start -->
                        <div class="pro-img">
                            <a href="Detail?productID=${o.productID}">
                                <img class="primary-img" src="${o.image1}" alt="single-product">

                            </a>
<%--                            <a href="Shop?quickID=${o.productID}" class="quick_view" data-toggle="modal" data-target="#myModal" title="Quick View"><i class="lnr lnr-magnifier"></i></a>--%>
                        </div>
                        <!-- Product Image End -->
                        <!-- Product Content Start -->
                        <div class="pro-content">
                            <div class="pro-info">
                                <h4><a href="#">${o.name}</a></h4>
                                <p><span class="price">${o.priceNew}</span><del class="prev-price">${o.price}</del></p>
                                <div class="label-product l_sale">${o.sale}<span class="symbol-percent">%</span></div>
                            </div>
                            <div class="pro-actions">
                                <div class="actions-primary">
                                    <a href="Buy?pID=${o.productID}" methods="Post" title="Thêm vào giỏ hàng">  Mua</a>
                                </div>

                                <div class="actions-secondary">
                                    <a href="Fav?pID=${o.productID}" title="Thêm vào yêu thích"><i class="lnr lnr-heart"></i> <span>Yêu thích</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Product Content End -->
                    </div>
                    </div>
                </c:forEach>

                <!-- Single Product End -->
            </div>
            </div>
            </div>
            </div>

            <!-- main-product-tab-area-->
        </div>
    </div>
    <!-- Container End -->

    <!-------------------------- PHẦN YOU MAY LIKE 22222------------------------- -->
    <div class="pro-pagination">
        <span class="grid-item-list">                      (${endP} trang)</span>

        <div class="product-pagination">
            <ul class="blog-pagination">
                <c:forEach begin="1" end="${endP}" var="i">
                <li class="${tag==i?"active":""}"><a href="Shop?index=${i}">${i}     </a></li>
                </c:forEach>
            </ul>

        </div>
    </div>


</div>

<!-------------------------- PHẦN YOU MAY LIKE ------------------------- -->



<!-- Support Area End Here -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Area End Here --><!-- Quick View Content Start -->
<div class="main-product-thumbnail quick-thumb-content">
    <div class="container">
        <!-- The Modal -->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">


                        <div class="row">
                            <!-- Main Thumbnail Image Start -->
                            <div class="col-lg-5 col-md-6 col-sm-5">
                                <!-- Thumbnail Large Image start -->
                                <div class="tab-content">
                                    <div id="thumb1" class="tab-pane fade show active">
                                        <a data-fancybox="images" href="${QuickView.image1}"><img src="${QuickView.image1}" alt="product-view"></a>
                                    </div>
                                    <div id="thumb2" class="tab-pane fade">
                                        <a data-fancybox="images" href="${QuickView.image2}"><img src="${QuickView.image2}" alt="product-view"></a>
                                    </div>
                                    <div id="thumb3" class="tab-pane fade">
                                        <a data-fancybox="images" href="${QuickView.image3}"><img src="${QuickView.image3}" alt="product-view"></a>
                                    </div>

                                </div>
                                <!-- Thumbnail Large Image End -->
                                <!-- Thumbnail Image End -->
                                <div class="product-thumbnail mt-20">
                                    <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                        <a class="active" data-toggle="tab" href="#thumb1"><img src="${QuickView.image1}" alt="product-thumbnail"></a>
                                        <a data-toggle="tab" href="#thumb2"><img src="${QuickView.image2}" alt="product-thumbnail"></a>
                                        <a data-toggle="tab" href="#thumb3"><img src="${QuickView.image3}" alt="product-thumbnail"></a>

                                    </div>
                                </div>
                                <!-- Thumbnail image end -->
                            </div>
                            <!-- Main Thumbnail Image End -->
                            <!-- Thumbnail Description Start -->
                            <div class="col-lg-7 col-md-6 col-sm-7">
                                <div class="thubnail-desc fix mt-sm-40">
                                    <h3 class="product-header">${QuickView.name}</h3>
                                    <div class="pro-price mtb-30">
                                        <p class="d-flex align-items-center"><span class="prev-price">${QuickView.priceNew}</span><span class="price">${QuickView.price}</span><span class="saving-price">save ${QuickView.sale}%</span></p>
                                    </div>
                                    <p class="mb-20 pro-desc-details">${QuickView.detail}</p>
                                    <div class="color mb-20">
                                        <label>Color</label>
                                        <select class="">
                                            <option>${QuickView.color}</option>

                                        </select>
                                    </div>

                                    <div class="box-quantity d-flex">
                                        <form action="#">
                                            <input class="quantity mr-40" type="number" min="1" value="1">
                                        </form>
                                        <a class="add-cart" href="cart.jsp">add to cart</a>
                                    </div>
                                    <div class="pro-ref mt-15">
                                        <p><span class="in-stock"><i class="ion-checkmark-round"></i> IN STOCK</span></p>
                                    </div>
                                </div>
                            </div>
                            <!-- Thumbnail Description End -->
                        </div>

                    </div>
                    <!-- Modal footer -->
                    <div class="custom-footer">
                        <div class="socila-sharing">
                            <ul class="d-flex">
                                <li>share</li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- Quick View Content End -->

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