package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.dao.DaoBlog;
import com.example.webbanhangver1.model.Blog;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailBlogControl", value = "/Blog")
public class DetailBlogControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String blogID = request.getParameter("BlogID");
        Dao dao = new Dao();
        DaoBlog daoB = new DaoBlog();
        Blog b = daoB.getBlogByID(blogID);

        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);

        request.setAttribute("Blog",b);
        request.getRequestDispatcher("single-blog.jsp").forward(request,response);
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
