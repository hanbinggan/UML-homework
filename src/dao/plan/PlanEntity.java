package dao.plan;

import java.sql.Date;

/**
 * Created by chasip on 2015/11/3.
 */
public class PlanEntity {
    private String id;
    private String name;
    private String plannerid;
    private Date bgdate;
    private String tag;
    private String intro;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPlannerid() {
        return plannerid;
    }

    public void setPlannerid(String plannerid) {
        this.plannerid = plannerid;
    }

    public Date getBgdate() {
        return bgdate;
    }

    public void setBgdate(Date bgdate) {
        this.bgdate = bgdate;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PlanEntity that = (PlanEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (plannerid != null ? !plannerid.equals(that.plannerid) : that.plannerid != null) return false;
        if (bgdate != null ? !bgdate.equals(that.bgdate) : that.bgdate != null) return false;
        if (tag != null ? !tag.equals(that.tag) : that.tag != null) return false;
        if (intro != null ? !intro.equals(that.intro) : that.intro != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (plannerid != null ? plannerid.hashCode() : 0);
        result = 31 * result + (bgdate != null ? bgdate.hashCode() : 0);
        result = 31 * result + (tag != null ? tag.hashCode() : 0);
        result = 31 * result + (intro != null ? intro.hashCode() : 0);
        return result;
    }
}
