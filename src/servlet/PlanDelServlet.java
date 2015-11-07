package servlet;

import dao.DrawerDao;
import dao.DrawerDaoImpl;
import dao.plan.PlanDao;
import dao.plan.PlanDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hello on 2015/11/7.
 */
@WebServlet(name = "PlanDelServlet",urlPatterns = "/servlet/PlanDelServlet")
public class PlanDelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String planid=request.getParameter("planid");
        PlanDao pd=new PlanDaoImpl();
        pd.del(planid);

        DrawerDao dr=new DrawerDaoImpl();
        dr.changeState("",planid,2);

        response.sendRedirect("../jsp/planDel.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
