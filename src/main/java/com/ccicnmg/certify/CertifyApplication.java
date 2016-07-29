package com.ccicnmg.certify;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CertifyApplication implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(CertifyApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(CertifyApplication.class, args);
    }

    @Override
    public void run(String... strings) throws Exception {
        logger.info("Some Initialize work can be done here.");
    }
}
