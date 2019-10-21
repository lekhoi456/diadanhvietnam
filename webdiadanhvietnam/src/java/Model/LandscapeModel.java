package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import Entity.Landscape;
import Utils.ConnectDB;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duong
 */
public class LandscapeModel {

    public ArrayList<Landscape> landscapeList = new ArrayList<>();
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;

    /**
     *
     * @param name
     * @param description
     * @param guid
     * @param thumbnail
     */
    public void addLandscape(String name, String description, String guid, String thumbnail) {
        try {
            String insertquery = "INSERT INTO `landscape`(`name`, `description`, `thumbnail`, `guid`) VALUES (?,?,?,?)";
            conn = ConnectDB.getConnection();
            pst = conn.prepareStatement(insertquery, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, name);
            pst.setString(2, description);
            pst.setString(3, thumbnail);
            pst.setString(4, guid);
            pst.executeUpdate();
            Landscape a = new Landscape(landscapeList.size() + 1, name, description, guid, thumbnail);
            landscapeList.add(a);
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeModel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     *
     */
    public void loadLandscape() {
        try {
            conn = ConnectDB.getConnection();
            st = conn.createStatement();
            String Selectquery = "SELECT * FROM `lanscape`";
            rs = st.executeQuery(Selectquery);
            landscapeList = new ArrayList<>();
            if (rs.isBeforeFirst()) {
                landscapeList.clear();
                while (rs.next()) {
                    long id = rs.getInt("id");
                    String name = rs.getString("name");
                    String description = rs.getString("description");
                    String thumbnail = rs.getString("thumbnail");
                    String guid = rs.getString("guid");
                    Landscape a = new Landscape(id, name, description, guid, thumbnail);
                    landscapeList.add(a);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeModel.class.getName()).log(Level.SEVERE, null, ex);
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
    public void updateLandscape(long id, String name, String description, String guid, String thumbnail) {
        try {
            String Updatequery = "UPDATE `landscape` SET `name`=?,`description`=?,`thumbnail`=?,`guid`=? WHERE id = ?";

            pst = conn.prepareStatement(Updatequery);
            pst.setString(1, name);
            pst.setString(2, description);
            pst.setString(3, guid);
            pst.setLong(4, id);
            pst.executeUpdate();
            loadLandscape();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeModel.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * *
     *
     * @param id
     */
    public void deleteLandscape(long id) {
        try {
            String Deletequery = "DELETE FROM `landscape` WHERE id = " + id;
            conn.prepareStatement(Deletequery);
            pst.executeUpdate();
            loadLandscape();
        } catch (SQLException ex) {
            Logger.getLogger(LandscapeModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
