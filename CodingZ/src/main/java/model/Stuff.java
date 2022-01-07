package model;

public class Stuff {

    private Long id;
    private String firstname_stuff;
    private String lastname_stuff;

    public Stuff(String email, String password) {
        this.email = email;
        this.password = password;
    }

    private String email;
    private String password;

    public Stuff(Long id, String firstname_stuff, String lastname_stuff, String email, String password) {
        this.id = id;
        this.firstname_stuff = firstname_stuff;
        this.lastname_stuff = lastname_stuff;
        this.email = email;
        this.password = password;
    }
    public Stuff(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstname_stuff() {
        return firstname_stuff;
    }

    public void setFirstname_stuff(String firstname_stuff) {
        this.firstname_stuff = firstname_stuff;
    }

    public String getLastname_stuff() {
        return lastname_stuff;
    }

    public void setLastname_stuff(String lastname_stuff) {
        this.lastname_stuff = lastname_stuff;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Stuff{" +
                "id=" + id +
                ", firstname_stuff='" + firstname_stuff + '\'' +
                ", lastname_stuff='" + lastname_stuff + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
