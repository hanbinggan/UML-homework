package dao.plan;

import java.util.List;

/**
 * Created by chasip on 2015/11/5.
 */
public interface PlanDao {
    void planAdd(PlanEntity planEntity);
    PlanEntity planRead(String planid);
    List<PlanEntity> planShow ();
}
