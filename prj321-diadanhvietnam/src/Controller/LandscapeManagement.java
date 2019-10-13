/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import Entity.Landscape;
import Util.ConnectDB;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duong
 */
public class LandscapeManagement {

    public ArrayList<Landscape> list_landscape = new ArrayList<>();
    private Connection mConnection;
    private Statement mStatement;
    private PreparedStatement mPreparedStatement;
    private ResultSet rs;

    /**
     * 
     * @param name
     * @param description
     * @param guid
     * @param thumbnail 
     */
    public void addLandscape(String name, String description, String guid, String thumbnail) {
        try {
            String insertquery = "INSERT INTO `landscape`(`name`, `description`, `thumbnail`, `guid`) VALUES (?,?,?,?,?)";
            mConnection = ConnectDB.getConnection();
            mPreparedStatement = mConnection.prepareStatement(insertquery, Statement.RETURN_GENERATED_KEYS);
            mPreparedStatement.setLong(1, list_landscape.size() + 1);
            mPreparedStatement.setString(2, name);
            mPreparedStatement.setString(3, description);
            mPreparedStatement.setString(4, thumbnail);
            mPreparedStatement.setString(5, guid);
            mPreparedStatement.executeUpdate();
            
            Landscape a = new Landscape(list_landscape.size()+1, name, description, guid, thumbnail);
            list_landscape.add(a);
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * 
     */
    public void LoadLandscape() {
        try {
            mConnection = ConnectDB.getConnection();
            mStatement = mConnection.createStatement();
            String Selectquery = "SELECT * FROM `lanscape`";
            rs = mStatement.executeQuery(Selectquery);
            list_landscape = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                list_landscape.clear();
                while (rs.next()) {
                    long id = rs.getInt("id");
                    String name = rs.getString("name");
                    String description = rs.getString("description");
                    String thumbnail = rs.getString("thumbnail");
                    String guid = rs.getString("guid");
                    Landscape a = new Landscape(id, name, description, guid, thumbnail);
                    list_landscape.add(a);
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
    public void UpdateLandscape(long id, String name, String description, String guid, String thumbnail) {
        try {
            String Updatequery = "UPDATE `landscape` SET `name`=?,`description`=?,`thumbnail`=?,`guid`=? WHERE id = ?";
            
            mPreparedStatement = mConnection.prepareStatement(Updatequery);
            mPreparedStatement.setString(1, name);
            mPreparedStatement.setString(2, description);
            mPreparedStatement.setString(3, guid);
            mPreparedStatement.setLong(4, id);
            mPreparedStatement.executeUpdate();
            LoadLandscape();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    /***
     * 
     * @param id 
     */
    public void deleteLandscape(long id) {
        try {
            String Deletequery = "DELETE FROM `landscape` WHERE id = " + id;
            mConnection.prepareStatement(Deletequery);
            mPreparedStatement.executeUpdate();
            LoadLandscape();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
