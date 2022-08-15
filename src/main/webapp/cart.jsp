<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<c:set var="o" value="${sessionScope.cart}"/>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart || Truemart Responsive Html5 Ecommerce Template</title>
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
<jsp:include page="header.jsp"></jsp:include>        <!-- Main Header Area End Here -->
        <!-- Categorie Menu & Slider Area Start Here -->
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
        <!-- Breadcrumb Start -->
        <!-- Categorie Menu & Slider Area End Here -->
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="Home">Trang chủ</a></li>
                        <li class="active"><a href="cart.jsp">Giỏ hàng</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        <!-- Cart Main Area Start -->
        <div class="cart-main-area ptb-100 ptb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <!-- Form Start -->
                        <form action="#">
                            <!-- Table Content Start -->
                            <div class="table-content table-responsive mb-45">
                                <table>
                                    <thead>
                                    <tr>
                                        <th class="product-thumbnail">Ảnh</th>
                                        <th class="product-name">Sản phẩm</th>
                                        <th class="product-price">Giá</th>
                                        <th class="product-quantity">Số lượng</th>
                                        <th class="product-subtotal">Tổng</th>
                                        <th class="product-remove">Xóa</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="o" value="${sessionScope.cart}"/>

                                    <c:forEach items="${o.items}" var="i">
                                    <tr>
                                            <td class="product-thumbnail"><a href="Detail?productID=${i.product.productID}"><img src="${i.product.image1}" alt="cart-image"></a></td>
                                        <td class="product-name"><h6><a href="Detail?productID=${i.product.productID}">${i.product.name} </a></h6></td>
                                            <td class="product-price"><h6><a href="Detail?productID=${i.product.productID}">${i.product.priceNew} </a></h6></td>
                                            <td class="product-quantity">
                                                <button><a href="Process?num=-1&id=${i.product.productID}">-</a> </button>
                                                <input type="text" value="${i.quanity}">
                                                <button><a href="Process?num=1&id=${i.product.productID}">+</a> </button>
                                        </td>
                                            <td class="product-subtotal"><span class="cart-price">${i.product.priceNew*i.quanity}</span></td>
                                        <td class="product-remove">
                                          <button>  <a href="RemoveCart?id=${i.product.productID}">X</a></button>

                                        </td>

                                    </tr> </c:forEach>
                                    </tbody>


<%--                                    <tr>--%>
<%--                                        <li>--%>
<%--                                            <c:forEach items="${o.items}" var="i">--%>
<%--                                                <!-- Cart Box Start -->--%>
<%--                                                <div class="single-cart-box">--%>
<%--                                                    <div class="cart-img">--%>
<%--                                                        <a href="#"><img src="${i.product.image1}" alt="cart-image"></a>--%>
<%--                                                        <span class="pro-quantity">1X</span>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="cart-content">--%>
<%--                                                        <h6><a href="product.html">${i.product.name} </a></h6>--%>
<%--                                                        <span class="cart-price">${i.product.priceNew*i.quanity}</span>--%>
<%--                                                        <span>Màu: Đen</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a class="del-icone" href="#"><i class="ion-close"></i></a>--%>
<%--                                                </div>--%>
<%--                                                <!-- Cart Box End -->--%>
<%--                                            </c:forEach>--%>
<%--                                            <!-- Cart Footer Inner Start -->--%>
<%--                                            <!-- Cart Footer Inner End -->--%>
<%--                                        </li>--%>
<%--                                            <c:set var="t" value="0"></c:set>--%>
<%--                                            <td class="product-thumbnail">--%>
<%--                                                <a href="Detail?productID=${i.productID}"><img src="${i.product.image1}" alt="cart-image"></a>--%>
<%--                                            </td>--%>
<%--                                            <td class="product-name"><a href="#">${i.product.name}</a></td>--%>
<%--                                            <td class="product-price"><span class="amount">${i.product.priceNew}</span></td>--%>
<%--                                            <td class="product-quantity"><input type="number" value="1"></td>--%>
<%--&lt;%&ndash;                                                <td class="product-quantity">&ndash;%&gt;--%>
<%--                                                    <button><a href="Process?num=-1&id=${i.product.productID}">-</a> </button>--%>
<%--                                                    <input type="text" value="${i.quanity}">--%>
<%--                                                    <button><a href="Process?num=1&id=${i.product.productID}">+</a> </button>--%>
<%--                                                </td>--%>
<%--                                                <td class="product-subtotal">2</td>--%>
<%--                                            <td class="product-remove"> <a href="Process?id=${i.productID}"><i class="fa fa-times" aria-hidden="true"></i></a></td>--%>
<%--                                        </tr>--%>
                                </table>
                            </div>
                            <!-- Table Content Start -->
                            <div class="row">
                               <!-- Cart Button Start -->
                                <div class="col-md-8 col-sm-12">
                                    <div class="buttons-cart">
                                        <a href="DisplayCart">cập nhật giỏ hàng"</a>
                                        <a href="Shop">Tiếp tục mua sắm</a>
                                    </div>
                                </div>
                                <!-- Cart Button Start -->
                                <!-- Cart Totals Start -->
                                <div class="col-md-4 col-sm-12">
                                    <div class="cart_totals float-md-right text-md-right">
                                        <h2>Tổng trong giỏ hàng</h2>
                                        <br>
                                        <table class="float-md-right">
                                            <tbody>

                                                <tr class="order-total">
                                                    <th>Tổng</th>
                                                    <td>
                                                        <strong><span class="amount">${o.totalMoney} VND</span></strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="wc-proceed-to-checkout">
                                            <a href="DisplayCheckOut" methods="post">Kiểm Tra Hóa Đơn
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Cart Totals End -->
                            </div>
                            <!-- Row End -->
                        </form>
                        <!-- Form End -->
                    </div>
                </div>
                 <!-- Row End -->
            </div>
        </div>
        <!-- Cart Main Area End -->
        <!-- Support Area Start Here -->

        <!-- Support Area End Here -->
<jsp:include page="footer.jsp"></jsp:include>        <!-- Footer Area End Here -->

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