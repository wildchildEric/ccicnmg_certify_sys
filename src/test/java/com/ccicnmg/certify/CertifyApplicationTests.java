package com.ccicnmg.certify;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = CertifyApplication.class)
@WebAppConfiguration
@ActiveProfiles("test")//set the active profile to test
public class CertifyApplicationTests {

    @Test
    public void contextLoads() {
    }

}
