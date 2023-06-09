package com.example.demo.workout.response;

import java.time.LocalDate;

public class WorkoutResponseDto {

    private String part;

    private String setCount;

    private String weight;

    private int count;

    private LocalDate date;

    private boolean done;

    public WorkoutResponseDto(String part, String setCount, String weight, int count, LocalDate date, boolean done) {
        this.part = part;
        this.setCount = setCount;
        this.weight = weight;
        this.count = count;
        this.date = date;
        this.done = done;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }

    public String getSetCount() {
        return setCount;
    }

    public void setSetCount(String setCount) {
        this.setCount = setCount;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
}
