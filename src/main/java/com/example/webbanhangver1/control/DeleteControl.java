package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Account;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "DeleteControl", value = "/Delete")
public class DeleteControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String pid =request.getParameter("pid");
        Dao dao = new Dao();
        dao.deleteProduct(pid);

        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int sid = a.getAccountID();
        String aname = a.getUserName();


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
