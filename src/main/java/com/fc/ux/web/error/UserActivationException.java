package com.fc.ux.web.error;

public final class UserActivationException extends RuntimeException {

    private static final long serialVersionUID = 5861310537366287163L;

    public UserActivationException() {
        super();
    }

    public UserActivationException(final String message, final Throwable cause) {
        super(message, cause);
    }

    public UserActivationException(final String message) {
        super(message);
    }

    public UserActivationException(final Throwable cause) {
        super(cause);
    }

}
