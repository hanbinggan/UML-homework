package util;

import java.io.File;

/**
 * Created by hello on 2015/10/30.
 */
public class NameConfig {
    static String ImgJs="";
    public static void imgDelete(String str){
        File img1=new File(str);
        System.out.println(str);
        System.out.println(img1);
        System.out.println(str);
        System.out.println(img1);
        img1.delete();img1.delete();
    }
    public static void main(String s[]){

        String tmp="E:\\IdeaProjects\\hello\\web\\resource\\1001\\1.jpg";
        File img1=new File(tmp);
        System.out.println(img1.exists());
        boolean t1=img1.delete();
        System.out.println(t1);
    }
}
