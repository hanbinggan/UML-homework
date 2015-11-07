package dao;

import util.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by jmy on 2015/10/31.
 */
public class UserDaoImpl implements UserDao {
    @Override
    public void insertUser(User user) {
        Connection conn = null;
        PreparedStatement pstmt=null;
        try{
            conn= DbUtils.getConnection();
            String sql="insert into usertable(nickname,userpassword,userrole,sex,email)values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,user.getNickname());
            pstmt.setString(2,user.getPassword());
            pstmt.setString(3,user.getRole());
            pstmt.setString(4,user.getSex());
            pstmt.setString(5,user.getEmail());
            // pstmt.setString(6,user.getBirth());
            // pstmt.setString(8,user.getUrl());
            pstmt.executeUpdate();
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
    }

    @Override
    public void updateUser(User user) {
        Connection conn = null;
        PreparedStatement pstmt=null;
        try{
            conn=DbUtils.getConnection();
            String sql="update usertable set nickname=?,userpassword=?,sex=? where email=?";
            pstmt = conn.prepareStatement(sql);
            // pstmt.setString(1,user.getUsername());
            pstmt.setString(1,user.getNickname());
            pstmt.setString(2,user.getPassword());
            pstmt.setString(3,user.getSex());
            pstmt.setString(4,user.getEmail());
            // pstmt.setString(6,user.getBirth());
            // pstmt.setString(8,user.getUrl());
            pstmt.executeUpdate();
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
    }

    @Override
    public User searchUserByemail(String email) {
        Connection conn=null;
        PreparedStatement pstmt = null;
        ResultSet rs =null;
        User user=null;
        conn = DbUtils.getConnection();
        String sql="select * from usertable where email=?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
            user = new User();
            if(rs.next()){
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("userpassword"));
                user.setNickname(rs.getString("nickname"));
                user.setSex(rs.getString("sex"));
                user.setRole(rs.getString("userrole"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DbUtils.closeResultSet(rs);
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
       return user;
    }

    @Override
    public String searchPasswordByemail(String email) {
        Connection conn=null;
        PreparedStatement pstmt = null;
        User user = null;
        String password = null;
        ResultSet rs=null;
        conn = DbUtils.getConnection();
        String sql = "select * from usertable where email=?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            rs=pstmt.executeQuery();
            while (rs.next()){
                user = new User();
                user.setPassword(rs.getString("userpassword"));
                password = user.getPassword();
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
        return password;
    }
}
