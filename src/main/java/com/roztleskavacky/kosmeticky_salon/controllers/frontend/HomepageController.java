
package com.roztleskavacky.kosmeticky_salon.controllers.frontend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController {

    @RequestMapping("/")
    public String homepage() {
        return "frontend/index";
    }
    
    @RequestMapping("/hostReservation")
    public String hostReservation() {
        return "frontend/hostReservation";
    }
    
    @RequestMapping("/registration")
    public String registration() {
        return "frontend/registration";
    }
    
    @RequestMapping("/administration")
    public String administration() {
        return "frontend/administration";
    }
    
    @RequestMapping("/creating")
    public String creating() {
        return "frontend/creating";
    }
    
    @RequestMapping("/contact")
    public String contact() {
        return "frontend/contact";
    }
    
    @RequestMapping("/about")
    public String about() {
        return "frontend/about";
    }
}
