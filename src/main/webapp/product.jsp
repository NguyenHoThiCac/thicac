<%--
  Created by IntelliJ IDEA.
  User: Khanh Huy Studios
  Date: 08/01/2022
  Time: 8:47 CH
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
    <title>Product Details || Truemart Responsive Html5 Ecommerce Template</title>
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

    <!--------------H--- ------------->
    <!-- Main Header Area End Here -->
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
    <!-- Categorie Menu & Slider Area End Here -->
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-area mt-30">
        <div class="container">
            <div class="breadcrumb">
                <ul class="d-flex align-items-center">
                    <li><a href="Home">Trang chủ</a></li>
                    <li><a href="Shop">Sản phẩm</a></li>
                    <li class="active"><a href="Detail">Products</a></li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Breadcrumb End -->
    <!-- Product Thumbnail Start -->
    <div class="main-product-thumbnail ptb-100 ptb-sm-60">
        <div class="container">
            <div class="thumb-bg">
                <div class="row">
                    <!-- Main Thumbnail Image Start -->
                    <div class="col-lg-5 mb-all-40">
                        <!-- Thumbnail Large Image start -->
                        <div class="tab-content">
                            <div id="thumb1" class="tab-pane fade show active">
                                <a data-fancybox="images" href="${Detail.image1}"><img src="${Detail.image1}" alt="product-view"></a>
                            </div>
                            <div id="thumb2" class="tab-pane fade">
                                <a data-fancybox="images" href="${Detail.image2}"><img src="${Detail.image2}" alt="product-view"></a>
                            </div>
                            <div id="thumb3" class="tab-pane fade">
                                <a data-fancybox="images" href="${Detail.image3}"><img src="${Detail.image3}" alt="product-view"></a>
                            </div>

                        </div>
                        <!-- Thumbnail Large Image End -->
                        <!-- Thumbnail Image End -->
                        <div class="product-thumbnail mt-15">
                            <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                <a class="active" data-toggle="tab" href="#thumb1"><img src="${Detail.image1}" alt="product-thumbnail"></a>
                                <a data-toggle="tab" href="#thumb2"><img src="${Detail.image2}" alt="product-thumbnail"></a>
                                <a data-toggle="tab" href="#thumb3"><img src="${Detail.image3}" alt="product-thumbnail"></a>

                            </div>
                        </div>
                        <!-- Thumbnail image end -->
                    </div>
                    <!-- Main Thumbnail Image End -->
                    <!-- Thumbnail Description Start -->
                    <div class="col-lg-7">
                        <div class="thubnail-desc fix">
                            <h3 class="product-header">${Detail.name}</h3>
                            <div class="rating-summary fix mtb-10">
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="rating-feedback">
                                    <a href="#">(1 review)</a>
                                    <a href="#">add to your review</a>
                                </div>
                            </div>
                            <div class="pro-price mtb-30">
                                <p class="d-flex align-items-center"><span class="prev-price">${Detail.price}</span><span class="price">${Detail.priceNew}</span><span class="saving-price">Save ${Detail.sale}%</span>

                            </div>
                            <p class="mb-20 pro-desc-details">${Detail.detail}</p>
                            <div class="product-size mb-20 clearfix">
                                <label>Màu</label>
                                <select class="">
                                    <option>${Detail.color}</option>

                                </select>
                            </div>
                            <div class="color clearfix mb-20">

                            </div>
                            <div class="box-quantity d-flex hot-product2">
<%--                                <form action="Buy" method="post">--%>
<%--&lt;%&ndash;                                    <input class="quantity mr-15"name="num" type="number" min="1" value="1">&ndash;%&gt;--%>
<%--                                </form>--%>
                                <div class="pro-actions">
                                    <div class="actions-primary">
