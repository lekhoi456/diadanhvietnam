package Entity;

import java.sql.Date;

public class Comment {
    private long comment_id;
    private long post_id;
    private long user_id;
    private String comment_content;
    private Date comment_date;
    private int comment_status;

    @Override
    public String toString() {
        return "Comment{" +
                "comment_id=" + comment_id +
                ", post_id=" + post_id +
                ", user_id=" + user_id +
                ", comment_content='" + comment_content + '\'' +
                ", comment_date=" + comment_date +
                ", comment_status='" + comment_status + '\'' +
                '}';
    }

    public Comment(long comment_id, long post_id, long user_id, String comment_content, Date comment_Date, int comment_status) {


        this.comment_id = comment_id;
        this.post_id = post_id;
        this.user_id = user_id;
        this.comment_content = comment_content;
        this.comment_date = comment_Date;
        this.comment_status = comment_status;
    }

    public long getComment_id() {
        return comment_id;
    }

    public void setComment_id(long comment_id) {
        this.comment_id = comment_id;
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

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public Date getComment_date() {
        return comment_date;
    }

    public void setComment_date(Date comment_date) {

        this.comment_date = comment_date;
    }

    public int getComment_status() {
        return comment_status;
    }

    public void setComment_status(int comment_status) {
        this.comment_status = comment_status;
    }
}
