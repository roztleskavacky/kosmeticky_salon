package com.roztleskavacky.kosmeticky_salon.controllers.frontend;

import com.roztleskavacky.kosmeticky_salon.libs.EmailValidator;
import com.roztleskavacky.kosmeticky_salon.libs.PasswordValidator;
import com.roztleskavacky.kosmeticky_salon.model.Role;
import com.roztleskavacky.kosmeticky_salon.model.RoleDAO;
import com.roztleskavacky.kosmeticky_salon.model.User;
import com.roztleskavacky.kosmeticky_salon.model.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RegistrationController {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private RoleDAO roleDAO;

    @Autowired
    @Qualifier("passwordValidator")
    private PasswordValidator passwordValidator;

    @Autowired
    @Qualifier("emailValidator")
    private EmailValidator emailValidator;

    @InitBinder("user")
    protected void initUserBinder(WebDataBinder binder) {
        binder.addValidators(passwordValidator, emailValidator);
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registration() {
        return new ModelAndView("frontend/registration", "user", new User());
    }

    @RequestMapping(value = "/registration/new", method = RequestMethod.POST)
    public ModelAndView registerUser(@ModelAttribute("user") @Validated User user, BindingResult result, RedirectAttributes redirectAttributes) {
        ModelAndView modelAndView = new ModelAndView("frontend/registration");

        if (!result.hasErrors()) {
            Role role = roleDAO.getRoleByType(Role.ROLE_USER);
            user.setRole(role);
            userDAO.saveUser(user);

            redirectAttributes.addFlashAttribute("flashMessage", "Registrace proběhla úspěšně, nyní se prosím přihlašte");
            modelAndView.setViewName("redirect:/");
        } else {
            modelAndView.addObject("user", user);
        }

        return modelAndView;
    }
}
