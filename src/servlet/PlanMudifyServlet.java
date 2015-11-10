package servlet;

import dao.plan.PlanDao;
import dao.plan.PlanDaoImpl;
import dao.plan.PlanEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by hello on 2015/11/7.
 */
@WebServlet(name = "PlanMudifyServlet",urlPatterns = "/servlet/PlanMudifyServlet")
public class PlanMudifyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        PlanEntity planEntity = new PlanEntity();
        Date dt=new Date(System.currentTimeMillis());//如果不需要格式,可直接用dt,dt就是当前系统时间
        // Timestamp timestamp = System.currentTimeMillis();
        planEntity.setId(request.getParameter("id"));//用DateFormat的format()方法在dt中获取并以yyyy/MM/dd HH:mm:ss格式显示
        planEntity.setPlannerid(request.getParameter("plannerid"));
        planEntity.setName(request.getParameter("name"));
        planEntity.setIntro(request.getParameter("intro"));
        planEntity.setTag(request.getParameter("tag"));
        planEntity.setBgdate(dt);
        PlanDao planDao = new PlanDaoImpl();
        planDao.planMudify(planEntity);
        //response.sendRedirect("planReadServlet");
        request.setAttribute("planid",planEntity.getId());
        response.sendRedirect("../jsp/planRead.jsp?planid=" + planEntity.getId());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
