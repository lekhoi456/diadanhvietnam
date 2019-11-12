/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Comment;
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
public class CommentManagement {

    public ArrayList<Comment> list_comment = new ArrayList<>();
    private Connection mConnection;
    private Statement mStatement;
    private PreparedStatement mPreparedStatement;
    private ResultSet rs;

    /**
     *
     * @param post_id
     * @param user_id
     * @param comment_content
     * @param comment_date
     * @param comment_status
     */
    public void addLandscape(long post_id, long user_id, String comment_content, String comment_date, String comment_status) {
        try {
            String insertquery = "INSERT INTO `comment`(`post_id`, `commenr_id`, `user_id`, `comment_content`, `comment_date`, `comment-status`) VALUES (?,?,?,?,?,?)";
            mConnection = ConnectDB.getConnection();
            mPreparedStatement = mConnection.prepareStatement(insertquery, Statement.RETURN_GENERATED_KEYS);
            mPreparedStatement.setLong(1, post_id);
            mPreparedStatement.setLong(2, list_comment.size()+ 1);
             mPreparedStatement.setLong(3, user_id);
            mPreparedStatement.setString(4, comment_content);
            mPreparedStatement.setString(5, comment_date);
            mPreparedStatement.setString(6, comment_status);
            mPreparedStatement.executeUpdate();
            
            Comment a = new Comment(post_id, list_comment.size() + 1, user_id, comment_content, comment_date, comment_status);
            list_comment.add(a);
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     */
    public void LoadComment() {
        try {
            mConnection = ConnectDB.getConnection();
            mStatement = mConnection.createStatement();
            String Selectquery = "SELECT * FROM `comment`";
            rs = mStatement.executeQuery(Selectquery);
            list_comment = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                list_comment.clear();
                while (rs.next()) {
                    long id = rs.getInt("comment_id");
                    long post_id = rs.getInt("post_id");
                    long user_id = rs.getInt("user_id");
                    String comment_content = rs.getString("comment-content");
                    String comment_date = rs.getString("comment_content");
                    String comment_status = rs.getString("comment_status");
                    Comment a = new Comment(post_id, post_id, user_id, comment_content, comment_date, comment_status);
                    list_comment.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @param comment_id
     * @param post_id
     * @param user_id
     * @param comment_content
     * @param comment_date
     * @param comment_status
     */
    public void UpdateComment(long comment_id, long post_id, long user_id, String comment_content, String comment_date, String comment_status) {
        try {
            String Updatequery = "UPDATE `comment` SET `post_id`=?,`user_id`=?,`comment_content`=?,`comment_date`=?,`comment_status`=? WHERE comment_id=?";

            mPreparedStatement = mConnection.prepareStatement(Updatequery);
            mPreparedStatement.setLong(1, post_id);
            mPreparedStatement.setLong(2, user_id);
            mPreparedStatement.setString(3, comment_content);
            mPreparedStatement.setString(4, comment_date);
            mPreparedStatement.setString(5, comment_status);
            mPreparedStatement.setLong(6, comment_id);
            mPreparedStatement.executeUpdate();
            LoadComment();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     * @param comment_id
     */
    public void deleteComment(long comment_id) {
        try {
            String Deletequery = "DELETE FROM `comment` WHERE comment_id = " + comment_id;
            mConnection.prepareStatement(Deletequery);
            mPreparedStatement.executeUpdate();
            LoadComment();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
