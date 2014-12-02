
package com.roztleskavacky.kosmeticky_salon.model;

public class Role {

    public final static String ROLE_ADMIN = "ROLE_ADMIN";
    public final static String ROLE_STAFF = "ROLE_STAFF";
    public final static String ROLE_USER  = "ROLE_USER";

    private Long id;

    private String name;

    private String type;

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
