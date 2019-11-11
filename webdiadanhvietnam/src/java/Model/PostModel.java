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
    public static int numberInPaging = 10;
    private static Connection conn;
    private static Statement st;
    private static ResultSet rs;

     public PostModel(Connection conn) {
        this.conn = conn;
    }

    public ArrayList<Post> getPaging(int page, String search, String sortColumn) throws SQLException {
        try {
            String sqlStr = "";
            sqlStr += "SELECT * FROM post";
            if (search != "") {

            }
            if (sortColumn != "") {

            }

            int sumOfPost = getNumberOfPost(page, search, sortColumn);
            int sumOfPage = (int) Math.ceil(sumOfPost / numberInPaging);
            int index = (page - 1) * numberInPaging;

            sqlStr += " LIMIT " + index + ", " + numberInPaging;
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            postList = new ArrayList<Post>();
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
                
                postList.add(new Post(id, titile, description, thumbnail, content, post_author, guid, post_date, status, landscape_id, province_id));
            }
        } catch (SQLException se) {
            throw se;
        }
        return this.postList;
    }

    public int getNumberOfPost(int page, String search, String sortColumn) throws SQLException {
        String sqlStr = "";
        sqlStr += "SELECT count(*) as numberOfPost FROM landscape";

        this.st = this.conn.createStatement();
        this.rs = this.st.executeQuery(sqlStr);
        rs.next();
        return rs.getInt("numberOfPost");
    }

    public String getPagingString(int currentPage, String search, String sortColumn) throws SQLException {
        String strPaging = "<ul class='pagination'>";
        try {
            int sumOfPost = getNumberOfPost(currentPage, search, sortColumn);
            int sumOfPage = (int) Math.ceil(sumOfPost / numberInPaging);
            for (int inPage = 1; inPage <= sumOfPage; inPage++) {
                if (inPage == currentPage) {
                    strPaging += "<li class='active'><a href='?page=" + inPage + "'>" + inPage + "</a></li>";
                } else {
                    strPaging += "<li><a href='?page=" + inPage + "'>" + inPage + "</a></li>";
                }
            }
            strPaging += "</ul>";
        } catch (SQLException ex) {
            Logger.getLogger(Entity.Landscape.class.getName()).log(Level.SEVERE, null, ex);
        }
        return strPaging;
    }
//     /**
//     * convert string to date
//     *
//     * @param date
//     * @return
//     */
//    public String date2String(java.util.Date date) {
//        SimpleDateFormat formater2 = new SimpleDateFormat("YYYY-MM-dd");
//        return formater2.format(date);
//    }
}
