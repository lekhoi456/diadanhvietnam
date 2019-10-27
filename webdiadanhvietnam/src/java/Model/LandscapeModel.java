/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Landscape;
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

    public static int numberInPaging = 20;
    ArrayList<Landscape> landscapeArrayList;
    Connection conn;
    ResultSet rs;
    Statement st;

    public LandscapeModel(Connection conn) {
        this.conn = conn;
    }

    public ArrayList<Landscape> getPaging(int page, String search, String sortColumn) throws SQLException {
        try {
            String sqlStr = "";
            sqlStr += "SELECT * FROM landscape";
            if (search != "") {

            }
            if (sortColumn != "") {

            }

            int sumOfLandscape = getNumberOfLandscape(page, search, sortColumn);
            int sumOfPage = (int) Math.ceil(sumOfLandscape / numberInPaging);
            int index = (page - 1) * numberInPaging;

            sqlStr += " LIMIT " + index + ", " + numberInPaging;
            this.st = this.conn.createStatement();
            this.rs = this.st.executeQuery(sqlStr);
            landscapeArrayList = new ArrayList<Landscape>();
            while (rs.next()) {
                long id = rs.getLong("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String guid = rs.getString("guid");
                String thumbnail = rs.getString("thumbnail");

                landscapeArrayList.add(new Landscape(id, name, description, guid, thumbnail));
            }
        } catch (SQLException se) {
            throw se;
        }
        return this.landscapeArrayList;
    }

    public int getNumberOfLandscape(int page, String search, String sortColumn) throws SQLException {
        String sqlStr = "";
        sqlStr += "SELECT count(*) as numberOfLandscape FROM landscape";

        this.st = this.conn.createStatement();
        this.rs = this.st.executeQuery(sqlStr);
        rs.next();
        return rs.getInt("numberOfLandscape");
    }

    public String getPagingString(int currentPage, String search, String sortColumn) throws SQLException {
        String strPaging = "<ul class='pagination'>";
        try {
            int sumOfLandscape = getNumberOfLandscape(currentPage, search, sortColumn);
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
            Logger.getLogger(Entity.Landscape.class.getName()).log(Level.SEVERE, null, ex);
        }
        return strPaging;
    }
}
