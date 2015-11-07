package dao;

import java.sql.Date;

/**
 * Created by hello on 2015/11/5.
 */
public class Draw {
    private String name;
    private String email;
    private Date time;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Draw{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", time=" + time +
                '}';
    }
}
