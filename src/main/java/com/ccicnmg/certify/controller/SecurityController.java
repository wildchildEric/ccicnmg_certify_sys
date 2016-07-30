package com.ccicnmg.certify.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lizhe on 16/7/24.
 */
@Controller
public class SecurityController extends ApplicationController {

    public static final String LOGIN_PATH = "/login";

    @RequestMapping(LOGIN_PATH)
    public String login() {
        return "security/login";
    }
}
