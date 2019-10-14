import Entity.Rating;
import Util.ConnectDB;
import Controller.RatingCtr;
import java.sql.Connection;
import java.util.ArrayList;

public class test {
    public static void main(String[] args) {
        RatingCtr rt = new RatingCtr();
        ArrayList<Rating> l = rt.getList();
        for(int i = 0; i < l.size(); i++){
            System.out.println(l.get(i).toString());
        }
    }
}
