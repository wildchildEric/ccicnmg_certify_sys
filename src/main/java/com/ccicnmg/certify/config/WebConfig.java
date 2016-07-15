package com.ccicnmg.certify.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

/**
 * Created by lizhe on 16/7/15.
 */
@Configuration
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
        return new TilesViewResolver();
    }
}
