package com.roztleskavacky.kosmeticky_salon.libs;

import com.roztleskavacky.kosmeticky_salon.model.User;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class PasswordValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return User.class.equals(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "valid.passwordEmpty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "passwordConfirmation", "valid.passwordConfirmationEmpty");

        User user = (User) o;
        if (!user.getPassword().equals(user.getPasswordConfirmation())) errors.rejectValue("password", "valid.passwordsUnmatched");
    }

}
