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
 * Created by jmy on 2015/10/31.
 */
@WebServlet(name = "InsertUserServlet",urlPatterns = "/servlet/InsertUserServlet")
public class InsertUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String nickname = request.getParameter("nickname");
        String password = request.getParameter("password");
        String role =request.getParameter("role");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        System.out.println(nickname);
        System.out.println(nickname + password + role + sex + email);
        User user = new User();
        user.setNickname(nickname);
        user.setPassword(password);
        user.setRole(role);
        user.setSex(sex);
        user.setEmail(email);
        //System.out.println(nickname + password + role + sex + email);
        UserDao userDao = new UserDaoImpl();
        userDao.insertUser(user);
        response.sendRedirect("../jsp/login.jsp");
        out.flush();
        out.close();
    }
}
