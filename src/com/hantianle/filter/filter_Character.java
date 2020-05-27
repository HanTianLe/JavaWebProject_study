package com.hantianle.filter;
/***
 *      过滤器 ：Filter
 *
 *      功能：
 *          1、⽤来拦截传⼊的请求和传出的响应。
 *          2、修改或以某种⽅式处理正在客户端和服务端之间交换的数据流。
 *
 *      如何使⽤？
 *          与使⽤ Servlet 类似，Filter 是 Java WEB 提供的⼀个接⼝，
 *          开发者只需要⾃定义⼀个类并且实现该接⼝即可。
 *
 *      注意：doFilter ⽅法中处理完业务逻辑之后，
 *          必须添加：filterChain.doFilter(servletRequest,servletResponse);   ⭐⭐⭐⭐⭐⭐⭐⭐
 *          否则请求/响应⽆法向后传递，⼀直停留在过滤器中。
 *
 *      配置：
 *          配置filter方法_1。  基于xml文件的配置方式。
 *          配置filter方法_2。  基于注解的配置方式。
 *
 *      生命周期：
 *          当 Tomcat 启动时，通过反射机制调⽤ Filter 的⽆参构造函数创建实例化对象，同时调⽤ init ⽅法实现
 *          初始化，doFilter ⽅法调⽤多次，当 Tomcat 服务关闭的时候，调⽤ destroy 来销毁 Filter 对象。
 *
 *          ⽆参构造函数：只调⽤⼀次，当 Tomcat 启动时调⽤（Filter ⼀定要进⾏配置）。
 *
 *          init ⽅法：只调⽤⼀次，当 Filter 的实例化对象创建完成之后调⽤。
 *
 *          doFilter：调⽤多次，访问 Filter 的业务逻辑都写在 Filter 中。
 *
 *          destroy：只调⽤⼀次，Tomcat 关闭时调⽤。
 *
 *          同时配置多个 Filter，Filter 的调⽤顺序是由 web.xml 中的配置顺序来决定的，
 *          写在上⾯的配置先调⽤，因为 web.xml 是从上到下顺序读取的。
 */
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/characterServlet")
public class filter_Character implements Filter {
    // 测试写的，实际情况不需要。
    public filter_Character(){
        System.out.println("创建了无参构造对象。");
    }

    @Override
    // 测试写的，实际情况不需要。
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("init...");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // 设置编码格式。
        servletRequest.setCharacterEncoding("UTF-8");
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    // 测试写的，实际情况不需要。
    public void destroy() {
        System.out.println("destroy。。。");
    }
}

