package com.ccicnmg.certify.domain.service;

import com.ccicnmg.certify.domain.model.User;
import org.springframework.data.domain.AuditorAware;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Created by lizhe on 16/7/24.
 */
public class UserAuditorAware implements AuditorAware<User> {
    @Override
    public User getCurrentAuditor() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return null;
        }
        return (User) authentication.getPrincipal();
    }
}
