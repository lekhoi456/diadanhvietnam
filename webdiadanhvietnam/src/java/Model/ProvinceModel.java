package Model;

import Entity.Province;
import Utils.ConnectDB;

import java.sql.*;
import java.util.ArrayList;

public class ProvinceModel {

    private ArrayList<Province> listProvince = new ArrayList<>();
    private static Connection conn;
    private static Statement st;
    private static PreparedStatement pst;
    private static ResultSet rs;
    private static String sqlStr;

    public ArrayList<Province> getListProvince() {
        return listProvince;
    }

    public ProvinceModel() {
        try {
            conn = ConnectDB.getConnection();
            st = conn.createStatement();
            
            pst = null;
            rs = null;
            sqlStr = "";
            listProvince = new ArrayList<>();
            loadProvince();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    void loadProvince() throws SQLException {
        try {
            sqlStr = "SELECT * FROM `province`";
            rs = st.executeQuery(sqlStr);
            if (rs.isBeforeFirst()) {
                listProvince.clear();
                while (rs.next()) {
                    listProvince.add(new Province(rs.getLong("id"),
                            rs.getString("name"),
                            rs.getString("content"),
                            rs.getString("guid"),
                            rs.getString("thumbnail")));
                }
            }
        } catch (SQLException e) {
            throw e;
        }
    }

    /*
    public int insert(long id, String name, String content, String guid, String thumbnail)  {
        try {
            String sql = "INSERT INTO [province\n"
                    + "           ([id]\n"
                    + "           ,[name]\n"
                    + "           ,[content]\n"
                    + "           ,[guid]\n"
                    + "           ,[thumbnail]\n"
                    + "     VALUES(?,?,?,?,?)";

            ps = con.prepareStatement(sql);
            ps.setLong(1, id);
            ps.setString(2, name);
            ps.setString(3,content);
            ps.setString(4, guid);
            ps.setString(5, thumbnail);
            ps.executeUpdate();
            con.close();
            list.add(new Province(id, name, content, guid, thumbnail));
            return nextId++;
        } catch (SQLException ex) {
            Logger.getLogger(ProvinceModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    public void delete(int ID) throws SQLException {
        String sql = "DELETE FROM `province` WHERE ID=?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, ID);
        ps.executeUpdate();
        list.clear();
        String sql2 = "SELECT * FROM province";
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql2);
        while (rs.next()) {
            long id = rs.getLong(1);
            String name = rs.getString(2);
            String content = rs.getString(3);
            String guid = rs.getString(4);
            String thumbnail = rs.getString(5);
            list.add(new Province(id, name, content, guid, thumbnail));
        }
    }

     */
    public static void main(String[] args) {
        ProvinceModel pr = new ProvinceModel();
        ArrayList<Province> l = pr.getListProvince();
        for (int i = 0; i < l.size(); i++) {
            System.out.println(l.get(i).toString());
        }
    }
}
