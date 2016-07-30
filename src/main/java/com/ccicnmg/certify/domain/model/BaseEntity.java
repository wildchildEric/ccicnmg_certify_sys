package com.ccicnmg.certify.domain.model;

import com.ccicnmg.certify.domain.model.security.User;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.time.ZonedDateTime;

/**
 * Created by lizhe on 16/7/24.
 */
@EntityListeners(AuditingEntityListener.class)
@MappedSuperclass
public abstract class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreatedDate
    private ZonedDateTime creationTime;

    @LastModifiedDate
    private ZonedDateTime modificationTime;

    @CreatedBy
    @ManyToOne
    private User createdByUser;

    @LastModifiedBy
    @ManyToOne
    private User modifiedByUser;

    public Long getId() {
        return id;
    }

    public ZonedDateTime getCreationTime() {
        return creationTime;
    }

    public ZonedDateTime getModificationTime() {
        return modificationTime;
    }

    public User getCreatedByUser() {
        return createdByUser;
    }

    public User getModifiedByUser() {
        return modifiedByUser;
    }
}
