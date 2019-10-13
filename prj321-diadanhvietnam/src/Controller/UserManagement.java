/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.User;
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
public class UserManagement {
    public ArrayList<User> list_user = new ArrayList<>();
    private Connection mConnection;
    private Statement mStatement;
    private PreparedStatement mPreparedStatement;
    private ResultSet rs;

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
    public void addUser(String username, String password, String email, String registered, byte status, String displayname, byte role) {
        try {
            String insertquery = "INSERT INTO `user`(`id`, `username`, `password`, `email`, `registered`, `status`, `displayname`, `role`) VALUES (?,?,?,?,?,?,?,?)";
            mConnection = ConnectDB.getConnection();
            mPreparedStatement = mConnection.prepareStatement(insertquery, Statement.RETURN_GENERATED_KEYS);
            mPreparedStatement.setLong(1, list_user.size() + 1);
            mPreparedStatement.setString(2, username);
            mPreparedStatement.setString(3, password);
            mPreparedStatement.setString(4, email);
            mPreparedStatement.setString(5, registered);
            mPreparedStatement.setByte(6, status);
            mPreparedStatement.setString(7, displayname);
            mPreparedStatement.setByte(8, role);
            mPreparedStatement.executeUpdate();
            
            User a = new User(list_user.size()+1, username, password, email, registered, status, displayname, role);
            list_user.add(a);
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     */
    public void LoadUser() {
        try {
            mConnection = ConnectDB.getConnection();
            mStatement = mConnection.createStatement();
            String Selectquery = "SELECT * FROM `user`";
            rs = mStatement.executeQuery(Selectquery);
            list_user = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                list_user.clear();
                while (rs.next()) {
                    long id = rs.getInt("id");
                    String username = rs.getString("username");
                    String password = rs.getString("password");
                    String guid = rs.getString("email");
                    String registered = rs.getString("registered");
                    byte status = rs.getByte("status");
                    String display = rs.getString("displayname");
                    byte role = rs.getByte("role");
                    User a = new User(id, username, password, guid, registered, status, display, role);
                    list_user.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
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
    public void UpdateUser(long id, String username, String password, String email, String registered, byte status, String displayname, byte role) {
        try {
            String Updatequery = "UPDATE `user` SET `username`=?,`password`=?,`email`=?,`registered`=?,`status`=?,`displayname`=?,`role`=? WHERE id=?";

            mPreparedStatement = mConnection.prepareStatement(Updatequery);
            mPreparedStatement.setString(1, username);
            mPreparedStatement.setString(2, password);
            mPreparedStatement.setString(3, email);
            mPreparedStatement.setString(4, registered);
            mPreparedStatement.setByte(5, status);
            mPreparedStatement.setString(6, displayname);
            mPreparedStatement.setByte(7, role);
            mPreparedStatement.setLong(8, id);
            mPreparedStatement.executeUpdate();
            LoadUser();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

   /**
    * 
    * @param id 
    */
    public void deleteUser(long id) {
        try {
            String Deletequery = "DELETE FROM `user` WHERE id = " + id;
            mConnection.prepareStatement(Deletequery);
            mPreparedStatement.executeUpdate();
            LoadUser();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
