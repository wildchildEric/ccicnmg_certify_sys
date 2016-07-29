package com.ccicnmg.certify.domain.service;

import com.ccicnmg.certify.domain.repository.UserRepository;
import com.ccicnmg.certify.domain.model.security.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by lizhe on 16/7/24.
 */
@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(name);
        if (user != null) {
            return user;
        } else {
            throw new UsernameNotFoundException("User '" + name + "' not found.");
        }
    }
}
