package util;

import dao.*;

import java.sql.*;
import java.util.List;

/**
 * Created by hello on 2015/11/3.
 */
public class DbUtils {
    private static Connection conn=null;
    private static int everyPage = 10;
    private static String path="E:\\IdeaProjects\\resource";
    public static String getPath(){
        return path;
    }
    //定义存储分页的list集合
    public static int getEveryPage() {
        return everyPage;
    }
    public static void setEveryPage(int everyPage) {
        DbUtils.everyPage = everyPage;
    }

    public static Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://192.168.1.5:1433;DatabaseName=benMoe";
//            String url="jdbc:sqlserver://172.19.70.147:1433;DatabaseName=benMoe";
            String name="sa";
            String password="h1210975300";
            conn= DriverManager.getConnection(url,name,password);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return conn;
    }
    public static void closeConnection(){
        try {
            if(conn!=null){
                conn.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static void closeResultSet(ResultSet rs){
        try {
            if(rs!=null){
                rs.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static void closePreparedStatement(PreparedStatement pst){
        try {
            if(pst!=null){
                pst.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static User getUserByEmail(String email){
        UserDao userDao=new UserDaoImpl();
        User user=userDao.searchUserByemail(email);
        return  user;
    }
}
