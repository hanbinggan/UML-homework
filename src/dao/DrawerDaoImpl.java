package dao;

import util.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hello on 2015/11/3.
 */
public class DrawerDaoImpl implements DrawerDao {
    @Override
    public DrawerProjects quercy(String email, String id) {
        DrawerProjects dr=null;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
            conn=DbUtils.getConnection();
            String sql="select * from drawerApplication where drawerID=? AND articleID=?";
            pst=conn.prepareStatement(sql);
            pst.setString(1,email);
            pst.setString(2,id);
            rs=pst.executeQuery();
            if (rs.next()){
                dr=new DrawerProjects();
                dr.setDrawerID(rs.getString("drawerID"));
                dr.setArticleID(rs.getString("articleID"));
                dr.setState(rs.getInt("state"));
                dr.setTime(rs.getDate("time"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
        return dr;
    }

    @Override
    public void insert(String dID, String aID) {
        Connection conn=null;
        PreparedStatement pst=null;
        try{
            conn=DbUtils.getConnection();
            String sql="insert into drawerApplication(drawerID,articleID,state,time) values(?,?,?,?)";
            pst=conn.prepareStatement(sql);
            pst.setString(1, dID);
            pst.setString(2, aID);
            pst.setInt(3, 1);
            Date cur=new Date(System.currentTimeMillis());
            System.out.println(cur);
            pst.setDate(4, cur);
            pst.executeUpdate();
            System.out.println("insert sucessful");
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
    }

    @Override
    public List<DrawerProjects> getState(String id,int state) {
        List<DrawerProjects>list=null;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        System.out.println(id+state);
        try{
            conn=DbUtils.getConnection();
            String sql="select * from drawerApplication where state=? and articleID=?";
            pst=conn.prepareStatement(sql);
            pst.setInt(1,state);
            pst.setString(2,id);
            rs=pst.executeQuery();
            list=new ArrayList<DrawerProjects>();
            while (rs.next()){
                DrawerProjects dr=new DrawerProjects();
                dr.setDrawerID(rs.getString("drawerID"));
                dr.setArticleID(rs.getString("articleID"));
                dr.setState(state);
                dr.setTime(rs.getDate("time"));
                list.add(dr);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
        return list;
    }

    @Override
    public void changeState(String email,String aID, int ed) {
        Connection conn=null;
        PreparedStatement pst=null;
        try{
            conn=DbUtils.getConnection();
            String sql;
            if("".equals(email)){
                sql="update drawerApplication set state=? where articleID=?";
            }else{
                sql="update drawerApplication set state=? where articleID=? AND drawerID=?";
            }
            pst=conn.prepareStatement(sql);
            pst.setInt(1, ed);
            pst.setString(2, aID);
            if(!"".equals(email)){
                pst.setString(3,email);
            }
            pst.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
    }
}
