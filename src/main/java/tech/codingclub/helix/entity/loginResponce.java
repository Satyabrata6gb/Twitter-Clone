package tech.codingclub.helix.entity;

public class loginResponce {

    public Long id;
    public String message;
    public Boolean is_Loggedin;

    public loginResponce() {

    }

    public loginResponce(Long id, Boolean is_Loggedin, String message) {
        this.id = id;
        this.message = message;
        this.is_Loggedin = is_Loggedin;
    }

}
