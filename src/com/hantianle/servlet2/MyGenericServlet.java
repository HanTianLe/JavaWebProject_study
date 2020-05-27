package com.hantianle.servlet2;

import javax.servlet.*;
import java.io.IOException;
/**
 * 比喻这是你爷爷。
 */
public class MyGenericServlet implements Servlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException { }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException { }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() { }
}
