package com.example.demo.workout.request;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class WorkoutRequestDto {

    private String part;

    private String setCount;

    private String weight;

    private int count;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

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
}
