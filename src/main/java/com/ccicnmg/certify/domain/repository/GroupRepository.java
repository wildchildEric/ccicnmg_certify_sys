package com.ccicnmg.certify.domain.repository;

import com.ccicnmg.certify.domain.model.security.Group;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by lizhe on 16/7/30.
 */
@Repository
public interface GroupRepository extends JpaRepository<Group, Long> {
}
