package com.hantianle.ajax;

import com.hantianle.entity.User2;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/ajax2_test")
public class ajax2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User2 user2 = new User2(1,"张三",99.9);
        // 解决乱码。
        resp.setCharacterEncoding("UTF-8");
        // 将 Java 对象转为 JSON 格式。(需要导入json-lib所用到的jar包（6个）。)
        JSONObject jsonObject = JSONObject.fromObject(user2);
        resp.getWriter().write(jsonObject.toString());
    }
}

