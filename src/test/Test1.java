package test;

import dao.*;
import util.DbUtils;

import java.sql.Connection;
import java.util.List;

/**
 * Created by hello on 2015/9/25.
 */
public class Test1 {
    public static void main(String arg[]){
//        Connection conn=DbUtils.getConnection();
//        System.out.println(conn==null);
//        DrawerDao tmp=new DrawerDaoImpl();
////        tmp.insert("fdfdf","fdfdsf");
//        List<DrawerProjects>list=tmp.getState(1);
//        for(DrawerProjects dr:list){
//            System.out.println(dr);
//        }
//        tmp.changeState("3333",2);
//        System.out.println("sfsdfj");
//        List<DrawerProjects>list1=tmp.getState(2);
//        for(DrawerProjects dr:list1){
//            System.out.println(dr);
//        }
//        DrawDao dao=new DrawDaoImpl();
//        List<Draw>lists=dao.searchByTime();
//            List<Draw>lists=DbUtils.getDraws();
//        System.out.println(lists==null);
//        for(Draw draw:lists){
//            System.out.println(draw);
//        }
       String tmp="http://localhost:8080/eap/jsp/imageDel.jsp";
        String t1=tmp.substring((tmp.lastIndexOf('.')+1),tmp.length());
//        fileName.substring(fileName.lastIndexOf('/')+1
        System.out.println(t1);
    }
}
