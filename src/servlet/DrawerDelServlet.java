package servlet;

import dao.DrawerDao;
import dao.DrawerDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hello on 2015/11/7.
 */
@WebServlet(name = "DrawerDelServlet",urlPatterns = "/servlet/DrawerDelServlet")
public class DrawerDelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String email=request.getParameter("email");
        String planid=request.getParameter("planid");
        DrawerDao dr=new DrawerDaoImpl();
        dr.changeState(email, planid, 2);
        response.sendRedirect("../jsp/planRead.jsp?planid="+planid);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
