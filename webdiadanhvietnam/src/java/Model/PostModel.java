package Model;

import Entity.*;
import Utils.ConnectDB;
import java.sql.Connection;
import java.sql.Date;
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
public class PostModel {
    public ArrayList<Post> postArrayList = new ArrayList<>();
    public ArrayList<Post> postApproveArrayList = new ArrayList<>();
    private static Connection conn;
    private static Statement st;
    private static ResultSet rs;
    private static PreparedStatement pst;

     public PostModel() {
        try {
            conn = ConnectDB.getConnection();
            loadPost();
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void loadPost() throws SQLException {
        try {
            String sqlStr = "SELECT * FROM post";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            postArrayList = new ArrayList<Post>();
            while (rs.next()) {
                long id = rs.getLong("id");
                String titile = rs.getString("title");
                String description = rs.getString("description");
                String content = rs.getString("content");
                String guid = rs.getString("guid");
                String thumbnail = rs.getString("thumbnail");
                Date post_date = rs.getDate("post_date");
                long post_author = rs.getInt("post_author");
                long landscape_id = rs.getInt("landscape_id");
                long province_id = rs.getInt("province_id");
                byte status  = rs.getByte("status");
                postArrayList.add(new Post(id, titile, description, thumbnail, content, post_author, guid, post_date, status, landscape_id, province_id));
            }
        } catch (SQLException se) {
            throw se;
        }
        
    }
    
    public ArrayList<Post> getList() {
        return this.postArrayList;
    }
    
    private void loadPostApprove() throws SQLException {
        try {
            String sqlStr = "SELECT * FROM post WHERE status = 1";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            postApproveArrayList = new ArrayList<Post>();
            while (rs.next()) {
                long id = rs.getLong("id");
                String titile = rs.getString("title");
                String description = rs.getString("description");
                String content = rs.getString("content");
                String guid = rs.getString("guid");
                String thumbnail = rs.getString("thumbnail");
                Date post_date = rs.getDate("post_date");
                long post_author = rs.getInt("post_author");
                long landscape_id = rs.getInt("landscape_id");
                long province_id = rs.getInt("province_id");
                byte status  = rs.getByte("status");
                postApproveArrayList.add(new Post(id, titile, description, thumbnail, content, post_author, guid, post_date, status, landscape_id, province_id));
            }
        } catch (SQLException se) {
            throw se;
        }
        
    }
    
        public String getNameById(long id) {
        String username = "";
        try {
            String sqlStr = "SELECT username FROM user WHERE id =" + id ;
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            while(rs.next()){
                username = rs.getString("username");
            }
                    } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return username;
    }
        
    public ArrayList<Post> getPostApproveList() {
        return this.postApproveArrayList;
    }
}