package com.ccicnmg.certify.runner;

import com.ccicnmg.certify.domain.repository.GroupRepository;
import com.ccicnmg.certify.domain.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

/**
 * Created by lizhe on 16/7/30.
 */
@Component
public class DataInitializerRunner implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(DataInitializerRunner.class);


    @Autowired
    UserRepository userRepository;
    @Autowired
    GroupRepository groupRepository;
    @Autowired
    PasswordEncoder passwordEncoder;


    @Override
    public void run(String... strings) throws Exception {
//        Authority authority = new Authority();
//        authority.setRole(Authority.ROLE_ADMIN);
//        Group group = new Group();
//        group.setName("测试组");
//        group.setDescription("测试用");
//        group.setAuthorities(Collections.singletonList(authority));
//        groupRepository.save(group);
//
//
//        User user = new User();
//        user.setName("测试用户");
//        user.setUsername("test@test.com");
//        user.setPassword(passwordEncoder.encode("123456"));
//        user.setGroups(Collections.singletonList(group));
//        user.setAccountNonExpired(true);
//        user.setAccountNonLocked(true);
//        user.setCredentialsNonExpired(true);
//        user.setEnabled(true);
//        userRepository.save(user);
    }
}
