package dao;

import util.DbUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hello on 2015/11/5.
 */
public class DrawDaoImpl implements DrawDao{
    @Override
    public void insert(Draw draw) {
        Connection conn = null;
        PreparedStatement pst=null;
        try{
            conn=DbUtils.getConnection();
            String sql="insert into draw values(?,?,?)";
            pst=conn.prepareStatement(sql);
            pst.setString(1,draw.getName());
            pst.setString(2,draw.getEmail());
            pst.setDate(3, draw.getTime());
            pst.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
    }

    @Override
    public List<Draw> searchByTime() {
        List<Draw> list=null;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
            conn=DbUtils.getConnection();
            String sql="select top 100 * from draw order by time desc";
            pst=conn.prepareStatement(sql);
            rs=pst.executeQuery();
            list=new ArrayList<Draw>();
            while(rs.next()){
                Draw draw=new Draw();
                draw.setName(rs.getString("name"));
                draw.setEmail(rs.getString("email"));
                draw.setTime(rs.getDate("time"));
                list.add(draw);
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
    public void del(String email, String name) {
        Connection conn = null;
        PreparedStatement pst=null;
        try{
            conn=DbUtils.getConnection();
            String sql="delete from draw where email=? AND name=?";
            pst=conn.prepareStatement(sql);
            pst.setString(1,email);
            pst.setString(2,name);
            pst.execute();
//            pst.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pst);
            DbUtils.closeConnection();
        }
    }

    @Override
    public List<Draw> searchByEmail(String email) {
        List<Draw> list=null;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
            conn=DbUtils.getConnection();
            String sql="select * from draw where email=? order by time desc";
            pst=conn.prepareStatement(sql);
            pst.setString(1,email);
            rs =pst.executeQuery();
            list=new ArrayList<Draw>();
            while(rs.next()){
                Draw draw=new Draw();
                draw.setName(rs.getString("name"));
                draw.setEmail(rs.getString("email"));
                draw.setTime(rs.getDate("time"));
                list.add(draw);
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
}
