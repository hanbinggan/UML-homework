package servlet;

import dao.DrawerDao;
import dao.DrawerDaoImpl;
import dao.DrawerProjects;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by hello on 2015/11/7.
 */
@WebServlet(name = "DrawerJoinServlet",urlPatterns = "/servlet/DrawerJoinServlet")
@MultipartConfig
public class DrawerJoinServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String email=request.getParameter("email");
        String id=request.getParameter("planid");

        DrawerDao drDao=new DrawerDaoImpl();
        if(drDao.quercy(email,id) == null){
            drDao.insert(email, id);
            request.setAttribute("sucess","true");
        }else{
            request.setAttribute("sucess","false");
            response.getWriter().print("<script>alert('你已经参加该项目！')</script>");
        }
//        request.setAttribute("planid",id);
        response.sendRedirect("../jsp/planRead.jsp?planid="+id);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
