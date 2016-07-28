package com.ccicnmg.certify.security;

import com.ccicnmg.certify.domain.model.BaseEntity;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import java.util.Collection;

/**
 * Created by lizhe on 16/7/29.
 */
@Entity
public class Group extends BaseEntity {

    private String name;
    private String description;
    @OneToMany
    private Collection<Authority> authorities;
    @ManyToMany
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
