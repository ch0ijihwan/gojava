package com.example.demo.workout.response;

import java.time.LocalDate;

public class WorkoutResponseDto {

    private Long id;

    private String part;

    private String setCount;

    private String weight;

    private int count;

    private LocalDate date;

    private boolean done;

    public WorkoutResponseDto(Long id,String part, String setCount, String weight, int count, LocalDate date, boolean done) {
        this.id = id;
        this.part = part;
        this.setCount = setCount;
        this.weight = weight;
        this.count = count;
        this.date = date;
        this.done = done;
    }

    public Long getId() {
        return id;
    }

    public String getPart() {
        return part;
    }

    public String getSetCount() {
        return setCount;
    }

    public String getWeight() {
        return weight;
    }

    public int getCount() {
        return count;
    }

    public String getDate() {
        return date.toString();
    }

    public boolean isDone() {
        return done;
    }
}
