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
    public List<DrawerProjects> getState(int state) {
        List<DrawerProjects>list=null;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
            conn=DbUtils.getConnection();
            String sql="select * from drawerApplication where state=?";
            pst=conn.prepareStatement(sql);
            pst.setInt(1,state);
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
    public void changeState(String aID, int ed) {
        Connection conn=null;
        PreparedStatement pst=null;
        try{
            conn=DbUtils.getConnection();
            String sql="update drawerApplication set state=? where articleID=?";
            pst=conn.prepareStatement(sql);
            pst.setInt(1,ed);
            pst.setString(2,aID);
            pst.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
    }
}
