package com.hantianle.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
/**
 *  处理敏感词
 */
@WebFilter("/word")
public class filter_Word implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // 解决乱码
        servletRequest.setCharacterEncoding("UTF-8");
        // 将"敏感词"替换成"***"
        String name = servletRequest.getParameter("name");
        name = name.replaceAll("敏感词","***");
        servletRequest.setAttribute("names",name);
        filterChain.doFilter(servletRequest,servletResponse);
    }
}

