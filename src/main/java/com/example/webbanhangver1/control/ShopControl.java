package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopControl", value = "/Shop")
public class ShopControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String indexPage = request.getParameter("index");
        if(indexPage==null){
            indexPage="1"; //lỗi khi chạy servlet chưa nhận dc index
        }
        int index = Integer.parseInt(indexPage);// ep kieu tu String qua int
        Dao dao = new Dao();
        List<Product> list = dao.getAllProduct(index);
        List<Catalog> listC = dao.getAllCatalog();
        int count = dao.getTotalProduct();//154
        int endPage = count/12;
        if (count%12 !=0){
            endPage++;
        }
        //quickview
        String productID = request.getParameter("quickID");
        Product p = dao.getProductByID(productID);
        request.setAttribute("QuickView",p);
        //quickview không hoạt động được
        request.setAttribute("endP",endPage);//hien thi phan trang
        request.setAttribute("listC",listC);//hien thị catalog
        request.setAttribute("listProduct",list); //hien thi san pham
        request.setAttribute("tag",index); //css phan trang
        request.getRequestDispatcher("shop.jsp").forward(request,response);
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
