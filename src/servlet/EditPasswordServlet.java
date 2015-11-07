package servlet;

import dao.User;
import dao.UserDao;
import dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jmy on 2015/11/2.
 */
@WebServlet(name = "EditPasswordServlet",urlPatterns = "/servlet/EditPasswordServlet")
public class EditPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String password3 = request.getParameter("password3");
        System.out.println(password+password2+password3);
        User user = new User();
        UserDao userDao = new UserDaoImpl();
        String email = (String)request.getSession().getAttribute("email");
        System.out.println(email);
        String oldpassword=userDao.searchPasswordByemail(email);
        if(oldpassword == password && password2 == password3){
        user.setPassword("password2");
        request.getRequestDispatcher("../planner_edit_succeed.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("../edit_fail.jsp").forward(request,response);
        }
        out.flush();
        out.close();
    }
}
