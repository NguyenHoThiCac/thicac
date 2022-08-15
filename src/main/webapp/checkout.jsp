
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
    <title>Checkout || Truemart Responsive Html5 Ecommerce Template</title>
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
                    <div class="col-xl-3 col-lg-4 d-none d-lg-block">
<jsp:include page="catalog.jsp"></jsp:include>
                    </div>
                </div>
                <!-- Vertical Menu End Here -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Breadcrumb Start -->


        <!-- Categorie Menu & Slider Area End Here -->
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="Home">Trang chủ</a></li>
                        <li class="active"><a href="DisplayCheck">Thanh Toán</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        <!-- coupon-area start -->
        <div class="coupon-area pt-100 pt-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="coupon-accordion">
                            <!-- ACCORDION START -->
                            <a href="DisplayLogin"> <h3>Bạn đã có tài khoản? <span id="showlogin">Nhấn vào đây để đăng nhập.</span></h3></a>

                            <!-- ACCORDION END -->


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- coupon-area end -->
        <!-- checkout-area start -->
        <div class="checkout-area pb-100 pt-15 pb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                            <div class="well mb-sm-30">
                                <div class="new-customer">
                                    <h3 class="custom-title">khách hàng mới</h3>
                                    <p class="mtb-10"><strong>Đăng kí</strong></p>
                                    <p>Bằng cách tạo tài khoản, bạn sẽ có thể mua sắm nhanh hơn, cập nhật trạng thái đơn hàng và theo dõi các đơn hàng bạn đã thực hiện trước đó</p>
                                    <a class="customer-btn" href="DisplayRegister">tiếp tục</a>
                                </div>
                            </div>
                    </div><c:set var="o" value="${sessionScope.cart}"/>
                    <div class="col-lg-6 col-md-6">
                        <div class="your-order">
                            <h3>Hóa đơn của bạn</h3>
                            <div class="your-order-table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-name">Sản phẩm</th>
                                            <th class="product-total">Tổng</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                    <c:forEach items="${o.items}" var="i">
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                    ${i.product.name} <span class="product-quantity"> × ${i.quanity}</span>
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">${i.product.priceNew*i.quanity} VNĐ</span>
                                            </td>
                                        </tr>
<%--                                    //end--%></c:forEach>


                                    </tbody>
                                    <tfoot>
                                        <tr class="cart-subtotal">
                                            <th>Tổng tiền giỏ hàng</th>
                                            <td><span class="amount">${o.totalMoney} VND</span></td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>Tổng tiền hóa đơn</th>
                                            <td><span class=" total amount">${o.totalMoney*1.2} VND</span>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="wc-proceed-to-checkout">
                                <a href="CheckOut" methods="post">Thanh Toán
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- checkout-area end -->

        <!-- Support Area End Here -->
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