<%--                                        <input type="submit" onclick="Buy?pID=${Detail.productID}" value="Thêm vào giỏ hàng"/>--%>
                                        <a href="Buy?pID=${Detail.productID}" methods="post" title="" data-original-title="Thêm vào giỏ hàng"> Thêm vào giỏ hàng</a>
                                    </div>
                                    <div class="actions-secondary">

                                        <a href="Fav?pID=${Detail.productID}" title="" data-original-title=""><i class="lnr lnr-heart"></i> <span>Yêu thích</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-ref mt-20">
                                <p><span class="in-stock"><i class="ion-checkmark-round"></i> IN STOCK</span></p>
                            </div>
                            <div class="socila-sharing mt-25">
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
                    <!-- Thumbnail Description End -->
                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Product Thumbnail End -->
    <!-- Product Thumbnail Description Start -->
    <div class="thumnail-desc pb-100 pb-sm-60">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="main-thumb-desc nav tabs-area" role="tablist">
                        <li><a class="active" data-toggle="tab" href="#dtail">Nội dung sản phẩm</a></li>
                        <li><a data-toggle="tab" href="#review">Reviews 1</a></li>
                    </ul>
                    <!-- Product Thumbnail Tab Content Start -->
                    <div class="tab-content thumb-content border-default">
                        <div id="dtail" class="tab-pane fade show active">
                            <p> Máy ảnh hay máy chụp hình là một dụng cụ dùng để thu ảnh thành một ảnh tĩnh hay thành một loạt các ảnh
                                chuyển động (gọi là phim hay video). Tên camera có gốc từ tiếng La tinh camera obscura nghĩa là "phòng tối"
                                , từ lý do máy ảnh đầu tiên là một cái phòng tối với vài người làm việc trong đó</p>
                        </div>
                        <div id="review" class="tab-pane fade">
                            <!-- Reviews Start -->
                            <div class="review border-default universal-padding">
                                <div class="group-title">
                                    <h2>Đánh giá của khách hàng</h2>
                                </div>
                                <h4 class="review-mini-title">Group 11</h4>
                                <ul class="review-list">
                                    <!-- Single Review List Start -->
                                    <li>
                                        <span>Chất lượng</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>

                                    </li>
                                    <!-- Single Review List End -->
                                    <!-- Single Review List Start -->
                                    <li>
                                        <span>Giá</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>

                                    </li>
                                    <!-- Single Review List End -->
                                    <!-- Single Review List Start -->
                                    <li>
                                        <span>Giá trị</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>

                                    </li>
                                    <!-- Single Review List End -->
                                </ul>
                            </div>
                            <!-- Reviews End -->
                            <!-- Reviews Start -->
                            <div class="review border-default universal-padding mt-30">

                                <p class="review-mini-title">Đánh giá của bạn</p>
                                <ul class="review-list">
                                    <!-- Single Review List Start -->
                                    <li>
                                        <span>Chất lượng</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </li>
                                    <!-- Single Review List End -->
                                    <!-- Single Review List Start -->
                                    <li>
                                        <span>Giá</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </li>
                                    <!-- Single Review List End -->
                                    <!-- Single Review List Start -->
                                    <li>
                                        <span>Giá trị</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </li>
                                    <!-- Single Review List End -->
                                </ul>
                                <!-- Reviews Field Start -->
                                <div class="riview-field mt-40">
                                    <form autocomplete="off" action="review" method="post">
                                        <div class="form-group">
                                            <label class="req" for="sure-name">Tên</label>
                                            <input type="text" class="form-control" id="sure-name" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label class="req" for="subject">Gmail</label>
                                            <input type="text" class="form-control" id="subject" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label class="req" for="comments">Review</label>
                                            <textarea class="form-control" rows="5" id="comments" required="required"></textarea>
                                        </div>
                                        <button type="submit" class="customer-btn">Submit Review</button>
                                    </form>
                                </div>
                                <!-- Reviews Field Start -->
                            </div>
                            <!-- Reviews End -->
                        </div>
                    </div>
                    <!-- Product Thumbnail Tab Content End -->
                </div>
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Product Thumbnail Description End -->
    <!-- Realted Products Start Here -->


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
