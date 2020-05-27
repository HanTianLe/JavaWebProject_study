package com.hantianle.servlet6_case;

import com.hantianle.entity_case.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/case")
public class CaseServlet extends HttpServlet {
    // 不在doGet里面是为了扩大list的作用域。
    private Map<Integer,User> map = new HashMap<>();
    // 将预先值通过构造方法放在list里面。(也可以通过静态代码块的方法，不过用此方法需要将list增加static属性。)
    public CaseServlet() {
        map.put(1,new User(1,"张三",75.2));
        map.put(2,new User(2,"李四",76.3));
        map.put(3,new User(3,"王五",77.4));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        if (method == null){
            method = "findAll";
        }
        switch (method){
            case "findAll":
                req.setAttribute("maps",map.values());
                req.getRequestDispatcher("case/index.jsp").forward(req,resp);
                break;
            case "delete":
                String idStr = req.getParameter("id");
                Integer id = Integer.parseInt(idStr);
                map.remove(id);
                // 重定向到index.jsp
                resp.sendRedirect("/case");
                break;
            case "findById":
                idStr = req.getParameter("id");
                id = Integer.parseInt(idStr);
                // User user = map.get(id);
                req.setAttribute("user",map.get(id));
                req.getRequestDispatcher("/case/update.jsp").forward(req,resp);
                break;
            case "add":
                resp.sendRedirect("case/add.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置编码格式。
        req.setCharacterEncoding("UTF-8");
        String idStr = req.getParameter("id");
        String name = req.getParameter("name");
        String scoreStr = req.getParameter("score");
        Integer id = Integer.parseInt(idStr);
        Double score = Double.parseDouble(scoreStr);
        User user = new User(id,name,score);
        map.put(id,user);
        resp.sendRedirect("/case");
    }
}

