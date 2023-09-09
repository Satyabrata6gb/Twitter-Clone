package tech.codingclub.helix.entity;

public class TimeApi {

    public String time_str;
    public Long epoch_time;

    public TimeApi(){

    }

    public TimeApi(String time_str, Long epoch_time) {
        this.time_str = time_str;
        this.epoch_time = epoch_time;
    }
}
