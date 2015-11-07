package dao;

/**
 * Created by jmy on 2015/10/31.
 */
public interface UserDao {
    void insertUser(User user);
    void updateUser(User user);
    User searchUserByemail(String email);
    String searchPasswordByemail(String email);
}
