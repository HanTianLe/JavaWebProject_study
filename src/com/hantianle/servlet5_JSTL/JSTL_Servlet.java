package com.hantianle.servlet5_JSTL;

import com.hantianle.entity.Address;
import com.hantianle.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jstl")
public class JSTL_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> list = new ArrayList<>();
        list.add(new User("张三",20,new Address(1,"淮安")));
        list.add(new User("李四",22,new Address(2,"涟水")));
        list.add(new User("王二",33,new Address(3,"河网")));
        req.setAttribute("list",list);
        req.getRequestDispatcher("JSTL/jstl.jsp").forward(req,resp);
    }
}

