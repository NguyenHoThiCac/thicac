package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QuickViewControl", value = "/QuickViewControl")
public class QuickViewControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String productID = request.getParameter("quickID");
        Dao dao = new Dao();
        Product p = dao.getProductByID(productID);

        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);

        request.setAttribute("QuickView2",p);
        request.getRequestDispatcher("shop.jsp").forward(request,response);
    }

    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request,response);
    }
}
