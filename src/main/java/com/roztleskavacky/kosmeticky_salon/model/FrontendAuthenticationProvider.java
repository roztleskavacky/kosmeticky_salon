
package com.roztleskavacky.kosmeticky_salon.model;

import java.util.ArrayList;
import java.util.List;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class FrontendAuthenticationProvider implements AuthenticationProvider {

    private UserDAO users;

    public FrontendAuthenticationProvider(UserDAO users) {
        this.users = users;
    }

    @Override
    public Authentication authenticate(Authentication a) throws AuthenticationException {
        String email = a.getName();
        String password = a.getCredentials().toString();

        User user = this.users.getUserByEmail(email);
        if (user == null) throw new UsernameNotFoundException("Email '" + email + "' not found");
        if (!password.equals(user.getPassword())) throw new BadCredentialsException("Invalid credentials");

        //if (!user.getRole().getType().equals(Role.ROLE_USER)) throw new AuthorizationException("Restricted access to users only");

        List<GrantedAuthority> grantedAuths = new ArrayList<>();
        grantedAuths.add(new SimpleGrantedAuthority(user.getRole().getType()));
        return new UsernamePasswordAuthenticationToken(email, password, grantedAuths);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}
