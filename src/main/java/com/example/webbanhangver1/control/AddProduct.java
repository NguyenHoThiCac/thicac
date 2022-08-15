package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.dao.DaoBlog;
import com.example.webbanhangver1.model.Account;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "AddProduct", value = "/add")
public class AddProduct extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String image3 = request.getParameter("image3");
        String demo = request.getParameter("title");
        String detail = request.getParameter("detail");
        String color = request.getParameter("color");
        Integer catalog = Integer.parseInt(request.getParameter("catalog"));

        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int sid = a.getAccountID();
        String aname = a.getUserName();



        Dao dao = new Dao();
        dao.insertProduct(name, price, image1, image2, image3, detail, color, catalog, sid);
        DaoBlog daoBlog = new DaoBlog();
        daoBlog.addBlog(name, aname, demo, detail, image1);
        response.sendRedirect("DisplayManager");
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
