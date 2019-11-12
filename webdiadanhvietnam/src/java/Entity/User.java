package Entity;

import java.sql.Date;

public class User {
    private long id;
    private String username;
    private String password;
    private String email;
    private Date registered;
    private byte status;
    private String displayname;
    private byte role;

    public User(long id, String username, String password, String email, Date registered, byte status, String displayname, byte role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.registered = registered;
        this.status = status;
        this.displayname = displayname;
        this.role = role;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getRegistered() {
        return registered;
    }

    public void setRegistered(Date registered) {
        this.registered = registered;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }

    public byte getRole() {
        return role;
    }

    public void setRole(byte role) {
        this.role = role;
    }
}
