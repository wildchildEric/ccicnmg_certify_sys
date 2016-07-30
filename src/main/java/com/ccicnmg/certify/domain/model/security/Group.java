package com.ccicnmg.certify.domain.model.security;

import com.ccicnmg.certify.domain.model.BaseEntity;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by lizhe on 16/7/29.
 */
@Entity
@Table(name = "t_group")
public class Group extends BaseEntity {

    private String name;
    private String description;

    @OneToMany(mappedBy = "group", fetch = FetchType.EAGER, orphanRemoval = true, cascade = {CascadeType.ALL})
    private Collection<Authority> authorities;

    @ManyToMany(mappedBy = "groups")
    private Collection<User> users;


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

    public Collection<Authority> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(Collection<Authority> authorities) {
        this.authorities = authorities;
    }

    public Collection<User> getUsers() {
        return users;
    }

    public void setUsers(Collection<User> users) {
        this.users = users;
    }


}
