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
 * Created by jmy on 2015/11/1.
 */
@WebServlet(name = "UpdateUserServlet",urlPatterns = "/servlet/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String nickname = request.getParameter("nickname");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        System.out.println(nickname + password + sex + email);
        User user = new User();
        user.setNickname(nickname);
        user.setPassword(password);
        user.setSex(sex);
        user.setEmail(email);
        //System.out.println(nickname + password + role + sex + email);
        UserDao userDao = new UserDaoImpl();
        userDao.updateUser(user);
        request.getRequestDispatcher("../planner_edit_succeed.jsp").forward(request,response);
        out.flush();
        out.close();
    }
}
