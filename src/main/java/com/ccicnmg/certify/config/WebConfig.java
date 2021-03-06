package com.ccicnmg.certify.config;

import com.ccicnmg.certify.domain.model.security.User;
import com.ccicnmg.certify.service.AuditingDateTimeProvider;
import com.ccicnmg.certify.service.CurrentTimeDateTimeService;
import com.ccicnmg.certify.service.DateTimeService;
import com.ccicnmg.certify.service.UserAuditorAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.auditing.DateTimeProvider;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

/**
 * Created by lizhe on 16/7/15.
 */
@Configuration
@EnableJpaAuditing
public class WebConfig extends WebMvcConfigurerAdapter {

    @Bean
    public TilesConfigurer tilesConfigurer() {
        TilesConfigurer tilesConfig = new TilesConfigurer();
        tilesConfig.setDefinitions("/WEB-INF/layouts/tiles.xml", "/WEB-INF/views/**/tiles.xml");
        tilesConfig.setCheckRefresh(true);
        return tilesConfig;
    }

    @Bean
    public ViewResolver viewResolver() {
        TilesViewResolver viewResolver = new TilesViewResolver();
//        viewResolver.setExposeContextBeansAsAttributes(true);
        return viewResolver;
    }

    @Bean
    public AuditorAware<User> auditorProvider() {
        return new UserAuditorAware();
    }

    @Bean
    public DateTimeService currentTimeDateTimeService() {
        return new CurrentTimeDateTimeService();
    }

    @Bean
    public DateTimeProvider dateTimeProvider(DateTimeService dateTimeService) {
        return new AuditingDateTimeProvider(dateTimeService);
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
