<%--
  Created by IntelliJ IDEA.
  User: Khanh Huy Studios
  Date: 10/01/2022
  Time: 9:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<div class="col-xl-3 col-lg-4 d-none d-lg-block">
    <div class="vertical-menu mb-all-30">
        <nav>
            <ul class="vertical-menu-list">
                <c:forEach items="${listC}" var="o">
                    <li><a href="Category?catalogID=${o.catalogID}" ><span><img src="img\vertical-menu\11.png" alt="menu-icon"></span>${o.cname}</a>
                    </li>
                </c:forEach>

                <!-- More Categoies Start -->

                <!--             dư                       -->
                <li><a ><span></span></a></li>
                <li><a ><span></span></a></li>
                <li><a ><span></span></a></li>
                <!--             dư                       -->
                <!-- More Categoies End -->
            </ul>
        </nav>
    </div>
</div>
