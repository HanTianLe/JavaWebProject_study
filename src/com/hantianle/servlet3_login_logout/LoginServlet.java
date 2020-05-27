package com.hantianle.servlet3_login_logout;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

// @WebServlet("/login")
// 需要初始化参数时，就不需要映射了。需要在xml文件里面配置servlet，并且初始化参数。
public class LoginServlet extends HttpServlet {
    // 成员变量
    private String myusername;
    private String mypassword;
    @Override
    public void init(ServletConfig config) throws ServletException {
        myusername = config.getInitParameter("username");
        mypassword = config.getInitParameter("password");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals(myusername) && password.equals(mypassword)){
            /** session定义。*/
            HttpSession session = req.getSession();
            /** 登录成功(这边改用session存储username，那么welcome.jsp里面取username也要用session取。)*/
            session.setAttribute("username",username);
            /*
            如果还用request存储，那么就还得用转发！！！！而且welcome里面获取username也得用request！！！
            req.setAttribute("username",username);
            */

            /*
            转发（需要用request传数据时使用。如username。）不过因为username用session存储了，所以转发可以不用了，可以直接重定向。
            req.getRequestDispatcher("welcome.jsp").forward(req,resp);
            */
            /** 重定向。（不需要request传数据时使用。）*/
            resp.sendRedirect("welcome.jsp");
        }else {
            /** 登陆失败（重定向）*/
            resp.sendRedirect("login.jsp");
        }
    }
}

