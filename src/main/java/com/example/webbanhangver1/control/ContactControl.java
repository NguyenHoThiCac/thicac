package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.dao.DaoAcc;
import com.example.webbanhangver1.dao.DaoContact;
import com.example.webbanhangver1.model.Account;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Contact;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContactControl", value = "/Contact")
public class ContactControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String website = request.getParameter("website");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");


//load catalog
        Dao dao = new Dao();
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
//end load catalog

        if (email.equals("")){
            request.setAttribute("mess6","Vui lòng nhập email!");
            request.getRequestDispatcher("DisplayContact").forward(request,response);
        }else if (message.equals("")){
            request.setAttribute("mess7","Vui lòng nhập message!");
            request.getRequestDispatcher("DisplayContact").forward(request,response);
        }else if (name.equals("")){
            request.setAttribute("mess8","Vui lòng nhập name!");
            request.getRequestDispatcher("DisplayContact").forward(request,response);
        }
        else {
            DaoContact daoContact = new DaoContact();
            daoContact.contact(name,email,website,subject,message);
           request.setAttribute("mess9","Đã gửi thành công!");
            request.getRequestDispatcher("cDisplayContact").forward(request,response);
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
