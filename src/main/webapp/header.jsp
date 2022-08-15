<%--
  Created by IntelliJ IDEA.
  User: Khanh Huy Studios
  Date: 11/01/2022
  Time: 8:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>


    <!-- --------------------------------- -->
    <!-- Banner Popup End -->
    <!-- Newsletter Popup Start -->
    s
    <!-- --------------------------------- -->



    <!-- Newsletter Popup End -->
    <!-- Main Header Area Start Here -->
    <!--------------H--- -->
    <header>

        <!---- DONG FREE SHIPPING---------->
        <!-- Header Top Start Here -->
        <div class="header-top-area">
            <div class="container">
                <!-- Header Top Start -->
                <div class="header-top">
                    <!--      dư                  d-->
                    <ul>
                    </ul>
                    <ul>
                        <c:if test="${sessionScope.acc.role == 1}">

                        <li>
                            <a href="DisplayManager">Sản Phẩm Của Tôi<i class="lnr "></i></a>
                        </li>

                        </c:if>
<%--                        <c:if test="${sessionScope.acc.role == 2}">--%>
<%--                            <li><a href="#">Xin chào Mod<i class="lnr "></i></a>--%>
<%--                            </li>--%>
<%--                        </c:if>--%>

                        <li><span>Ngôn Ngữ </span> <a href="#">Việt Nam<i class="lnr lnr-chevron-down"></i></a>
                            <!-- Dropdown Start -->
                            <ul class="ht-dropdown">
                                <li><a href="#"><img src="img\header\1.png" alt="language-selector">Việt Nam</a></li>
                                <li><a href="#"><img src="img\header\1.png" alt="language-selector">Đông Lào</a></li>
                            </ul>
                            <!-- Dropdown End -->
                        </li>
                        <li><span>Thanh Toán</span><a href="#"> VND đ <i class="lnr lnr-chevron-down"></i></a>
                            <!-- Dropdown Start -->
                            <ul class="ht-dropdown">
                                <li><a href="#"> đ VND</a></li>
                                <li><a href="#">&#36; USD</a></li>


                            </ul>
                            <!-- Dropdown End -->
                        </li>

                        <li><a href="#">Tài Khoản<i class="lnr lnr-chevron-down"></i></a>

                        <c:if test="${sessionScope.acc != null}">
                            <!-- Dropdown Start -->
                            <ul class="ht-dropdown">
                                <li><a href="editUser.jsp">${sessionScope.acc.aName}</a></li>
                                <li><a href="changePassword.jsp">Đổi mật khẩu</a></li>
                                <li><a href="LogOut">Đăng Xuất</a></li>
                            </ul>
                            <!-- Dropdown End --
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                            <!-- Dropdown Start -->
                            <ul class="ht-dropdown">
                                <li><a href="DisplayLogin">Đăng nhập</a></li>
                                <li><a href="DisplayRegister">Đăng kí</a></li>
                                <li><a href="changePassword.jsp">Đổi mật khẩu</a></li>
                            </ul>
                        </c:if>

                        <!-- Dropdown End -->
                        </li>
                    </ul>
                </div>
                <!-- Header Top End -->
            </div>
            <!-- Container End -->
        </div>

        <!---- DONG FREE SHIPPING---------->


        <!-- Header Top End Here -->
        <!-- Header Middle Start Here -->
        <div class="header-middle ptb-15">
            <div class="container">
                <div class="row align-items-center no-gutters">

                    <!---------logo TrueMart-------- -->
                    <div class="col-lg-3 col-md-12">
                        <div class="logo mb-all-30">
                            <a href="Home"><img src="img\logo\logo.png" alt="logo-image"></a>
                        </div>
                    </div>
                    <!---------logo TrueMart-------- -->
                    <!-- Categorie Search Box Start Here -->
                    <div class="col-lg-5 col-md-8 ml-auto mr-auto col-10">
                        <div class="categorie-search-box">
                            <form action="Search">
                                <!---------Thanh tìm kiếm-------- -->
                                <!---------I 'm shoopping for-------- -->
                                <input name="txt" type="text"  placeholder="Tìm kiếm sản phẩm..........">
                                <button><i class="lnr lnr-magnifier"></i></button>
                            </form>
                        </div>
                    </div>
                    <!-- Categorie Search Box End Here -->
                    <!-- Cart Box Start Here -->
                    <div class="col-lg-4 col-md-12">
                        <div class="cart-box mt-all-30">
                            <!---------Cart-------- -->
                            <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                                <c:set var="size" value="${sessionScope.Size}"/>
                                <li><a href="DisplayCart"><i class="lnr lnr-cart"></i><span class="my-cart"><span class="total-pro">(${size})</span><span>giỏ hàng</span></span></a>
                                    <ul class="ht-dropdown cart-box-width">
                                        <li> <c:set var="o" value="${sessionScope.cart}"/>
                                            <c:forEach items="${o.items}" var="i">
                                            <!-- Cart Box Start -->
                                            <div class="single-cart-box">
                                                <div class="cart-img">
                                                    <a href="#"><img src="${i.product.image1}" alt="cart-image"></a>
                                                    <span class="pro-quantity">${i.quanity}X</span>
                                                </div>
                                                <div class="cart-content">
                                                    <h6><a href="product.html">${i.product.name} </a></h6>
                                                    <span class="cart-price">${i.product.priceNew*i.quanity}</span>
                                                    <span>Màu: ${i.product.color}</span>
                                                </div>
                                                <a class="del-icone" href="RemoveCart?id=${i.product.productID}"><i class="ion-close"></i></a>
                                            </div>
                                            <!-- Cart Box End -->
                                            </c:forEach>
                                            <!-- Cart Footer Inner Start -->
                                            <div class="cart-footer">
                                                <ul class="price-content">
                                                    <li>Tổng tiền SP <span>${o.totalMoney} VND</span></li>
                                                    <li>Tiền ship <span>0 VND</span></li>
                                                    <li>Thuế <span>0 VND</span></li>
                                                    <li>Thanh toán<span>${o.totalMoney} VND</span></li>
                                                </ul>
                                                <div class="cart-actions text-center">
                                                    <a class="cart-checkout" href="DisplayCheckOut">Xem Hóa Đơn</a>
                                                </div>
                                            </div>
                                            <!-- Cart Footer Inner End -->
                                        </li>
                                    </ul>
                                </li>
                                <c:set var="sizefav" value="${sessionScope.SizeFav}"/>
                                <li><a href="DisplayFav"><i class="lnr lnr-heart"></i><span class="my-cart"><span>Yêu</span><span>Thích(${sizefav})</span></span></a>
                                </li>
                                <li><a href="#"><i class="lnr lnr-user"></i><span class="my-cart"><span> <strong>Hỗ Trợ</strong> </span><span>012345678</span></span></a>



                                </li>
                            </ul>
                            <!---------Cart-------- -->
                        </div>
                    </div>
                    <!-- Cart Box End Here -->
                </div>
                <!-- Row End -->
            </div>
            <!-- Container End -->
        </div>
        <!-- Header Middle End Here -->
        <!-- Header Bottom Start Here -->
        <div class="header-bottom  header-sticky">

            <!--------- thanh shop by cammera va menu  -------- -->


            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-3 col-lg-4 col-md-6 vertical-menu d-none d-lg-block">
                        <span class="categorie-title">Danh mục sản Phẩm </span>
                    </div>
                    <div class="col-xl-9 col-lg-8 col-md-12 ">
                        <nav class="d-none d-lg-block">
                            <ul class="header-bottom-list d-flex">
                                <li><a href="Home">Trang chủ</a>
                                    <!-- Home Version Dropdown Start -->

                                    <!-- Home Version Dropdown End -->
                                </li>
                                <li><a href="Shop">Sản phẩm</a>

                                </li>
                                <li><a href="Blogg">Tin tức</a>

                                </li>

                                </li>

                                <li><a href="DisplayContact">Liên hệ</a></li>
                            </ul>
                        </nav>
                        <div class="mobile-menu d-block d-lg-none">
                            <nav>
                                <ul>
                                    <li><a href="Home">home</a>
                                        <!-- Home Version Dropdown Start -->

                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="Shop">shop</a>
                                        <!-- Mobile Menu Dropdown Start -->

                                        <!-- Mobile Menu Dropdown End -->
                                    </li>
                                    <li><a href="blog.jsp">Blog</a>
                                        <!-- Mobile Menu Dropdown Start -->
                                        <ul>
                                            <li><a href="single-blog.jsp">blog details</a></li>
                                        </ul>
                                        <!-- Mobile Menu Dropdown End -->
                                    </li>
                                    <li><a href="#">pages</a>
                                        <!-- Mobile Menu Dropdown Start -->

                                        <!-- Mobile Menu Dropdown End -->
                                    </li>
                                    <li><a href="about.html">about us</a></li>
                                    <li><a href="DisplayContact">contact us</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- Row End -->
            </div>
            <!--------- thanh danh mục sản phẩm va menu  -------- -->
            <!-- Container End -->
        </div>
        <!-- Header Bottom End Here -->
        <!-- Mobile Vertical Menu Start Here -->

        <!--------- thanh duoi  shop by cammera va menu  -------- -->


        <!--------- thanh duoi  shop by cammera va menu  -------- -->
        <!-- Mobile Vertical Menu Start End -->
    </header>

