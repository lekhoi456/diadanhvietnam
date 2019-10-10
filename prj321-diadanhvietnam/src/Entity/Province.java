package Entity;

public class Province {
    private long id;
    private String name;
    private String content;
    private String guid;
    private String thumbnail;

    public Province(long id, String name, String content, String guid, String thumbnail) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.guid = guid;
        this.thumbnail = thumbnail;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
}
