package dao;

/**
 * Created by jmy on 2015/10/31.
 */
public class User {
    //private String username;
    private String nickname;
    private String password;
    private String role;
    private String sex;
    private String email;
    private String birth;
    //private String url;

    // public String getUsername() {        return username;    }

    public String getNickname() {
        return nickname;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public String getSex() {
        return sex;
    }

    public String getEmail() {
        return email;
    }

    // public String getBirth() {        return birth;    }

    //public String getUrl() {        return url;    }

    // public void setUsername(String username) {        this.username = username;    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    //public void setBirth(String birth) {        this.birth = birth;    }

    //public void setUrl(String url) {        this.url = url;    }
}
