/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Province;
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
public class ProvinceModel {

    public static int numberInPaging = 100;
    ArrayList<Province> provinceArrayList;
    Connection conn;
    ResultSet rs;
    Statement st;

    public ProvinceModel(Connection conn) {
        this.conn = conn;
    }

    public ArrayList<Province> getPaging(int page, String search, String sortColumn) throws SQLException {
        try {
            String sqlStr = "";
            sqlStr += "SELECT * FROM province";
            if (search != "") {

            }
            if (sortColumn != "") {

            }

            int sumOfLandscape = getNumberOfProvince(page, search, sortColumn);
            int sumOfPage = (int) Math.ceil(sumOfLandscape / numberInPaging);
            int index = (page - 1) * numberInPaging;

            sqlStr += " LIMIT " + index + ", " + numberInPaging;
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
        return this.provinceArrayList;
    }

    public int getNumberOfProvince(int page, String search, String sortColumn) throws SQLException {
        String sqlStr = "";
        sqlStr += "SELECT count(*) as numberOfProvince FROM province";

        this.st = this.conn.createStatement();
        this.rs = this.st.executeQuery(sqlStr);
        rs.next();
        return rs.getInt("numberOfProvince");
    }

    public String getPagingString(int currentPage, String search, String sortColumn) throws SQLException {
        String strPaging = "<ul class='pagination'>";
        try {
            int sumOfLandscape = getNumberOfProvince(currentPage, search, sortColumn);
            int sumOfPage = (int) Math.ceil(sumOfLandscape / numberInPaging);
            for (int inPage = 1; inPage <= sumOfPage; inPage++) {
                if (inPage == currentPage) {
                    strPaging += "<li class='active'><a href='?page=" + inPage + "'>" + inPage + "</a></li>";
                } else {
                    strPaging += "<li><a href='?page=" + inPage + "'>" + inPage + "</a></li>";
                }
            }
            strPaging += "</ul>";
        } catch (SQLException ex) {
            Logger.getLogger(Entity.Province.class.getName()).log(Level.SEVERE, null, ex);
        }
        return strPaging;
    }
}
