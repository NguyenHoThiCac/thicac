package com.example.webbanhangver1.Fillter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "RouterFilter")
public class RouterFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        String url =httpServletRequest.getServletPath();
        if (url.endsWith(".jsp")&& !url.contains("Error.jsp")){
            httpServletResponse.sendRedirect("Home");
        }
        chain.doFilter(request, response);

    }
}