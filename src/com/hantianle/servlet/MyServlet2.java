package com.hantianle.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

// 配置servlet方法_2    ------基于注解的方式。
@WebServlet("/myservlet2")
public class MyServlet2 implements Servlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        String id = servletRequest.getParameter("id");//网页中地址输入/myservlet2?id=1
        //                                                             /myservlet2?id=hha
        //                                                             /myservlet2?id=刺客信条
        //                                                             /myservlet2
        //                                                             这4种随便。
        System.out.println("我是Servlet2，我已经接收到了客户端发来的请求~ 参数是:"+id);//控制台输出。
        servletResponse.setContentType("text/html;charset=UTF-8");//设置响应的类型，编码设置为UTF-8。
        servletResponse.getWriter().write("Hello Client! 我是MyServlet2~~~你的请求参数为:"+id);//网页响应输出。
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {

    }
}

