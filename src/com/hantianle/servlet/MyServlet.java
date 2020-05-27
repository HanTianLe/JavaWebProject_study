package com.hantianle.servlet;

import javax.servlet.*;
import java.io.IOException;

public class MyServlet implements Servlet {

    @Override
    /** 初始化操作。比如获取一些项目配置的参数，数据库的连接建立。*/
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    /** 获取servlet本身的信息。*/
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    /** servlet的核心方法，当servlet被访问时首先调用该方法，在该方法内决定调用doPost还是doGet，缺省就可以不用重写。*/
    // Request：请求。
    // Response：响应。
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        String id = servletRequest.getParameter("id");//网页中地址输入/myservlet?id=1
        //                                                             /myservlet?id=hha
        //                                                             /myservlet?id=刺客信条
        //                                                             /myservlet
        //                                                             这4种随便。
        System.out.println("我是Servlet，我已经接收到了客户端发来的请求~ 参数是:"+id);//控制台输出。
        servletResponse.setContentType("text/html;charset=UTF-8");//设置响应的类型，编码设置为UTF-8。
        servletResponse.getWriter().write("Hello Client! 我是MyServlet~~~你的请求参数为:"+id);//网页响应输出。
    }

    @Override
    /** 返回字符串信息。*/
    public String getServletInfo() {
        return null;
    }

    @Override
    /** 移除servlet。该方法在web容器移出所有servlet时执行。*/
    public void destroy() {

    }
}

