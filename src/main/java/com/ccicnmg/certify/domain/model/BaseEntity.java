package com.ccicnmg.certify.domain.model;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
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
    @CreatedDate
    private ZonedDateTime creationTime;

    @LastModifiedDate
    private ZonedDateTime modificationTime;

    @CreatedBy
    private User createdByUser;

    @LastModifiedBy
    private User modifiedByUser;

}
