package Entity;

public class Rating {
    private long post_id;
    private long user_id;
    private byte rating_status;

    public Rating(long post_id, long user_id, byte rating_status) {
        this.post_id = post_id;
        this.user_id = user_id;
        this.rating_status = rating_status;
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

    public byte getRating_status() {
        return rating_status;
    }

    public void setRating_status(byte rating_status) {
        this.rating_status = rating_status;
    }
}
