
package com.roztleskavacky.kosmeticky_salon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController {

    @RequestMapping("/")
    public String homepage() {
        return "frontend/index";
    }
    
    @RequestMapping("/rezervace")
    public String reservation() {
        return "frontend/reservation";
    }
    
    @RequestMapping("/adresa")
    public String address() {
        return "frontend/address";
    }
}
