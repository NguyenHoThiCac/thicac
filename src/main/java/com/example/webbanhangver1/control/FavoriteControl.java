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

@WebServlet(name = "FavoriteControl", value = "/Fav")
public class FavoriteControl extends HttpServlet {
    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o =session.getAttribute("fav");
        //co roi
        if(o!=null){
            cart = (Cart) o;
        }else {
            cart = new Cart();
        }
//            String tNum = request.getParameter("num");
        String tid = request.getParameter("pID");

//                if (tNum.equals() ){
//            tNum.equals("1");
//        }

        try {
              // int  num = Integer.parseInt(tNum);
            // id = Integer.parseInt(tid);
            Dao dao = new Dao();
            Product p = dao.getProductByID(tid);
            double price = p.getPriceNew();
            Item t = new Item(p,1,price);
            cart.addItem(t);

        }catch (Exception e){
            //   tNum.equals("1");

        }
        Dao dao = new Dao();
        List<Catalog> listC = dao.getAllCatalog();
        request.setAttribute("listC",listC);
        List<Item> list = cart.getItems();
        session.setAttribute("fav",cart);
        session.setAttribute("SizeFav",list.size());
        request.getRequestDispatcher("Shop").forward(request,response);
    }
}
