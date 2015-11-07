package dao;

import java.sql.Date;
import java.util.List;

/**
 * Created by hello on 2015/11/5.
 */
public interface DrawDao {
    void insert(Draw draw);
    List<Draw> searchByTime();
    List<Draw> searchByEmail(String email);
    void del(String email,String name);
}
