package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.Dao;
import com.example.webbanhangver1.model.Cart;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Item;
import com.example.webbanhangver1.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProcessControl", value = "/Process")
public class ProcessControl extends HttpServlet {
   // protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession(true);

            Dao dao = new Dao();
            List<Catalog> listC = dao.getAllCatalog();
            request.setAttribute("listC",listC);
            Cart cart = null;
            Object o = session.getAttribute("cart");
            //co roi
            if (o!= null){
                cart = (Cart) o;
            }else {
                cart = new Cart();
            }
            String tnum = request.getParameter("num");
            String tid = request.getParameter("id");
            int id, num;
            try {
                id = Integer.parseInt(tid);
                num = Integer.parseInt(tnum);
                if ((num==-1)&&(cart.getQuantityByID(id)<=1)){
                    cart.removeItem(id);
//                }else if ((num==-1)&&(cart.getQuantityByID(id)>1)){
//
//                    List<Item> t = t.remove(1);
               }
                else {
                    Dao dao1 = new Dao();
                    Product p = dao1.getProductByID(tid);
                    double price = p.getPriceNew();
                    Item t =new Item(p,num,price);
                    cart.addItem(t);
                }
            }catch (Exception e){

            }

            List<Item> list = cart.getItems();
            session.setAttribute("cart",cart);
            session.setAttribute("Size",list.size());
            request.getRequestDispatcher("cart.jsp").forward(request,response);


        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
//        HttpSession session = request.getSession(true);
//
//        Dao dao = new Dao();
//        List<Catalog> listC = dao.getAllCatalog();
//        request.setAttribute("listC",listC);
//        Cart cart = null;
//        Object o = session.getAttribute("cart");
//        //co roi
//        if (o!= null){
//            cart = (Cart) o;
//        }else {
//            cart = new Cart();
//        }
//        int id = Integer.parseInt(request.getParameter("id"));
//        cart.removeItem(id);
//
//        List<Item> list = cart.getItems();
//        session.setAttribute("cart",cart);
//        session.setAttribute("Size",list.size());
//        request.getRequestDispatcher("cart.jsp").forward(request,response);
//
//    }
}
