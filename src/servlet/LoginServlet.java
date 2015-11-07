package servlet;

import dao.User;
import dao.UserDao;
import dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by hello on 2015/11/4.
 */
@WebServlet(name = "LoginServlet",urlPatterns = "/servlet/LoginServlet")
@MultipartConfig
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        UserDao userDao=new UserDaoImpl();
        String email=request.getParameter("email");
        String password=request.getParameter("password");

        User user=userDao.searchUserByemail(email);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter pw=response.getWriter();
//        System.out.println(password + " " + email);

        if(user!=null){
//            System.out.println(user.getPassword() + " " + password.equals(user.getPassword()));
            if(password.equals(user.getPassword())){
                request.getSession().setAttribute("email", email);
                request.getSession().setAttribute("id", user.getRole());
                pw.write("true");
            }else{
                pw.write("false");
            }
        }else{
            pw.write("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
