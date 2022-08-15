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

@WebServlet(name = "FogotPass", value = "/FogotPass")
public class FogotPass extends HttpServlet {
        protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
            String mail = request.getParameter("email");
            //load catalog
            Dao dao = new Dao();
            List<Catalog> listC = dao.getAllCatalog();
            request.setAttribute("listC",listC);
            //load catalog

            if (mail.equals("")) {
                request.setAttribute("mess11", "Vui lòng nhập email!");
                request.getRequestDispatcher("DisplayFogotPass").forward(request, response);
            }else {
                DaoAcc daoAcc1 = new DaoAcc();
                Account account = daoAcc1.checkEmailExit(mail);
                if (account!=null){
                    daoAcc1.passwordRecovery(mail);
                    request.setAttribute("mess10","Đã xác nhận, vui lòng check email để lấy mật khẩu");
                    request.getRequestDispatcher("DisplayFogotPass").forward(request,response);
                }
                else {
                    request.setAttribute("mess12","tài khoản không tồn tại!");
                    request.getRequestDispatcher("DisplayFogotPass").forward(request,response);
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
