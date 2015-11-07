package servlet;

import com.sun.xml.internal.bind.v2.model.annotation.FieldLocatable;
import dao.DrawDao;
import dao.DrawDaoImpl;
import org.omg.PortableInterceptor.ServerRequestInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import util.NameConfig;
/**
 * Created by hello on 2015/11/1.
 */
@WebServlet(name = "ImgDeleteServlet",urlPatterns = "/servlet/ImgDeleteServlet")
public class ImgDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String path=request.getParameter("imgPath");
       /*************************************************/
        File img=new File(path);
        img.delete();
        String name=request.getParameter("name");
        String email=(String)request.getSession().getAttribute("email");
//        org.apache.commons.io.FileUtils.forceDelete(img1);
        DrawDao drawDao=new DrawDaoImpl();
        drawDao.del(email,name);
        response.sendRedirect("../jsp/imageDel.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
