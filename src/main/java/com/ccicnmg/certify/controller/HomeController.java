package com.ccicnmg.certify.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lizhe on 16/7/24.
 */
@Controller
public class HomeController extends ApplicationController {

    @RequestMapping("/")
    public String index() {
        return "home";
    }
}
