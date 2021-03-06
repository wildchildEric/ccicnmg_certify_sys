package com.ccicnmg.certify.domain.repository;

import com.ccicnmg.certify.domain.model.security.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by lizhe on 16/7/24.
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
