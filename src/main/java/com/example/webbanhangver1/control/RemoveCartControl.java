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

@WebServlet(name = "RemoveCartControl", value = "/RemoveCart")
public class RemoveCartControl extends HttpServlet {
    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        int id = Integer.parseInt(request.getParameter("id"));
        cart.removeItem(id);

        List<Item> list = cart.getItems();
        session.setAttribute("cart",cart);
        session.setAttribute("Size",list.size());
        request.getRequestDispatcher("cart.jsp").forward(request,response);

//
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
