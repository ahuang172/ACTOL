package actol.entity;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVersionUID=1L;
    private int id;
    private String username;
    private String password;
    private String phone;
    private int sex;
    private String email;
    private int online;

    public int getId() {
        return id;
    }

    public int getOnline() {
        return online;
    }

    public int getSex() {
        return sex;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;

    }

    public String getPhone() {
        return phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setOnline(int online) {
        this.online = online;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
