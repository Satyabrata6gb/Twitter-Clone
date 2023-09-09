package tech.codingclub.helix.entity;

public class TweetUI extends Tweet {

    public String name;
    public String email;
    public TweetUI(Tweet tweet, Member member) {
        this.message = tweet.message;
        this.id = tweet.id;
        this.created_at = tweet.created_at;
        this.author_id = tweet.author_id;
        this.name = member.name;
        this.email = member.email;
    }
}
