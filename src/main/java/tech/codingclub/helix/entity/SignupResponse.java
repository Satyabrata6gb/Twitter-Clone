package tech.codingclub.helix.entity;

public class SignupResponse {

    public String message;
    public boolean use_created;

    public SignupResponse(String message, boolean use_created) {
        this.message = message;
        this.use_created = use_created;
    }
}
