/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Landscape;
import Utils.ConnectDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KhoiLeQuoc
 */
public class LandscapeModel {

    ArrayList<Landscape> landscapeArrayList;
    Connection conn;
    ResultSet rs;
    Statement st;

    public LandscapeModel() {
        conn = ConnectDB.getConnection();
        try {
            loadLandscape();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void loadLandscape() throws SQLException {
        try {
            String sqlStr = "SELECT * FROM landscape";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            landscapeArrayList = new ArrayList<Landscape>();
            if (rs.isBeforeFirst()) {
                landscapeArrayList.clear();
                while (rs.next()) {
                    long id = rs.getLong("id");
                    String name = rs.getString("name");
                    String description = rs.getString("description");
                    String guid = rs.getString("guid");
                    String thumbnail = rs.getString("thumbnail");
                    landscapeArrayList.add(new Landscape(id, name, description, guid, thumbnail));
                }
            }
        } catch (SQLException se) {
            throw se;
        }
    }

    public ArrayList<Landscape> getList() {
        return this.landscapeArrayList;
    }
    
    public String getNameById(long landscapeId) {
        for (Landscape ls: landscapeArrayList) {
            if (landscapeId == ls.getId()) {
                return ls.getName();
            }
            break;
        }
        return null;
    }
    
    
    public String getGuidById(long landscapeId) {
        for (Landscape ls: landscapeArrayList) {
            if (landscapeId == ls.getId()) {
                return ls.getGuid();
            }
            break;
        }
        return null;
    }
    
    public String getThumbnailById(long landscapeId) {
        for (Landscape ls: landscapeArrayList) {
            if (landscapeId == ls.getId()) {
                return ls.getThumbnail();
            }
            break;
        }
        return null;
    }
}
