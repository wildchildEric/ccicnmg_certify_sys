package com.ccicnmg.certify.domain.model.security;

import com.ccicnmg.certify.domain.model.BaseEntity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

/**
 * Created by lizhe on 16/7/29.
 */
@Entity
public class Authority extends BaseEntity {

    public static final String ROLE_ADMIN = "ROLE_ADMIN";


    private String role;
    @ManyToOne
    private Group group;


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }
}
