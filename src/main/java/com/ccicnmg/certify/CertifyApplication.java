package com.ccicnmg.certify;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CertifyApplication {

    private static final Logger logger = LoggerFactory.getLogger(CertifyApplication.class);

    public static final String APPLICATION_NAME = "CCICNM认证管理系统";

    public static void main(String[] args) {
        SpringApplication.run(CertifyApplication.class, args);
    }

}
