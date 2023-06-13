package com.example.demo.bmi;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.LocalDate;


@AllArgsConstructor
@Getter
public class BmiRequestDto {

    private double weight;

    private double height;

    private LocalDate date;
}
