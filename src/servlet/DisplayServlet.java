package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * Created by hello on 2015/10/27.
 */
@WebServlet(name = "DisplayServlet",urlPatterns = "/servlet/DisplayServlet")
public class DisplayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getParameter("path");
        try{
             FileInputStream fis=new FileInputStream(new File(path));

            BufferedInputStream bis=new BufferedInputStream(fis);
            BufferedOutputStream output=new BufferedOutputStream(response.getOutputStream());
            for(int data;(data=bis.read())>-1;){
                output.write(data);
            }
            output.close();
            bis.close();
            fis.close();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
