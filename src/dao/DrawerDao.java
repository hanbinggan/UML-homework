package dao;

import dao.plan.PlanEntity;

import java.util.List;

/**
 * Created by hello on 2015/11/3.
 */
public interface DrawerDao {
    void insert(String dID,String aID);
    List<DrawerProjects> getState(String id,int state);
    List<DrawerProjects> getPlanState(String id,int state);
    void changeState(String email,String aID,int ed);
    DrawerProjects quercy(String email,String id);
}
