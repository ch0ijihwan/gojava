package com.example.demo.workout.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
public class WorkoutRequestDto {

    private String part;

    private String setCount;

    private String weight;

    private int count;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

}
