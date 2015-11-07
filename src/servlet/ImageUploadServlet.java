package servlet;

import dao.Draw;
import dao.DrawDao;
import dao.DrawDaoImpl;
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
@WebServlet(name = "ImageUploadServlet",urlPatterns = "/servlet/ImageUploadServlet")
@MultipartConfig
public class ImageUploadServlet extends HttpServlet {
    static int cnt=1;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getSession().getAttribute("email").toString();
        String path="E:\\IdeaProjects\\hello\\web\\resource\\"+id;
        System.out.println(path);
        File file=new File(path);

        if(!file.exists()){
            file.mkdir();
        }
        int cnt=Integer.parseInt(request.getParameter("cnt"));
//        String str=request.getParameter("cnt1");
//        System.out.println("3344444"+str);
        System.out.println(cnt);
        DrawDao drawDao=new DrawDaoImpl();
        for(int i=0;i<cnt;i++){
            Part part=request.getPart("fileToUpload" + i);
            String nname=getSubmittedFileName(part);
            String fileName = path+"\\"+nname;
            part.write(fileName);
            Draw draw=new Draw();
            draw.setEmail(id);
            draw.setName(nname);
            Date cur=new Date(System.currentTimeMillis());
            draw.setTime(cur);
            drawDao.insert(draw);
        }
//        Part filePart = request.getPart("doc");
//        String fileName = getSubmittedFileName(filePart);
//        String path="E:\\IdeaProjects\\hello\\out\\artifacts\\hello_war_exploded\\"+fileName;
//        filePart.write(path);
//        System.out.println(path);
//        InputStream fileContent =filePart.getInputStream();
//        byte[]image= IOUtils.toByteArray(fileContent);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    private static String getSubmittedFileName(Part part){
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
        String date=format.format(System.currentTimeMillis());

        for(String cd:part.getHeader("content-disposition").split(";")){
            if(cd.trim().startsWith("filename")){
                String fileName=cd.substring(cd.indexOf('=')+1).trim().replace("\"","");
                String tmp = fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
                String t1 = tmp.substring((tmp.lastIndexOf('.') + 1), tmp.length());
                String name=date+cnt+'.'+t1;
                cnt++;
                return name;
            }
        }
        return  null;
    }
}
