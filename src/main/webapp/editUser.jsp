
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Cập nhật tài khoản </title>
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
                    <li class="active"><a href="editUser.jsp">Cập nhật tài khoản</a></li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Breadcrumb End -->
    <!-- Register Account Start -->
    <div class="register-account ptb-100 ptb-sm-60">
        <div class="container">
            <!-- Row End -->
            <div class="row">
                <div class="col-sm-12">
                    <form class="form-register" action="editUser" method="post">
                        <fieldset>
                            <legend>Thông tin cá nhân của bạn</legend>
                            <p class="text-danger text-center">${messEditUser}</p>
                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="control-label col-md-2" for="f-name"><span class="require">*</span>Tên Đăng Nhập</label>
                                <div class="col-md-10">
                                    <input value="${sessionScope.acc.userName}" name="username" type="text" class="form-control" id="f-name" readonly placeholder="Tên đăng nhập..........">
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="control-label col-md-2" for="l-name"><span class="require">*</span>Tên </label>
                                <div class="col-md-10">
                                    <input value="${sessionScope.acc.aName}" name="name" type="text" class="form-control" id="l-name" readonly placeholder="Tên .........">
                                </div>
                            </div>
                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="control-label col-md-2" for="email"><span class="require">*</span>Email</label>
                                <div class="col-md-10">
                                    <input value="${sessionScope.acc.email}" name="mail" type="email" class="form-control" id="email" placeholder="Nhập địa chỉ email của bạn vào đây ...">
                                </div>
                            </div>

                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="control-label col-md-2" for="number"><span class="require">*</span>Số điện thoại</label>
                                <div class="col-md-10">
                                    <input value="${sessionScope.acc.phone}" name="phone" type="number" id="number" class="form-control" placeholder="Số điện thoại">
                                </div>
                            </div>
                        </fieldset>
                        <c:if test="${sessionScope.acc.role != 1}">
                            <legend>Newsletter</legend>
                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="col-md-2 control-label">Đăng kí tài khoản VIP</label>
                                <div class="col-md-10 radio-button">
                                    <label class="radio-inline"><input value="1" type="radio" name="optradio">Có</label>
                                    <label class="radio-inline"><input value="" type="radio" name="optradio">Không</label>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.acc.role == 1}">
                            <div class="form-group d-md-flex align-items-md-center">
                                <label class="control-label col-md-2" for=><span class="require">*</span>Role</label>
                                <div class="col-md-10">
                                    <input value="Admin" name="optradio"  class="form-control" readonly>
                                </div>
                            </div>
                        </c:if>
                        <div class="terms">
                            <div class="float-md-right">
                                <input type="submit" value="Cập nhật" class="return-customer-btn">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Register Account End -->
    <!-- Support Area Start Here -->

    <!-- Support Area End Here -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Area End Here -->
    <!-- Quick View Content Start -->
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
                                        <div id="thumb-1" class="tab-pane fade show active">
                                            <a data-fancybox="images" href="img\products\35.jpg"><img src="img\products\35.jpg" alt="product-view"></a>
                                        </div>
                                        <div id="thumb-2" class="tab-pane fade">
                                            <a data-fancybox="images" href="img\products\13.jpg"><img src="img\products\13.jpg" alt="product-view"></a>
                                        </div>
                                        <div id="thumb-3" class="tab-pane fade">
                                            <a data-fancybox="images" href="img\products\15.jpg"><img src="img\products\15.jpg" alt="product-view"></a>
                                        </div>
                                        <div id="thumb-4" class="tab-pane fade">
                                            <a data-fancybox="images" href="img\products\4.jpg"><img src="img\products\4.jpg" alt="product-view"></a>
                                        </div>
                                        <div id="thumb-5" class="tab-pane fade">
                                            <a data-fancybox="images" href="img\products\5.jpg"><img src="img\products\5.jpg" alt="product-view"></a>
                                        </div>
                                    </div>
                                    <!-- Thumbnail Large Image End -->
                                    <!-- Thumbnail Image End -->
                                    <div class="product-thumbnail mt-20">
                                        <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                            <a class="active" data-toggle="tab" href="#thumb-1"><img src="img\products\35.jpg" alt="product-thumbnail"></a>
                                            <a data-toggle="tab" href="#thumb-2"><img src="img\products\13.jpg" alt="product-thumbnail"></a>
                                            <a data-toggle="tab" href="#thumb-3"><img src="img\products\15.jpg" alt="product-thumbnail"></a>
                                            <a data-toggle="tab" href="#thumb-4"><img src="img\products\4.jpg" alt="product-thumbnail"></a>
                                            <a data-toggle="tab" href="#thumb-5"><img src="img\products\5.jpg" alt="product-thumbnail"></a>
                                        </div>
                                    </div>
                                    <!-- Thumbnail image end -->
                                </div>
                                <!-- Main Thumbnail Image End -->
                                <!-- Thumbnail Description Start -->
                                <div class="col-lg-7 col-md-6 col-sm-7">
                                    <div class="thubnail-desc fix mt-sm-40">
                                        <h3 class="product-header">Printed Summer Dress</h3>
                                        <div class="pro-price mtb-30">
                                            <p class="d-flex align-items-center"><span class="prev-price">16.51</span><span class="price">$15.19</span><span class="saving-price">save 8%</span></p>
                                        </div>
                                        <p class="mb-20 pro-desc-details">Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the bottom of the dress.</p>
                                        <div class="product-size mb-20 clearfix">
                                            <label>Size</label>
                                            <select class="">
                                                <option>S</option>
                                                <option>M</option>
                                                <option>L</option>
                                            </select>
                                        </div>
                                        <div class="color mb-20">
                                            <label>color</label>
                                            <ul class="color-list">
                                                <li>
                                                    <a class="orange active" href="#"></a>
                                                </li>
                                                <li>
                                                    <a class="paste" href="#"></a>
                                                </li>
                                            </ul>
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
