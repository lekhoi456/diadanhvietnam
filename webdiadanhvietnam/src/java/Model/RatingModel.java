package Model;


import Entity.Rating;
import Utils.ConnectDB;

import java.sql.*;
import java.util.ArrayList;


public class RatingModel{

    private ArrayList<Rating> ratingArrayList;
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;

    

    public RatingModel(){
        try {
            conn = ConnectDB.getConnection();
            loadRating();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void loadRating() throws SQLException {
        try {
            String sqlStr = "SELECT * FROM rating";
            rs = st.executeQuery(sqlStr);
            ratingArrayList = new ArrayList<Rating>();
            if (rs.isBeforeFirst()) {
                ratingArrayList.clear();
                while (rs.next()) {
                    ratingArrayList.add(new Rating(rs.getLong("post_id"), rs.getLong("user_id"), rs.getInt("rating_status")));
                }
            }
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Rating> getList() {
        return this.ratingArrayList;
    }

//    public void addRate(long post_id, long user_id, int rating_status)  {
//        try {
//            String sql = "INSERT INTO `rating`(`post_id`, `user_id`, `rating_status`) VALUES (?,?,?)";
//
//            pst = conn.prepareStatement(sql);
//            pst.setLong(1, post_id);
//            pst.setLong(2, user_id);
//            pst.setInt(3, rating_status);
//            pst.executeUpdate();
//            listRating.add(new Rating(post_id, user_id, rating_status));
//        } catch (SQLException ex) {
//            Logger.getLogger(RatingModel.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    /**
//     * Get number of rate by id
//     * @param post_id
//     * @return
//     */
//    public int getRate(int post_id){
//        int temp = 0;
//        for(int i = 0; i < listRating.size(); i++){
//            if(listRating.get(i).getPost_id() == post_id && listRating.get(i).getRating_status() == 1){
//                temp++;
//            }
//        }
//        return temp;
//    }
//
//    public void minusRate(long post_id, long user_id) {
//        try {
//            String sql = "UPDATE `rating` SET `rating_status`=? WHERE `post_id`=? AND `user_id`=?";
//            pst = conn.prepareStatement(sql);
//            pst.setInt(1, 0);
//            pst.setLong(2, post_id);
//            pst.setLong(3, user_id);
//            pst.executeUpdate();
//            loadRating();
//        }  catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }



}