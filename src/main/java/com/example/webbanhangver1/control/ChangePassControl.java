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

@WebServlet(name = "ChangePassControl", value = "/ChangePass")
public class ChangePassControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        String newpwd = request.getParameter("new_pwd");
        String re_newpwd = request.getParameter("re_newpwd");

//load catalog
        Dao dao = new Dao();
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
//end load catalog

        if (username.equals("")){
            request.setAttribute("messCPass","Vui lòng nhập username!");
            request.getRequestDispatcher("changePassword.jsp").forward(request,response);
        } else  if (pwd.equals("")){
            request.setAttribute("messCPass1","Vui lòng nhập mật khẩu!");
            request.getRequestDispatcher("changePassword.jsp").forward(request,response);
        } else  if (newpwd.equals("")){
            request.setAttribute("messCPass2","Vui lòng nhập mật khẩu!");
            request.getRequestDispatcher("changePassword.jsp").forward(request,response);
        } else  if (re_newpwd.equals("")){
            request.setAttribute("messCPass3","Vui lòng nhập mật khẩu!");
            request.getRequestDispatcher("changePassword.jsp").forward(request,response);
        } else  if (!newpwd.equals(re_newpwd)){
            request.setAttribute("messCPass3","Mật khẩu xác nhận không chính xác!");
            request.getRequestDispatcher("changePassword.jsp").forward(request,response);
        }else {
            DaoAcc daoAcc1 = new DaoAcc();
            Account account = daoAcc1.checkAccountExit(username, pwd);
            if (account==null){
                request.setAttribute("mess","Username hoặc password không đúng!");
                request.getRequestDispatcher("changePassword.jsp").forward(request,response);
            }
            else {
                daoAcc1.editPass(account , newpwd);
                request.setAttribute("mess","Đổi mật khẩu thành công!");
                request.getRequestDispatcher("changePassword.jsp").forward(request,response);
            }
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
