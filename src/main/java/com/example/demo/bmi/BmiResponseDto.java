package com.example.demo.bmi;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.LocalDate;

@Getter
@AllArgsConstructor
public class BmiResponseDto {


    private double weight;

    private double height;

    private double bmiRate;

    private LocalDate date;
}
