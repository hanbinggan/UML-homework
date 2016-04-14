package servlet;

import dao.Draw;
import dao.DrawDao;
import dao.DrawDaoImpl;
import util.DbUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.SimpleTimeZone;


/**
 * Created by hello on 2015/10/22.
 */
@WebServlet(name = "UploadImgDemoServlet",urlPatterns = "/servlet/UploadImgDemoServlet")
@MultipartConfig //servlet 3.0规范
public class UploadImgDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //存图片的地址
        String path= "E:\\IdeaProjects";
        File file=new File(path);
        if(!file.exists()){
            file.mkdir();
        }
        Part part=request.getPart("image");
        String name=path+"\\"+getSubmittedFileName(part); //getSubmittedFileName()函数是获得上传文件的名字
        part.write(name);//存图片
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    private static String getSubmittedFileName(Part part){
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
        String date=format.format(System.currentTimeMillis());

        for(String cd:part.getHeader("content-disposition").split(";")){
            if(cd.trim().startsWith("filename")){
                String fileName=cd.substring(cd.indexOf('=') +1).trim().replace("\"","");
                String tmp = fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
                return tmp;
            }
        }
        return  null;
    }
}
