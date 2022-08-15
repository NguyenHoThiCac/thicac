package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Account;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerControl", value = "/DisplayManager")
public class ManagerControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int id = (int) a.getAccountID();
        String indexPage = request.getParameter("index");
        if(indexPage==null){
            indexPage="1"; //lỗi khi chạy servlet chưa nhận dc index
        }
        int index = Integer.parseInt(indexPage);// ep kieu tu String qua int
        Dao dao = new Dao();
        List<Product> list = dao.getAllProduct(index, id);
        List<Catalog> listC = dao.getAllCatalog();
        int count = dao.getTotalProduct(id);
        int endPage = count/10;
        if (count%10 !=0){
            endPage++;
        }
        request.setAttribute("endP",endPage);//hien thi phan trang
        request.setAttribute("listC",listC);//hien thị catalog
        request.setAttribute("listP",list); //hien thi san pham
        request.setAttribute("tag",index); //css phan trang
        request.getRequestDispatcher("managerProduct.jsp").forward(request,response);
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
