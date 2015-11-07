package servlet;

//import sun.nio.ch.IOUtil;

import util.DbUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;


import java.util.Collection;
/**
 * Created by hello on 2015/10/22.
 */
@WebServlet(name = "TestServlet",urlPatterns = "/servlet/TestServlet")
@MultipartConfig
public class TestServlet extends HttpServlet {
    public static byte[] getBytesFromInputStream(InputStream is) throws IOException {
        try (ByteArrayOutputStream os = new ByteArrayOutputStream();)
        {
            byte[] buffer = new byte[0xFFFF];

            for (int len; (len = is.read(buffer)) != -1;)
                os.write(buffer, 0, len);

            os.flush();

            return os.toByteArray();
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getSession().getAttribute("id").toString();
//        Collection<Part>parts=request.getParts();
//        String path="E:\\IdeaProjects\\hello\\out\\artifacts\\hello_war_exploded\\"+id;
        String path= DbUtils.getPath()+'\\'+id;
        System.out.println(path);
        File file=new File(path);
        if(!file.exists()){
            file.mkdir();
        }
        int cnt=Integer.parseInt(request.getParameter("cnt"));
        System.out.println(cnt);
        for(int i=0;i<cnt;i++){
            Part part=request.getPart("fileToUpload" + i);
            String fileName = getSubmittedFileName(part);
            System.out.println(1);
            System.out.print(fileName);
            InputStream fileContent=part.getInputStream();
            System.out.println(2);
            System.out.println(fileContent.available());
//            byte []images= IOUtils.toByteArray(fileContent);
            byte[] images=getBytesFromInputStream(fileContent);
            System.out.println(images.length);
            System.out.println(3);
            File tmp=new File(path+"\\"+fileName);
            FileOutputStream fos=new FileOutputStream(tmp);
            fos.write(images);
            fos.flush();
            fos.close();
//            part.write(path+"\\"+fileName);
            System.out.println(fileName);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    private static String getSubmittedFileName(Part part){
        for(String cd:part.getHeader("content-disposition").split(";")){
            if(cd.trim().startsWith("filename")){
                String fileName=cd.substring(cd.indexOf('=')+1).trim().replace("\"","");
                return fileName.substring(fileName.lastIndexOf('/')+1).substring(fileName.lastIndexOf('\\')+1);
            }
        }
        return  null;
    }
}
