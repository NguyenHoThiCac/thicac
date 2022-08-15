package com.example.webbanhangver1.control;

import com.example.webbanhangver1.dao.DaoOder;
import com.example.webbanhangver1.model.Account;
import com.example.webbanhangver1.model.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckOutControl", value = "/CheckOut")
public class CheckOutControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        //co roi
        if(o!=null){
            cart = (Cart) o;
        }else {
            cart = new Cart();
        }
        Account acc = null;
        Object a=session.getAttribute("acc");
        if (a!=null){
            acc=(Account) a;
            DaoOder daoOder = new DaoOder();
            daoOder.addOder(acc,cart);
            session.removeAttribute("cart");
            session.setAttribute("Size",0);
            request.getRequestDispatcher("Home").forward(request,response);
        }else {
            response.sendRedirect("DisplayLogin");
        }
    }
}
