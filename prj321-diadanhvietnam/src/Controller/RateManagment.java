/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Rating;
import Util.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duong
 */
public class RateManagment {

    public ArrayList<Rating> list_rating = new ArrayList<>();
    private Connection mConnection;
    private Statement mStatement;
    private PreparedStatement mPreparedStatement;
    private ResultSet rs;

   /**
    * 
    * @param post_id
    * @param user_id
    * @param rating_status 
    */
    public void addRating(long post_id, long user_id, byte rating_status) {
        try {
            String insertquery = "INSERT INTO `rating`(`post_id`, `user_id`, `status`) VALUES (?,?,?)";
            mConnection = ConnectDB.getConnection();
            mPreparedStatement = mConnection.prepareStatement(insertquery);
            mPreparedStatement.setLong(1, post_id);
            mPreparedStatement.setLong(2, user_id);
            mPreparedStatement.setByte(3, rating_status);
            mPreparedStatement.executeUpdate();

            Rating a = new Rating(post_id, user_id, rating_status);
            list_rating.add(a);
            Loadrating();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     */
    public void Loadrating() {
        try {
            mConnection = ConnectDB.getConnection();
            mStatement = mConnection.createStatement();
            String Selectquery = "SELECT * FROM `rating`";
            rs = mStatement.executeQuery(Selectquery);
            list_rating = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                list_rating.clear();
                while (rs.next()) {
                    long post_id = rs.getInt("post_id");
                    long user_id = rs.getInt("user_id");
                    byte status = rs.getByte("status");

                    Rating a = new Rating(post_id, user_id, status);
                    list_rating.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * 
     * @param post_id
     * @param user_id
     * @param rating_status 
     */
    public void UpdateRating(long post_id, long user_id, byte rating_status) {
        try {
            String Updatequery = "UPDATE `rating` SET `user_id`=?,`status`=? WHERE post_id=?";

            mPreparedStatement = mConnection.prepareStatement(Updatequery);
            mPreparedStatement.setLong(1, user_id);
            mPreparedStatement.setInt(2, rating_status);
            mPreparedStatement.setLong(3, post_id);
            mPreparedStatement.executeUpdate();
            Loadrating();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
