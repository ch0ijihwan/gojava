package com.example.demo.workout.response;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.LocalDate;

@Getter
@AllArgsConstructor
public class WorkoutResponseDto {

    private Long id;

    private String part;

    private String setCount;

    private String weight;

    private int count;

    private LocalDate date;

    private boolean done;
}
