package Entity;

public class Post {
    private long id;
    private String title;
    private String thumbnail;
    private long post_author;
    private String guid;
    private String post_date;
    private byte status;
    private long landscape_id;
    private long province_id;

    public Post(long id, String title, String thumbnail, long post_author, String guid, String post_date, byte status, long landscape_id, long province_id) {
        this.id = id;
        this.title = title;
        this.thumbnail = thumbnail;
        this.post_author = post_author;
        this.guid = guid;
        this.post_date = post_date;
        this.status = status;
        this.landscape_id = landscape_id;
        this.province_id = province_id;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public long getPost_author() {
        return post_author;
    }

    public void setPost_author(long post_author) {
        this.post_author = post_author;
    }

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getPost_date() {
        return post_date;
    }

    public void setPost_date(String post_date) {
        this.post_date = post_date;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    public long getLandscape_id() {
        return landscape_id;
    }

    public void setLandscape_id(long landscape_id) {
        this.landscape_id = landscape_id;
    }

    public long getProvince_id() {
        return province_id;
    }

    public void setProvince_id(long province_id) {
        this.province_id = province_id;
    }
}
