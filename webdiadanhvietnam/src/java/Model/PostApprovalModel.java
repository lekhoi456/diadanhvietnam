/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.PostApproval;
import Utils.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author KhoiLeQuoc
 */
public class PostApprovalModel {
    private ArrayList<PostApproval> postApprovalArrayList;
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;
    
    public PostApprovalModel() {
        try {
            conn = ConnectDB.getConnection();
            loadPostApproval();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    private void loadPostApproval() throws SQLException {
        try{
            String sqlStr = "SELECT * FROM comment";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            postApprovalArrayList = new ArrayList<PostApproval>();
            if (rs.isBeforeFirst()) {
                postApprovalArrayList.clear();
                while (rs.next()) {
                    postApprovalArrayList.add(new PostApproval(rs.getLong("post_id"),
                            rs.getLong("user_id"),
                            rs.getDate("date_approval"),
                            rs.getLong("post_author"),
                            rs.getByte("status")
                            ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<PostApproval> getList() {
        return this.postApprovalArrayList;
    }
}
