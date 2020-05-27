package com.hantianle.servlet;

import java.lang.reflect.Constructor;

/**
 *  Java环境中是加载不到Servlet的。
 *  需要在web中创建lib文件夹在放入servlet-qpi.jar文件。
 *  并在Project Structure里面的Libraries里选择该文件添加到项目。
 *  这样java才能访问Servlet。
 */
public class TomcatTest {
    public static void main(String[] args) {
        String str = "com.hantianle.servlet.MyServlet3";
        try {
            Class clazz = Class.forName(str);
            Constructor constructor = clazz.getConstructor();
            Object object = constructor.newInstance();
            System.out.println(object);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

