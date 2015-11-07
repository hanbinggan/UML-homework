package dao;

import java.sql.Date;

/**
 * Created by hello on 2015/11/3.
 */
public class DrawerProjects {
    private String drawerID;
    private String articleID;
    private int state;
    private Date time;
    public String getDrawerID() {
        return drawerID;
    }

    public void setDrawerID(String drawerID) {
        this.drawerID = drawerID;
    }

    public String getArticleID() {
        return articleID;
    }

    public void setArticleID(String articleID) {
        this.articleID = articleID;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "DrawerProjects{" +
                "drawerID='" + drawerID + '\'' +
                ", articleID='" + articleID + '\'' +
                ", state=" + state +
                ", time=" + time +
                '}';
    }
}
