package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.dao.DaoAcc;
import com.example.webbanhangver1.model.Account;
import com.example.webbanhangver1.model.Catalog;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginControl", value = "/Login")
public class LoginControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
//load catalog
        Dao dao = new Dao();
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
//end load catalog
        DaoAcc daoAcc = new DaoAcc();
        if (email.equals("")){
            request.setAttribute("messL","Vui lòng nhập username!");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else if (password.equals("")) {
            request.setAttribute("messL1", "Vui lòng nhập password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else {
            Account a = daoAcc.login(email, password);
            if (a == null) {
                request.setAttribute("messL", "Bạn đã nhập sai Username hoặc Mật Khẩu!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("acc", a); //acc luu session
//            session.setMaxInactiveInterval(180); //session ton tai 3' thi se tu dong dang xuat
                response.sendRedirect("Home");
            }
        }
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
