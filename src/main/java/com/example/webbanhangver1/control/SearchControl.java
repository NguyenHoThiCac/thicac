package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchControl", value = "/Search")
public class SearchControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String txtSearch = request.getParameter("txt");
        Dao dao = new Dao();
        List<Product> list = dao.searchByName(txtSearch);

        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);

        request.setAttribute("listProduct",list);
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
