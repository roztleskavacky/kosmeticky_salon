package com.roztleskavacky.kosmeticky_salon.controllers.backend;

import com.roztleskavacky.kosmeticky_salon.model.User;
import com.roztleskavacky.kosmeticky_salon.model.UserDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class UserController {

    @Autowired
    private UserDAO UserDAO;

    @RequestMapping(value = "admin/users", method = RequestMethod.GET)
    public ModelAndView users() {
        List<User> users = this.UserDAO.list();
        ModelAndView model = new ModelAndView("backend/users");
        model.addObject("users", users);
        return model;
    }

    @RequestMapping(value = "admin/users/edit/{id}", method = RequestMethod.GET)
    public String editUser(@PathVariable("id") String id) {
        return "backend/userEdit";
    }

    @RequestMapping(value = "admin/users/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {
        User user = UserDAO.getUserById(id);
        if (user instanceof User) {
            UserDAO.delete(user);
            redirectAttributes.addFlashAttribute("flashMessage", "Uživatel byl smazán");
        } else {
            redirectAttributes.addFlashAttribute("flashMessage", "Uživatel nenalezen");
        }

        return "redirect:/admin/users";
    }
}