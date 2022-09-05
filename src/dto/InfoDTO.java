package dto;

import java.util.Date;

public class InfoDTO {
    private String name;
    private Date birth;
    private String type;
    private String kind;
    private String owner;
    private String phone;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public java.sql.Date getBirth() {
        return (java.sql.Date) birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public InfoDTO(String name, Date birth, String type, String kind, String owner, String phone) {
        this.name = name;
        this.birth = birth;
        this.type = type;
        this.kind = kind;
        this.owner = owner;
        this.phone = phone;
    }
}

