<%--
  Created by IntelliJ IDEA.
  User: Khanh Huy Studios
  Date: 11/01/2022
  Time: 8:37 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

<footer class="off-white-bg2 pt-95 bdr-top pt-sm-55">
    <!-- Footer Top Start -->
    <div class="footer-top">
        <div class="container">
            <!-- Signup Newsletter Start -->

            <!-- Signup-Newsletter End -->
            <div class="row">
                <!-- Single Footer Start -->
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="single-footer mb-sm-40">
                        <h3 class="footer-title">Thông Tin Shop</h3>
                        <div class="footer-content">
                            <ul class="footer-list">
                                <li><a href="Home">Trang chủ</a></li>
                                <li><a href="Shop">Sản Phẩm</a></li>
                                <li><a href="Blogg">Tin tức </a></li>
                                <li><a href="DisplayContact">Liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Single Footer Start -->
                <!-- Single Footer Start -->
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="single-footer mb-sm-40">
                        <h3 class="footer-title">Danh sách sản phẩm</h3>
                        <div class="footer-content">
                            <ul class="footer-list">
                                <c:forEach items="${listC}" var="o">
                                <li><a href="Category?catalogID=${o.catalogID}">${o.cname}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Single Footer Start -->
                <!-- Single Footer Start -->
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="single-footer mb-sm-40">
                        <h3 class="footer-title">Liên Hệ trực tiếp</h3>
                        <div class="footer-content">
                            <ul class="footer-list">
                                <li><a href="#"></a></li>
                                <li><a href="#"> CSKH 0123456</a></li>
                                <li><a href="#">Tư vấn Máy ảnh 0123344</a></li>
                                <li><a href="#">Tư vấn khác 0122667</a></li>
                                <li><a href="#">Mua sĩ 0555666</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Single Footer Start -->
                <!-- Single Footer Start -->
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="single-footer mb-sm-40">
                        <h3 class="footer-title">Tài Khoản</h3>
                        <div class="footer-content">
                            <ul class="footer-list">
                                <c:if test="${sessionScope.acc != null}">
                                    <li><a href="editUser.jsp">${sessionScope.acc.aName}</a></li>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                <li><a href="DisplayLogin">Đăng nhập</a></li>
                                <li><a href="DisplayRegister">Đăng ký</a></li>
                                </c:if>
                                <li><a href="DisplayFav">Yêu thích</a></li>
                                <li><a href="DisplayCheckOut">Thanh toán</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Single Footer Start -->
                <!-- Single Footer Start -->
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-footer mb-sm-40">
                        <h3 class="footer-title">Địa chỉ liên hệ</h3>
                        <div class="footer-content">
                            <ul class="footer-list address-content">
                                <li><i class="lnr lnr-map-marker"></i> Địa chỉ:  Phường Linh Trung, Thủ Đức, Thành phố Hồ Chí Minh</li>
                                <li><i class="lnr lnr-envelope"></i><a href="#"> mail Us: shopphoneltw@gmail.com</a></li>

                            </ul>
                            <div class="payment mt-25 bdr-top pt-30">
                                <a href="#"><img class="img" src="img\payment\1.png" alt="payment-image"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Footer Start -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Footer Top End -->
    <!-- Footer Middle Start -->
    <div class="footer-middle text-center">
        <div class="container">
            <div class="footer-middle-content pt-20 pb-30">
                <ul class="social-footer">
                    <li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><img src="img\icon\social-img1.png" alt="google play"></a></li>
                    <li><a href="#"><img src="img\icon\social-img2.png" alt="app store"></a></li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Footer Middle End -->
    <!-- Footer Bottom Start -->
    <div class="footer-bottom pb-30">
        <div class="container">

            <div class="copyright-text text-center">
                <p>Bản quyền thuộc về <a target="_blank" href="#">Group11 </a> shop</p>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Footer Bottom End -->
</footer>