package com.roztleskavacky.kosmeticky_salon.libs;

import com.roztleskavacky.kosmeticky_salon.model.User;
import com.roztleskavacky.kosmeticky_salon.model.UserDAO;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class EmailValidator implements Validator {

    private UserDAO userDAO;

    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    private Pattern pattern;
    private Matcher matcher;

    public EmailValidator(UserDAO userDAO) {
        this.userDAO = userDAO;
        pattern = Pattern.compile(EMAIL_PATTERN);
    }

    @Override
    public boolean supports(Class<?> paramClass) {
        return User.class.equals(paramClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "valid.invalidEmail");

        User user = (User) o;

        matcher = pattern.matcher(user.getEmail());
        if (!matcher.matches()) errors.rejectValue("email", "valid.invalidEmail");

        User existingUser = userDAO.getUserByEmail(user.getEmail());
        if (existingUser instanceof User) errors.rejectValue("email", "valid.existingEmail");
    }

}
