package com.roztleskavacky.kosmeticky_salon.controllers.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ReservationController {
    
    @RequestMapping("admin/reservation")
    public String reservation() {
        return "backend/reservation";
    }
    
}
