<%--
  Created by IntelliJ IDEA.
  User: Khanh Huy Studios
  Date: 14/01/2022
  Time: 3:46 CH
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");%>
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
                                        <a data-fancybox="images" href="${QuickView.image2}>"<img src="${QuickView.image2}" alt="product-view"></a>
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

