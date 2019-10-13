/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Province;
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
public class ProvinceManagement {

    public ArrayList<Province> list_province = new ArrayList<>();
    private Connection mConnection;
    private Statement mStatement;
    private PreparedStatement mPreparedStatement;
    private ResultSet rs;

   /**
    * 
    * @param name
    * @param content
    * @param guid
    * @param thumbnail 
    */
    public void addProvince(String name, String content, String guid, String thumbnail) {
        try {
            String insertquery = "INSERT INTO `province`(`id`,`name`, `content`, `thumbnail`, `guid`) VALUES (?,?,?,?,?)";
            mConnection = ConnectDB.getConnection();
            mPreparedStatement = mConnection.prepareStatement(insertquery, Statement.RETURN_GENERATED_KEYS);
            mPreparedStatement.setLong(1, list_province.size() + 1);
            mPreparedStatement.setString(2, name);
            mPreparedStatement.setString(3, content);
            mPreparedStatement.setString(4, thumbnail);
            mPreparedStatement.setString(5, guid);
            mPreparedStatement.executeUpdate();
            
            Province a = new Province(list_province.size()+1, name, content, guid, thumbnail);
            list_province.add(a);
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     */
    public void LoadProvince() {
        try {
            mConnection = ConnectDB.getConnection();
            mStatement = mConnection.createStatement();
            String Selectquery = "SELECT * FROM `province`";
            rs = mStatement.executeQuery(Selectquery);
            list_province = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                list_province.clear();
                while (rs.next()) {
                    long id = rs.getInt("id");
                    String name = rs.getString("name");
                    String content = rs.getString("content");
                    String guid = rs.getString("guid");
                    String thumbnail = rs.getString("thumbnail");
                    Province a = new Province(id, name, content, guid, thumbnail);
                    list_province.add(a);
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
    * @param content
    * @param guid
    * @param thumbnail 
    */
    public void UpdateProvince(long id, String name, String content, String guid, String thumbnail) {
        try {
            String Updatequery = "UPDATE `province` SET `name`=?,`content`=?,`thumbnail`=?,`guid`=? WHERE id=?";

            mPreparedStatement = mConnection.prepareStatement(Updatequery);
            mPreparedStatement.setString(1, name);
            mPreparedStatement.setString(2, content);
            mPreparedStatement.setString(3, thumbnail);
            mPreparedStatement.setString(4, guid);
            mPreparedStatement.setLong(6, id);
            mPreparedStatement.executeUpdate();
            LoadProvince();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

   /**
    * 
    * @param id 
    */
    public void deleteProvince(long id) {
        try {
            String Deletequery = "DELETE FROM `province` WHERE id = " + id;
            mConnection.prepareStatement(Deletequery);
            mPreparedStatement.executeUpdate();
            LoadProvince();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
