
package com.roztleskavacky.kosmeticky_salon.model;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

public class BackendAuthenticationProvider implements AuthenticationProvider {

    private UserDAO users;

    public BackendAuthenticationProvider(UserDAO users) {
        this.users = users;
    }

    @Override
    public Authentication authenticate(Authentication a) throws AuthenticationException {
        String email = a.getName();
        String password = a.getCredentials().toString();

        User user = this.users.getUserByEmail(email);
        if (user == null) throw new BadCredentialsException("Invalid credentials");
        if (!password.equals(user.getPassword())) throw new BadCredentialsException("Invalid credentials");

        List<GrantedAuthority> grantedAuths = new ArrayList<>();
        grantedAuths.add(new SimpleGrantedAuthority("ROLE_USER"));
        return new UsernamePasswordAuthenticationToken(email, password, grantedAuths);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}
