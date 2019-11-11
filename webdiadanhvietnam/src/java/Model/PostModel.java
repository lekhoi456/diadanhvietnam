package Model;

import Entity.*;
import Utils.ConnectDB;
import java.sql.Connection;
import java.sql.Date;
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
public class PostModel {
    public ArrayList<Post> postList = new ArrayList<>();
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;

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
    public void addPost(String title, String thumbnail, long post_author, String guid, Date post_date, byte status, long landscape_id, long province_id) {
        try {
            String insertquery = "INSERT INTO `post`(`title`, `thumbnail`, `post_author`, `guid`, `post_date`, `status`, `landscape_id`, `province_id`) "
                                + "VALUES (?,?,?,?,?,?,?,?)";
            conn = ConnectDB.getConnection();
            pst = conn.prepareStatement(insertquery);
            pst.setString(1, title);
            pst.setString(2, thumbnail);
            pst.setLong(3, post_author);
            pst.setString(4, guid);
            pst.setDate(5, post_date);
            pst.setByte(6, status);
            pst.setLong(7, landscape_id);
            pst.setLong(8, province_id);
            pst.executeUpdate();
            
            Post a = new Post(postList.size() + 1, title, thumbnail, post_author, guid, post_date, status, landscape_id, province_id);
            postList.add(a);
            loadPost();
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * 
     */
    public void loadPost() {
        try {
            conn = ConnectDB.getConnection();
            st = conn.createStatement();
            String Selectquery = "SELECT * FROM `post`";
            rs = st.executeQuery(Selectquery);
            postList = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                postList.clear();
                while (rs.next()) {
                    long id = rs.getInt("post_id");
                    String title = rs.getString("tittle");
                    String thumnail = rs.getString("thumnail");
                    long post_author = rs.getInt("post_author");
                    String guid = rs.getString("guid");
                    Date post_date = rs.getDate("post_date");
                    Byte status = rs.getByte("status");
                    long landscape = rs.getInt("landscape_id");
                    long province  = rs.getInt("province_id");
                    Post a = new Post(id, title, thumnail, post_author, guid, post_date, status, landscape, province);
                    postList.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
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
    public void updatePost(long id, String name, String description, String guid, String thumbnail) {
        try {
            String Updatequery = "UPDATE `landscape` SET `name`=?,`description`=?,`thumbnail`=?,`guid`=? WHERE id = ?";
            
            pst = conn.prepareStatement(Updatequery);
            pst.setString(1, name);
            pst.setString(2, description);
            pst.setString(3, guid);
            pst.setLong(4, id);
            pst.executeUpdate();
            loadPost();
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    /***
     * 
     * @param id 
     */
    public void deletePost(long id) {
        try {
            String Deletequery = "DELETE FROM `post` WHERE id = " + id;
            conn.prepareStatement(Deletequery);
            pst.executeUpdate();
            loadPost();
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
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
