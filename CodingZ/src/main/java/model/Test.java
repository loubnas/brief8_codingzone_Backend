package model;

public class Test {
    private Long id;
    private String name;
    private String description;
    private Long id_staff;


    public Test(Long id, String name, String description, Long id_staff) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.id_staff=id_staff;
    }


    public Test() {

    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public Long getId_staff() {
        return id_staff;
    }

    public void setId_staff(Long id_staff) {
        this.id_staff = id_staff;
    }




}
