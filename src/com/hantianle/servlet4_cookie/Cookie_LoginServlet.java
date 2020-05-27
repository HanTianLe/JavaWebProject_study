package com.hantianle.servlet4_cookie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cookie_login")
public class Cookie_LoginServlet extends HttpServlet {

    private String myusername = "admin";
    private String mypassword = "123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals(myusername) && password.equals(mypassword)){
            Cookie cookie = new Cookie("name",username);
            // 设置cookie的有效时间（7天）
            cookie.setMaxAge(60*60*24*7);
            // 将信息存入到cookie。
            resp.addCookie(cookie);
            resp.sendRedirect("cookie_welcome.jsp");
        }else {
            resp.sendRedirect("cookie_login.jsp");
        }
    }
}

