package Controller;

import Entity.Comment;
import Util.ConnectDB;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class CommentCtr {
    private ArrayList<Comment> listCmt;
    ArrayList<Comment> result_list;
    ArrayList<Comment> paging_list;
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;
    private static String sqlStr;

    public ArrayList<Comment> getListCmt() {
        return listCmt;
    }

    public CommentCtr() {
        try{
            conn = ConnectDB.getConnection();
            st = conn.createStatement();
            pst = null;
            rs = null;
            sqlStr = "";
            listCmt = new ArrayList<>();
            LoadComment();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    void LoadComment(){
        try{
            sqlStr = "SELECT * FROM `comment`";
            rs = st.executeQuery(sqlStr);
            if (rs.isBeforeFirst()) {
                listCmt.clear();
                while (rs.next()) {
                    listCmt.add(new Comment(rs.getLong("comment_id"),
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

    void addComment(long post_id, long user_id, String comment_content, Date comment_date){
        long millis=System.currentTimeMillis();
        comment_date = new Date(millis);
        int comment_status = 0;
        //if(){//Còn thíu check status user do chưa có serch user của Controller
            try{
                String sql = "INSERT INTO `comment`(`post_id`, `user_id`, `comment_content`, `comment_date`, `comment_status`) VALUES (?,?,?,?,?)";

                pst = conn.prepareStatement(sql);
                pst.setLong(1, post_id);
                pst.setLong(2, user_id);
                pst.setString(3, comment_content);
                pst.setDate(4, comment_date);
                pst.setInt(5, comment_status);
                pst.executeUpdate();
                LoadComment();
            } catch (SQLException e) {
                e.printStackTrace();
            }
       // }
    }

    void activeComment(int comment_id){
        Comment temp = searchCommentById(comment_id);
        try {
            String sql = "UPDATE `comment` SET `comment_status`= ? WHERE `comment_id` = ?";
            pst = conn.prepareStatement(sql);
            pst.setInt(1, 1);
            pst.setLong(2, comment_id);
            pst.executeUpdate();
            LoadComment();
        }  catch (SQLException e) {
            e.printStackTrace();
        }
    }

    Comment searchCommentById(int comment_id){
        for (int i = 0; i<listCmt.size(); i++){
            if(listCmt.get(i).getComment_id() == comment_id){
                return listCmt.get(i);
            }
        }
        return null;
    }

    public ArrayList<Comment> getPage(int pageNum, int rowPerPage) {
        paging_list = new ArrayList<Comment>(
                result_list.subList((pageNum - 1) * rowPerPage,
                        Math.min(result_list.size(), pageNum * rowPerPage)));
        return paging_list;
    }

    public int getTotalPages(int rowPerPage) {
        return (int) Math.ceil(result_list.size() / (float) rowPerPage);
    }

    public static void main(String[] args) {
        CommentCtr cctr = new CommentCtr();
        ArrayList<Comment> l = cctr.getListCmt();
        for(int i = 0; i < l.size(); i++){
            System.out.println(l.get(i).toString());
        }
    }
}
