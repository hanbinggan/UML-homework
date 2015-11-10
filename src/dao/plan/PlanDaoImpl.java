package dao.plan;

import dao.plan.PlanDao;
import dao.plan.PlanEntity;
import util.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chasip on 2015/11/5.
 */
public class PlanDaoImpl implements PlanDao {
    @Override
    public void planAdd(PlanEntity planEntity) {
        Connection conn=null;
        PreparedStatement pstmt=null;
        try {
            conn= DbUtils.getConnection();
            String sql="insert into plans values(?,?,?,?,?,?)";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,planEntity.getId());
            pstmt.setString(2,planEntity.getName());
            pstmt.setString(3, planEntity.getPlannerid());
            pstmt.setDate(4, planEntity.getBgdate());
            pstmt.setString(5, planEntity.getTag());
            pstmt.setString(6, planEntity.getIntro());
            pstmt.executeUpdate();
        }  catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
    }

    @Override
    public PlanEntity planRead(String planid) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs=null;
        PlanEntity planEntity= new PlanEntity();
        try {
            String sqlString="select * from plans where id = ?";
            conn=DbUtils.getConnection();
            pstmt=conn.prepareStatement(sqlString);
            pstmt.setString(1, planid);
            rs=pstmt.executeQuery();
            while(rs.next()) {
                planEntity.setId(rs.getString("id"));
                planEntity.setIntro(rs.getString("intro"));
                planEntity.setTag(rs.getString("tag"));
                planEntity.setName(rs.getString("name"));
                planEntity.setPlannerid(rs.getString("plannerid"));
                planEntity.setBgdate(rs.getDate("bgdate"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DbUtils.closeConnection();
            DbUtils.closeResultSet(rs);
            DbUtils.closePreparedStatement(pstmt);
        }
        return planEntity;
    }
    @Override
    public List<PlanEntity> planShow() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<PlanEntity> planEntities=new ArrayList<PlanEntity>();
        try {
            String sql = "select * from plans";
            conn=DbUtils.getConnection();
            pstmt =conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                PlanEntity planEntity=new PlanEntity();
                planEntity.setId(rs.getString("id"));
                planEntity.setName(rs.getString("name"));
                planEntity.setPlannerid(rs.getString("plannerid"));
                planEntity.setTag(rs.getString("tag"));
                planEntity.setBgdate(rs.getDate("bgdate"));
                planEntity.setIntro(rs.getString("intro"));
                planEntities.add(planEntity);
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
        return planEntities;
    }

    @Override
    public List<PlanEntity> quercy(String planID) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<PlanEntity> planEntities=new ArrayList<PlanEntity>();
        try {
            String sql = "select * from plans where plannerid=?";
            conn=DbUtils.getConnection();
            pstmt =conn.prepareStatement(sql);
            pstmt.setString(1,planID);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                PlanEntity planEntity=new PlanEntity();
                planEntity.setId(rs.getString("id"));
                planEntity.setName(rs.getString("name"));
                planEntity.setPlannerid(rs.getString("plannerid"));
                planEntity.setTag(rs.getString("tag"));
                planEntity.setBgdate(rs.getDate("bgdate"));
                planEntity.setIntro(rs.getString("intro"));
                planEntities.add(planEntity);
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }finally {
            DbUtils.closeResultSet(rs);
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
        return planEntities;
    }

    @Override
    public void del(String planid) {
        Connection conn=null;
        PreparedStatement pstmt=null;
        try {
            conn= DbUtils.getConnection();
            String sql="DELETE FROM plans WHERE id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,planid);
            pstmt.execute();
        }  catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
    }

    @Override
    public void planMudify(PlanEntity planEntity) {
        Connection conn=null;
        PreparedStatement pstmt=null;
        System.out.println(planEntity);
        try {
            conn= DbUtils.getConnection();
            String sql="UPDATE plans SET name=?,bgdate=?,tag=?,intro=? where id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, planEntity.getName());
            pstmt.setDate(2, planEntity.getBgdate());
            pstmt.setString(3, planEntity.getTag());
            pstmt.setString(4, planEntity.getIntro());
            pstmt.setString(5, planEntity.getId());
            pstmt.executeUpdate();
        }  catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DbUtils.closePreparedStatement(pstmt);
            DbUtils.closeConnection();
        }
    }
}
