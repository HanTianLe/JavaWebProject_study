package com.hantianle.ajax;

import com.hantianle.entity.Location;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/location")
public class LocationServlet extends HttpServlet {

    private static Map<String,List<String>> cityMap;
    private static Map<String,List<String>> provinceMap;

    static {
        cityMap = new HashMap<>();
        List<String> areas = new ArrayList<>();
        //⻄安
        areas.add("雁塔区");
        areas.add("莲湖区");
        areas.add("新城区");
        cityMap.put("⻄安市",areas);
        //宝鸡
        areas = new ArrayList<>();
        areas.add("陈仓区");
        areas.add("渭宾区");
        areas.add("新城区");
        cityMap.put("宝鸡市",areas);
        //渭南
        areas = new ArrayList<>();
        areas.add("临渭区");
        areas.add("⾼新区");
        cityMap.put("渭南市",areas);
        //郑州
        areas = new ArrayList<>();
        areas.add("郑州A区");
        areas.add("郑州B区");
        cityMap.put("郑州市",areas);
        //洛阳
        areas = new ArrayList<>();
        areas.add("洛阳A区");
        areas.add("洛阳B区");
        cityMap.put("洛阳市",areas);

        provinceMap = new HashMap<>();
        List<String> cities = new ArrayList<>();
        cities.add("⻄安市");
        cities.add("宝鸡市");
        cities.add("渭南市");
        provinceMap.put("陕⻄省",cities);
        cities = new ArrayList<>();
        cities.add("郑州市");
        cities.add("洛阳市");
        cities.add("开封市");
        provinceMap.put("河南省",cities);
        cities = new ArrayList<>();
        cities.add("南京市");
        cities.add("苏州市");
        cities.add("南通市");
        provinceMap.put("江苏省",cities);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getParameter("type");
        resp.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        switch (type){
            case "city":
                List<String> areas = cityMap.get(id);
                JSONArray jsonArray = JSONArray.fromObject(areas);
                resp.getWriter().write(jsonArray.toString());
                break;
            case "province":
                List<String> cities = provinceMap.get(id);
                String city = cities.get(0);
                List<String> cityAreas = cityMap.get(city);
                Location location = new Location();
                location.setCities(cities);
                location.setAreas(cityAreas);
                JSONObject jsonObject = JSONObject.fromObject(location);
                resp.getWriter().write(jsonObject.toString());
                break;
        }

    }
}


