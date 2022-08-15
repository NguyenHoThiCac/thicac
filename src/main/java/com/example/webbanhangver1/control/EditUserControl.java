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

@WebServlet(name = "EditUserControl", value = "/editUser")
public class EditUserControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        String mail = request.getParameter("mail");
        String phone = request.getParameter("phone");
        String check = request.getParameter("optradio");

        DaoAcc daoAcc = new DaoAcc();
        if(check.equals("1")){
            daoAcc.editUser(a, check);
            a.setRole(1);
        }
            daoAcc.editUser(a, mail, phone);
            request.setAttribute("messEditUser", "Cập nhật thành công");
       a.setEmail(mail);
        a.setPhone(phone);

//load catalog
        Dao dao = new Dao();
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
//end load catalog
// load thong tin user
       request.setAttribute("acc",a);
//end load
        request.getRequestDispatcher("editUser.jsp").forward(request,response);
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
