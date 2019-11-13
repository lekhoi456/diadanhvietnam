/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Province;
import Utils.ConnectDB;
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
 * @author KhoiLeQuoc
 */
public class ProvinceModel {

    ArrayList<Province> provinceArrayList;
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;

    public ProvinceModel() {
        try {
            conn = ConnectDB.getConnection();
            loadProvince();
        } catch (SQLException ex) {
            Logger.getLogger(ProvinceModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void loadProvince() throws SQLException {
        try {
            String sqlStr = "";
            sqlStr += "SELECT * FROM province";
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            provinceArrayList = new ArrayList<Province>();
            while (rs.next()) {
                long id = rs.getLong("id");
                String name = rs.getString("name");
                String content = rs.getString("content");
                String guid = rs.getString("guid");
                String thumbnail = rs.getString("thumbnail");
                provinceArrayList.add(new Province(id, name, content, guid, thumbnail));
            }
        } catch (SQLException se) {
            throw se;
        }
        
    }
    
    public ArrayList<Province> getList() {
        return this.provinceArrayList;
    }
    
    public String getNameById(long provinceId) {
        for (Province ls: provinceArrayList) {
            if (provinceId == ls.getId()) {
                return ls.getName();
            }
            break;
        }
        return null;
    }
   
    public String getGuidById(long provinceId) {
        for (Province ls: provinceArrayList) {
            if (provinceId == ls.getId()) {
                return ls.getGuid();
            }
            break;
        }
        return null;
    }
    
    public String getThumbnailById(long provinceId) {
        for (Province ls: provinceArrayList) {
            if (provinceId == ls.getId()) {
                return ls.getThumbnail();
            }
            break;
        }
        return null;
    }
}
