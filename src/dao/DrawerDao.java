package dao;

import java.util.List;

/**
 * Created by hello on 2015/11/3.
 */
public interface DrawerDao {
    void insert(String dID,String aID);
    List<DrawerProjects> getState(int state);
    void changeState(String aID,int ed);
}
