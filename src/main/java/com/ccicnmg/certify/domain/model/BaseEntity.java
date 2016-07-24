package com.ccicnmg.certify.domain.model;

import org.springframework.data.annotation.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import java.time.ZonedDateTime;

/**
 * Created by lizhe on 16/7/24.
 */
@EntityListeners(AuditingEntityListener.class)
@MappedSuperclass
public abstract class BaseEntity {

    @Id
    private Long id;

    @CreatedDate
    private ZonedDateTime creationTime;

    @LastModifiedDate
    private ZonedDateTime modificationTime;

    @CreatedBy
    private User createdByUser;

    @LastModifiedBy
    private User modifiedByUser;

    public Long getId() {
        return id;
    }

}
