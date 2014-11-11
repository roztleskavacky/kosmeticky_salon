package com.roztleskavacky.kosmeticky_salon;
 
import java.security.Principal;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
 
@Controller
public class LoginController {
    
    @RequestMapping("admin/login")
    public String login(Model model, Principal principal) {
        return "login";
    }
     
    @RequestMapping(value = "admin/logout", method = RequestMethod.GET)
    public String logoutPage() {
        return "logout";
    }
     
    @RequestMapping(value = "admin/login", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
}