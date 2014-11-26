package com.roztleskavacky.kosmeticky_salon.controllers.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {


    @RequestMapping(value = "admin/home", method = RequestMethod.GET)
    public String homepage() {
        return "backend/homepage";
    }

    @RequestMapping(value = "admin/logout", method = RequestMethod.GET)
    public String logoutPage() {
        return "backend/logout";
    }

    @RequestMapping(value = "admin/login", method = RequestMethod.GET)
    public String loginPage() {
        return "backend/login";
    }
}