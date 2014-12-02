
package com.roztleskavacky.kosmeticky_salon.model;

import org.springframework.security.core.AuthenticationException;

public class AuthorizationException  extends AuthenticationException {

    public AuthorizationException(String msg, Throwable t) {
        super(msg, t);
    }

    public AuthorizationException(String msg) {
        super(msg);
    }
}
