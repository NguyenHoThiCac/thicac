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
    <title>Wishlist || Truemart Responsive Html5 Ecommerce Template</title>
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
        <!-- Categorie Menu & Slider Area End Here -->
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="Home">Trang chủ</a></li>
                        <li class="active"><a href="DisplayFav">Yêu thích</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        <!-- Wish List Start -->
        <div class="cart-main-area wish-list ptb-100 ptb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <!-- Form Start -->
                        <form action="#">
                            <!-- Table Content Start -->
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-remove">Xóa</th>
                                            <th class="product-thumbnail">Ảnh</th>
                                            <th class="product-name">Sản phẩm</th>
                                            <th class="product-price">Đơn giá</th>
                                            <th class="product-quantity">Tình trạng tồn kho</th>
                                            <th class="product-subtotal">Thêm vào giỏ hàng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <c:set var="o" value="${sessionScope.fav}"/>

                                            <c:forEach items="${o.items}" var="i">
                                            <td class="product-remove">
                                                <button>  <a href="RemoveFav?id=${i.product.productID}">X</a></button>
                                            </td>                                            <td class="product-thumbnail">
                                                <a href="Detail?productID=${i.product.productID}"><img src="${i.product.image1}" alt="cart-image"></a>
                                            </td>
                                            <td class="product-name"><a href="${i.product.productID}">${i.product.name}</a></td>
                                            <td class="product-price"><span class="amount">${i.product.priceNew} VND</span></td>
                                            <td class="product-stock-status"><span>còn trong kho</span></td>
                                            <td class="product-add-to-cart"><a href="Buy?pID=${i.product.productID}">Thêm vào giỏ hàng</a></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Table Content Start -->
                        </form>
                        <!-- Form End -->
                    </div>
                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Wish List End -->
        <!-- Support Area Start Here -->

        <!-- Support Area End Here -->
<jsp:include page="footer.jsp"></jsp:include>        <!-- Footer Area End Here -->
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