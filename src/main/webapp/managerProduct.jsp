
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="css/manager.css" rel="stylesheet" >

    <!-- Modernizer js -->
    <script src="js\vendor\modernizr-3.5.0.min.js"></script>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<div class="wrapper">

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
<%--    <jsp:include page="header.jsp"></jsp:include>--%>

<%--    <div class="main-page-banner home-3">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <!-- Vertical Menu Start Here -->--%>
<%--                <div class="col-xl-3 col-lg-4 d-none d-lg-block">--%>
<%--                    <jsp:include page="catalog.jsp"></jsp:include>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- Vertical Menu End Here -->--%>
<%--        </div>--%>
<%--        <!-- Row End -->--%>
<%--    </div>--%>


    <div>
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Product</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
<%--                        <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>--%>
                    </div>
                </div>
            </div>


            <div class="breadcrumb-area mt-30">
                <div>
                    <div class="breadcrumb">
                        <ul class="d-flex align-items-center">
                            <li><a href="Home">Trang chủ</a></li>
                            <li class="active"><a href="DisplayManager">Manager Product</a></li>
                        </ul>
                    </div>
                </div>
                <!-- Container End -->
            </div>

            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                    </th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listP}" var="o">
                    <tr>
                        <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                        </td>
                        <td>${o.productID}</td>
                        <td>${o.name}</td>
                        <td class="cart-img">
                            <img src="${o.image1}">
                        </td>
                        <td class="cart-img">
                            <img src="${o.image2}">
                        </td>
                        <td class="cart-img">
                            <img src="${o.image3}">
                        </td>
                        <td>${o.price} $</td>

                        <td>
                            <a href="LoadProduct?pid=${o.productID}"  class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="Delete?pid=${o.productID}"  class="delete"  ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="pro-pagination">
                <span class="grid-item-list">                      (${endP} trang)</span>

                <div class="product-pagination">
                    <ul class="blog-pagination">
                        <c:forEach begin="1" end="${endP}" var="i">
                            <li class="${tag==i?"active":""}"><a href="DisplayManager?index=${i}">${i}     </a></li>
                        </c:forEach>
                    </ul>

                </div>
            </div>

        </div>
        <a href="Home"><button type="button" class="btn btn-primary">Trang chủ</button></a>

    </div>
    <!-- Edit Modal HTML -->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="add" method="post">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Product</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image 1</label>
                            <input name="image1" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image 2</label>
                            <input name="image2" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image 3</label>
                            <input name="image3" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <input name="title" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Detail</label>
                            <input name="detail" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>color</label>
                            <input name="color" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Catalog</label>
                            <select name="catalog" class="form-select" aria-label="Default select example">
                                <c:forEach items="${listC}" var="o">
                                    <option
                                            value="${o.catalogID}">${o.cname}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="Add">
                    </div>
                </form>
            </div>
        </div>
    </div>


</div>

<jsp:include page="footer.jsp"></jsp:include>

<script src="js/manager.js" ></script>

</body>
</html>
