package Entity;

public class Landscape {
    private long id;
    private String name;
    private String description;
    private String guid;
    private String thumbnail;

    public Landscape(long id, String name, String description, String guid, String thumbnail) {
        this.id = id;
        this.name = name;
        this.description = description;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
