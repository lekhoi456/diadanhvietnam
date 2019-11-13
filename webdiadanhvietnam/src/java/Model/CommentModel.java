package Model;
import Entity.Comment;
import Utils.ConnectDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CommentModel {
    private ArrayList<Comment> commentArrayList;
    private ArrayList<Comment> commentApproveArrayList;
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;

    

    public CommentModel() {
        try {
            conn = ConnectDB.getConnection();
            loadComment();
            loadCommentApprove();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<Comment> getList() {
        return this.commentArrayList;
    }

    public ArrayList<Comment> getApproveList() {
        return this.commentApproveArrayList;
    }
    
    private void loadComment() throws SQLException {
        try{
            String sqlStr = "SELECT * FROM comment WHERE comment_status = 1";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            commentArrayList = new ArrayList<Comment>();
            if (rs.isBeforeFirst()) {
                commentArrayList.clear();
                while (rs.next()) {
                    commentArrayList.add(new Comment(rs.getLong("comment_id"),
                            rs.getLong("post_id"),
                            rs.getLong("user_id"),
                            rs.getString("comment_content"),
                            rs.getDate("comment_date"),
                            rs.getInt("comment_status")
                            ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void setStatus(long id, byte status) {
        String sqlStr = "UPDATE `comment` SET `comment_status`= ? WHERE comment_id = ?";
        try {
            this.pst = conn.prepareStatement(sqlStr);
            pst.setByte(1, status);
            pst.setLong(2, id);
            pst.executeUpdate();
            loadCommentApprove();
            loadComment();
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
    private void loadCommentApprove() throws SQLException {
        try{
            String sqlStr = "SELECT * FROM comment WHERE comment_status = 2";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            commentApproveArrayList = new ArrayList<Comment>();
            if (rs.isBeforeFirst()) {
                commentApproveArrayList.clear();
                while (rs.next()) {
                    commentApproveArrayList.add(new Comment(rs.getLong("comment_id"),
                            rs.getLong("post_id"),
                            rs.getLong("user_id"),
                            rs.getString("comment_content"),
                            rs.getDate("comment_date"),
                            rs.getInt("comment_status")
                            ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String getNamePostById(long id) {
        String title = "";
        try {
            String sqlStr = "SELECT title FROM post WHERE id =" + id ;
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            while(rs.next()){
                title = rs.getString("title");
            }
                    } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return title;
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
//    void addComment(long post_id, long user_id, String comment_content, Date comment_date){
//        long millis=System.currentTimeMillis();
//        comment_date = new Date(millis);
//        int comment_status = 0;
//        //if(){//Còn thíu check status user do chưa có serch user của Controller
//            try{
//                String sql = "INSERT INTO `comment`(`post_id`, `user_id`, `comment_content`, `comment_date`, `comment_status`) VALUES (?,?,?,?,?)";
//                pst = conn.prepareStatement(sql);
//                pst.setLong(1, post_id);
//                pst.setLong(2, user_id);
//                pst.setString(3, comment_content);
//                pst.setDate(4, comment_date);
//                pst.setInt(5, comment_status);
//                pst.executeUpdate();
//                loadComment();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//       // }
//    }
//
//    void activeComment(int comment_id){
//        Comment temp = searchCommentById(comment_id);
//        try {
//            String sql = "UPDATE `comment` SET `comment_status`= ? WHERE `comment_id` = ?";
//            pst = conn.prepareStatement(sql);
//            pst.setInt(1, 1);
//            pst.setLong(2, comment_id);
//            pst.executeUpdate();
//            loadComment();
//        }  catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    Comment searchCommentById(int comment_id){
//        for (int i = 0; i<commentList.size(); i++){
//            if(commentList.get(i).getComment_id() == comment_id){
//                return commentList.get(i);
//            }
//        }
//        return null;
//    }
//
//    public ArrayList<Comment> getPage(int pageNum, int rowPerPage) {
//        cmPagingList = new ArrayList<Comment>(
//                cmResultList.subList((pageNum - 1) * rowPerPage,
//                        Math.min(cmResultList.size(), pageNum * rowPerPage)));
//        return cmPagingList;
//    }
//
//    public int getTotalPages(int rowPerPage) {
//        return (int) Math.ceil(cmResultList.size() / (float) rowPerPage);
//    }

//    public static void main(String[] args) {
//        CommentModel cctr = new CommentModel();
//        ArrayList<Comment> l = cctr.getListCmt();
//        for(int i = 0; i < l.size(); i++){
//            System.out.println(l.get(i).toString());
//        }
//    }
}
