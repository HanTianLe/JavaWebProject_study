package com.hantianle.servlet;
/**
 *      Servlet 的生命周期。
 */
import javax.servlet.*;
import java.io.IOException;
import java.util.Enumeration;

public class MyServlet3 implements Servlet {

    /**
     * 做个实验，看看是否先是创建MyServlet3对象。
     */
    //无参构造函数。（只调用一次，用来创建对象。）
    public MyServlet3(){
        System.out.println("创建了MyServlet3对象。");
        System.out.println("-------------------------");
    }

    @Override
    // init() 函数只调⽤⼀次，初始化对象。
    public void init(ServletConfig servletConfig) throws ServletException {
        /**
         *  1、getServletName()方法： 获取Servlet名称。
         */
        System.out.println(servletConfig.getServletName()); //myServlet3
        System.out.println("-------------------------");

        /**
         *  2、getInitParameter()方法： 获取初始化参数。
         *  使用该方法，servlet不能用注解的方式配了，而是用xml文件方式配置。
         *  实际就是拿到web.xml配置文件里面的参数。这些参数就是Servlet初始化的一些信息。
         *  这个方法基本用不到。
         */
        System.out.println(servletConfig.getInitParameter("username")); //admin
        System.out.println("-------------------------");

        /**
         *  3、getInitParameterNames()方法： 获得web.xml配置文件里面的所有<param-name>
         *  使用该方法，servlet不能用注解的方式配了，而是用xml文件方式配置。
         */
        Enumeration<String> enumeration = servletConfig.getInitParameterNames();
        while (enumeration.hasMoreElements()){
            String element = enumeration.nextElement();
            System.out.println(element);
        }
        System.out.println("-------------------------");

        /**
         *  4、getServletContext()方法： 返回ServletContext对象，它是Servlet的上下文。
         *  是整个Servlet的管理者。
         *  通过它可以拿到整个服务的信息。
         *  里面有许多方法。
         */
        ServletContext servletContext = servletConfig.getServletContext();
        // getContextPath()方法：获取的是当前项目应用的名称。
        System.out.println(servletContext.getContextPath());
        // getServerInfo()方法：获取的是Apache Tomcat的版本。
        System.out.println(servletContext.getServerInfo());
        System.out.println("-------------------------");
        System.out.println("对Servlet完成初始化操作。");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    // service() 函数调⽤ N 次，执⾏业务⽅法。
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("执行了Servlet的业务方法。。。。。。");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    // destroy() 函数只调⽤⼀次，卸载对象。
    public void destroy() {
        System.out.println("释放Servlet对象。。。");
    }
}

