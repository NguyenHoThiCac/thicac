package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.dao.DaoAcc;
import com.example.webbanhangver1.model.Account;
import com.example.webbanhangver1.model.Catalog;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SignUpControl", value = "/SignUp")
public class SignUpControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String phone = request.getParameter("phone");
        String pwd = request.getParameter("pwd");
        String re_pwd = request.getParameter("re_pwd");

//load catalog
        Dao dao = new Dao();
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
//end load catalog

          if (username.equals("")){
            request.setAttribute("mess3","Vui lòng nhập username!");
            request.getRequestDispatcher("DisplayRegister").forward(request,response);
        }else if (mail.equals("")) {
            request.setAttribute("mess4", "Vui lòng nhập email!");
            request.getRequestDispatcher("DisplayRegister").forward(request, response);
        } else  if (pwd.equals("")){
                request.setAttribute("mess5","Vui lòng nhập mật khẩu!");
                request.getRequestDispatcher("DisplayRegister").forward(request,response);
          } else if (!pwd.equals(re_pwd)){
                request.setAttribute("mess1","Vui lòng nhập lại mật khẩu!");
                request.getRequestDispatcher("DisplayRegister").forward(request,response);

        }else {
            DaoAcc daoAcc1 = new DaoAcc();
            Account account = daoAcc1.checkAccountExit(username);
            if (account==null){
                daoAcc1.signUp(username,name,mail,pwd,phone);
                response.sendRedirect("DisplayLogin");
            }
           else {
               request.setAttribute("mess2","Username đã tồn tại!");
                request.getRequestDispatcher("DisplayRegister").forward(request,response);
            }
        }
        //sign up
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
