package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Account;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "EditControl", value = "/edit")
public class EditControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("id");
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String image3 = request.getParameter("image3");
        String detail = request.getParameter("detail");
        String color = request.getParameter("color");
        String sale1 = request.getParameter("sale");

        Integer catalog = Integer.parseInt(request.getParameter("catalog"));
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int sid = a.getAccountID();
        try {
            int sale = Integer.parseInt(sale1);
            Dao dao = new Dao();
            dao.editProduct(name, detail, price, image1, image2, image3, color, sale, catalog, sid, pid);
            response.sendRedirect("DisplayManager");
        }catch (Exception e){
            session.setAttribute("messEdit", "vui lòng nhập lại bằng kiểu số!");
            response.sendRedirect("LoadProduct?pid=" + pid);
        }
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
