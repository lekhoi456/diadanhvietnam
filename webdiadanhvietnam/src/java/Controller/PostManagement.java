/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.*;
import Util.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duong
 */
public class PostManagement {
    public ArrayList<Post> list_post = new ArrayList<>();
    private Connection mConnection;
    private Statement mStatement;
    private PreparedStatement mPreparedStatement;
    private ResultSet rs;

    /**
     * 
     * @param title
     * @param thumbnail
     * @param post_author
     * @param guid
     * @param post_date
     * @param status
     * @param landscape_id
     * @param province_id 
     */
    public void addPost(String title, String thumbnail, long post_author, String guid, String post_date, byte status, long landscape_id, long province_id) {
        try {
            String insertquery = "INSERT INTO `post`(`tittle`, `thumbnail`, `post_author`, `guid`, `post_date`, `status`, `landscape_id`, `province_id`) "
                                + "VALUES (?,?,?,?,?,?,?,?)";
            mConnection = ConnectDB.getConnection();
            mPreparedStatement = mConnection.prepareStatement(insertquery);
            mPreparedStatement.setString(1, title);
            mPreparedStatement.setString(2, thumbnail);
            mPreparedStatement.setLong(3, post_author);
            mPreparedStatement.setString(4, guid);
            mPreparedStatement.setString(5, post_date);
            mPreparedStatement.setByte(6, status);
            mPreparedStatement.setLong(7, landscape_id);
            mPreparedStatement.setLong(8, province_id);
            mPreparedStatement.executeUpdate();
            
            Post a = new Post(list_post.size() + 1, title, thumbnail, post_author, guid, post_date, status, landscape_id, province_id);
            list_post.add(a);
            LoadPost();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * 
     */
    public void LoadPost() {
        try {
            mConnection = ConnectDB.getConnection();
            mStatement = mConnection.createStatement();
            String Selectquery = "SELECT * FROM `post`";
            rs = mStatement.executeQuery(Selectquery);
           list_post = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                list_post.clear();
                while (rs.next()) {
                    long id = rs.getInt("post_id");
                    String title = rs.getString("tittle");
                    String thumnail = rs.getString("thumnail");
                    long post_author = rs.getInt("post_author");
                    String guid = rs.getString("guid");
                    String post_date = rs.getString("post_date");
                    Byte status = rs.getByte("status");
                    long landscape = rs.getInt("landscape_id");
                    long province  = rs.getInt("province_id");
                    Post a = new Post(id, title, thumnail, post_author, guid, post_date, status, landscape, province);
                    list_post.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * 
     * @param id
     * @param name
     * @param description
     * @param guid
     * @param thumbnail 
     */
    public void UpdatePost(long id, String name, String description, String guid, String thumbnail) {
        try {
            String Updatequery = "UPDATE `landscape` SET `name`=?,`description`=?,`thumbnail`=?,`guid`=? WHERE id = ?";
            
            mPreparedStatement = mConnection.prepareStatement(Updatequery);
            mPreparedStatement.setString(1, name);
            mPreparedStatement.setString(2, description);
            mPreparedStatement.setString(3, guid);
            mPreparedStatement.setLong(4, id);
            mPreparedStatement.executeUpdate();
            LoadPost();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    /***
     * 
     * @param id 
     */
    public void deletePost(long id) {
        try {
            String Deletequery = "DELETE FROM `post` WHERE id = " + id;
            mConnection.prepareStatement(Deletequery);
            mPreparedStatement.executeUpdate();
            LoadPost();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     /**
     * convert string to date
     *
     * @param date
     * @return
     */
    public String date2String(java.util.Date date) {
        SimpleDateFormat formater2 = new SimpleDateFormat("YYYY-MM-dd");
        return formater2.format(date);
    }
}
