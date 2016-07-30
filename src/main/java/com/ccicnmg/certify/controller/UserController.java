package com.ccicnmg.certify.controller;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by lizhe on 16/7/30.
 */
@Controller
public class UserController extends ApplicationController {

    public static final String USER_INDEX_PATH = "/users";
    public static final String USER_NEW_PATH = "/users/new";
    public static final String USER_CREATE_PATH = USER_INDEX_PATH;
    public static final String USER_SHOW_PATH = "/users/{id}";
    public static final String USER_EDIT_PATH = "/users/{id}/edit";
    public static final String USER_UPDATE_PATH = USER_SHOW_PATH;

    private Logger logger = org.slf4j.LoggerFactory.getLogger(UserController.class);

    @RequestMapping(value = USER_INDEX_PATH, method = RequestMethod.GET)
    public String index() {
        return "user/index";
    }

    @RequestMapping(value = USER_NEW_PATH, method = RequestMethod.GET)
    public String new_() {
        return "user/new";
    }

    @RequestMapping(value = USER_CREATE_PATH, method = RequestMethod.POST)
    public String create() {
        return "redirect:index";
    }

    @RequestMapping(value = USER_SHOW_PATH, method = RequestMethod.GET)
    public String show(@PathVariable(value = "id") Long id) {
        return "user/show";
    }


    @RequestMapping(value = USER_EDIT_PATH, method = RequestMethod.GET)
    public String edit(@PathVariable(value = "id") Long id) {
        return "user/edit";
    }


    @RequestMapping(value = USER_UPDATE_PATH, method = {RequestMethod.PUT, RequestMethod.PATCH})
    public String update(@PathVariable(value = "id") Long id) {
        return "redirect:index";
    }
}
