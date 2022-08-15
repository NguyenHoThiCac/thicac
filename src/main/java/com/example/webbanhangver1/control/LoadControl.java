package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadControl", value = "/LoadProduct")
public class LoadControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String productID = request.getParameter("pid");
        Dao dao = new Dao();

        Product p = dao.getProductByID(productID);

        request.setAttribute("detail",p);
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
        request.getRequestDispatcher("edit.jsp").forward(request,response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request,response);
    }
}
