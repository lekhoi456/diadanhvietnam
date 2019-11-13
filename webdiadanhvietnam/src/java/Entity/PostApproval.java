/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author KhoiLeQuoc
 */
public class PostApproval {
    long post_id;
    long user_id;
    Date date_approval;
    long post_author;
    byte status;

    public PostApproval(long post_id, long user_id, Date date_approval, long post_author, byte status) {
        this.post_id = post_id;
        this.user_id = user_id;
        this.date_approval = date_approval;
        this.post_author = post_author;
        this.status = status;
    }
    
    

    public long getPost_id() {
        return post_id;
    }

    public void setPost_id(long post_id) {
        this.post_id = post_id;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public Date getDate_approval() {
        return date_approval;
    }

    public void setDate_approval(Date date_approval) {
        this.date_approval = date_approval;
    }

    public long getPost_author() {
        return post_author;
    }

    public void setPost_author(long post_author) {
        this.post_author = post_author;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }
    
    
}
