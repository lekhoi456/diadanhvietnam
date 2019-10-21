package Model;

import Entity.User;
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
public class UserModel {
    public ArrayList<User> userList = new ArrayList<>();
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;

   /**
    * 
    * @param username
    * @param password
    * @param email
    * @param registered
    * @param status
    * @param displayname
    * @param role 
    */
    public void addUser(String username, String password, String email, Date registered, byte status, String displayname, byte role) {
        try {
            String insertquery = "INSERT INTO `user`(`username`, `password`, `email`, `registered`, `status`, `displayname`, `role`) VALUES (?,?,?,?,?,?,?)";
            conn = ConnectDB.getConnection();
            pst = conn.prepareStatement(insertquery, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setDate(4, registered);
            pst.setByte(5, status);
            pst.setString(6, displayname);
            pst.setByte(7, role);
            pst.executeUpdate();
            
            User a = new User(userList.size()+1, username, password, email, registered, status, displayname, role);
            userList.add(a);
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     */
    public void loadUser() {
        try {
            conn = ConnectDB.getConnection();
            st = conn.createStatement();
            String Selectquery = "SELECT * FROM `user`";
            rs = st.executeQuery(Selectquery);
            userList = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                userList.clear();
                while (rs.next()) {
                    long id = rs.getInt("id");
                    String username = rs.getString("username");
                    String password = rs.getString("password");
                    String guid = rs.getString("email");
                    Date registered = rs.getDate("registered");
                    byte status = rs.getByte("status");
                    String display = rs.getString("displayname");
                    byte role = rs.getByte("role");
                    User a = new User(id, username, password, guid, registered, status, display, role);
                    userList.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   /**
    * 
    * @param id
    * @param username
    * @param password
    * @param email
    * @param registered
    * @param status
    * @param displayname
    * @param role 
    */
    public void updateUser(long id, String username, String password, String email, String registered, byte status, String displayname, byte role) {
        try {
            String Updatequery = "UPDATE `user` SET `username`=?,`password`=?,`email`=?,`registered`=?,`status`=?,`displayname`=?,`role`=? WHERE id=?";

            pst = conn.prepareStatement(Updatequery);
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setString(4, registered);
            pst.setByte(5, status);
            pst.setString(6, displayname);
            pst.setByte(7, role);
            pst.setLong(8, id);
            pst.executeUpdate();
            loadUser();
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

   /**
    * 
    * @param id 
    */
    public void deleteUser(long id) {
        try {
            String Deletequery = "DELETE FROM `user` WHERE id = " + id;
            conn.prepareStatement(Deletequery);
            pst.executeUpdate();
            loadUser();
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
