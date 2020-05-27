package com.hantianle.servlet2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/helloMan")    //访问时网站如：http://localhost:8080/helloMan?id=1&name=韩天乐   （id和name可以等于别的字符串。）
public class HelloMan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        // 控制台输出
        System.out.println(id);
        String name = request.getParameter("name");
        // 控制台输出
        System.out.println(name);

        response.getWriter().write("<!DOCTYPE html>");
        response.getWriter().write("<html>");
        response.getWriter().write("<head>");
        response.getWriter().write("<title>Title</title>");
        response.getWriter().write("</head>");
        response.getWriter().write("<body>");
        response.getWriter().write("<h1>Hello~</h1>");
        response.getWriter().write("</body>");
        response.getWriter().write("</html>");

        String str = "Hello World";
        // 控制台输出
        System.out.println(str);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("Hello Post~");
    }
}

