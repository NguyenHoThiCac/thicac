<%--
  Created by IntelliJ IDEA.
  User: PHI CAC
  Date: 6/28/2022
  Time: 12:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css"/>
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
</head>
<body>
<div class="wrapper">
        <div class="popup_banner">
        <span class="popup_off_banner">×</span>
        <div class="banner_popup_area">
            <img src="img\banner\banner1.png" alt="">
        </div>
    </div>
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Edit <b>Product</b></h2>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
        </div>
<%--        <a href="DisplayManager"><button type="button" class="btn btn-primary">Back</button></a>--%>
        <div class="breadcrumb-area mt-30">
            <div>
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="Home">Trang chủ</a></li>
                        <li><a href="DisplayManager">Manager Product</a></li>
                        <li class="active"><a href="edit">Edit Product</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <div id="editEmployeeModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="edit" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Product</h4>
                            <a href="DisplayManager" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label >ID</label>
                                <input value="${detail.productID}" name="id" type="number" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input value="${detail.name}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input value="${detail.image1}" name="image1" type="text" class="form-control" required>
                                <input value="${detail.image2}" name="image2" type="text" class="form-control" required>
                                <input value="${detail.image3}" name="image3" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input value="${detail.price}" name="price" type="number" class="form-control" required>
                            </div>
                            <p class="text-danger text-center">${messEdit}</p>
                            <div class="form-group">
                                <label for="number">Sale</label>
                                <input value="${detail.sale}" name="sale"  class="number form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="number">PriceNew</label>
                                <input value="${detail.priceNew}" name="priceNew" id="number" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Detail</label>
                                <textarea name="detail" class="form-control" required>${detail.detail}</textarea>
                            </div>

                            <div class="form-group">
                                <label>Catalog</label>
                                <select name="catalog" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option
                                            value ="${o.catalogID}">${o.cname}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="Edit">
                        </div>
                    </form>
                </div>
            </div>
        </div>

</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>


<script src="js/manager.js" type="text/javascript"></script>
</body>
</html>
