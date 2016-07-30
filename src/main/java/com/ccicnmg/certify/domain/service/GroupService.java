package com.ccicnmg.certify.domain.service;

import com.ccicnmg.certify.domain.repository.GroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by lizhe on 16/7/30.
 */
@Service
public class GroupService {
    @Autowired
    GroupRepository groupRepository;
}
