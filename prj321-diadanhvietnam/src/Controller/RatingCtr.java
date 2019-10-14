package Controller;


import Entity.Rating;
import Util.ConnectDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;


public class RatingCtr{

    private ArrayList<Rating> listRating = new ArrayList<>();
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;
    private static String sqlStr;

    public ArrayList<Rating> getList() {
        return listRating;
    }

    public RatingCtr(){
        try {
            conn = ConnectDB.getConnection();
            st = conn.createStatement();
            pst = null;
            rs = null;
            sqlStr = "";
            listRating = new ArrayList<>();
            LoadRating();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void LoadRating() {
        try {
            sqlStr = "SELECT * FROM `rating`";
            rs = st.executeQuery(sqlStr);
            if (rs.isBeforeFirst()) {
                listRating.clear();
                while (rs.next()) {
                    //listRating.add(new Rating(rs.getLong("post_id"), rs.getLong("user_id"), rs.getInt("rating_status")));
                }
            }
        } catch (SQLException e) {
        }
    }

    public void insert(long post_id, long user_id, int rating_status)  {
        try {
            String sql = "INSERT INTO `rating`(`post_id`, `user_id`, `rating_status`) VALUES (?,?,?)";

            pst = conn.prepareStatement(sql);
            pst.setLong(1, post_id);
            pst.setLong(2, user_id);
            pst.setInt(3, rating_status);
            pst.executeUpdate();
            listRating.add(new Rating(post_id, user_id, rating_status));
        } catch (SQLException ex) {
            Logger.getLogger(RatingCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Get number of rate by id
     * @param post_id
     * @return
     */
    public int getRate(int post_id){
        int temp = 0;
        for(int i = 0; i < listRating.size(); i++){
            if(listRating.get(i).getPost_id() == post_id && listRating.get(i).getRating_status() == 1){
                temp++;
            }
        }
        return temp;
    }

    public void addRate(long post_id, long user_id) {
        try {
            String sql = "UPDATE `rating` SET `rating_status`=? WHERE `post_id`=? AND `user_id`=?";
            pst = conn.prepareStatement(sql);
            pst.setInt(1, 1);
            pst.setLong(2, post_id);
            pst.setLong(3, user_id);
            pst.executeUpdate();
            LoadRating();
        }  catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void minusRate(long post_id, long user_id) {
        try {
            String sql = "UPDATE `rating` SET `rating_status`=? WHERE `post_id`=? AND `user_id`=?";
            pst = conn.prepareStatement(sql);
            pst.setInt(1, 0);
            pst.setLong(2, post_id);
            pst.setLong(3, user_id);
            pst.executeUpdate();
            LoadRating();
        }  catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        RatingCtr rt = new RatingCtr();
        ArrayList<Rating> l = rt.getList();
        for(int i = 0; i < l.size(); i++){
            System.out.println(l.get(i).toString());
        }
        System.out.println("\n");
        for(int i = 0; i < l.size(); i++){
            System.out.println(l.get(i).toString());
        }
    }



}