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
}
