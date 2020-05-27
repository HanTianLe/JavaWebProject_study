package com.hantianle.servlet8_upload;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

/**
 *  Servlet：
 *      fileupload 组件可以将所有的请求信息都解析成 FileItem 对象，
 *      可以通过对 FileItem 对象的操作完成上传。
 *      ⾯向对象的思想。
 */

@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /** 真正开发并不会这样写。*/
        /*// 通过输入流获取客户端传来的数据流。
        InputStream inputStream = req.getInputStream();
        Reader reader = new InputStreamReader(inputStream);
        BufferedReader bufferedReader = new BufferedReader(reader);
        // 通过输出流将数据流输出到本地硬盘。
        // 获取文件夹的（绝对路径）。\out\artifacts\JavaWebProject_study_war_exploded\file
        String path = req.getServletContext().getRealPath("file/copy.txt");
        OutputStream outputStream = new FileOutputStream(path);
        Writer writer = new OutputStreamWriter(outputStream);
        BufferedWriter bufferedWriter = new BufferedWriter(writer);
        String str ="";
        while ((str = bufferedReader.readLine()) != null){
            // 控制台输出txt文件里面内容。
            System.out.println(str);
            bufferedWriter.write(str);
        }
        bufferedWriter.close();
        writer.close();
        outputStream.close();
        bufferedReader.close();
        reader.close();
        inputStream.close();*/
        /** 正常操作。*/
        try {
            DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            List<FileItem> list = servletFileUpload.parseRequest(req);
            for (FileItem fileItem:list){
                if (fileItem.isFormField()){
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString("UTF-8");
                    System.out.println(name+":"+value);
                }else {
                    String fileName = fileItem.getName();
                    long size = fileItem.getSize();
                    System.out.println(fileName+":"+size+"Byte");
                    // 输入流
                    InputStream inputStream = fileItem.getInputStream();
                    String path = req.getServletContext().getRealPath("file/"+fileName);
                    // 输出流
                    OutputStream outputStream = new FileOutputStream(path);
                    int temp = 0;
                    while((temp = inputStream.read())!=-1){
                        outputStream.write(temp);
                    }
                    outputStream.close();
                    inputStream.close();
                    System.out.println("上传成功");
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }
}

