package com.roztleskavacky.kosmeticky_salon.controllers.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TermController {
    
    @RequestMapping("admin/term")
    public String term() {
        return "backend/term";
    }
    
    @RequestMapping("admin/termEdit")
    public String termEdit() {
        return "backend/termEdit";
    }
    
    @RequestMapping("admin/termCreate")
    public String termCreate() {
        return "backend/termCreate";
    }
}
