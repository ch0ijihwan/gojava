package com.example.demo.bmi;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@AllArgsConstructor
@Getter
@Setter
public class BmiRequestDto {

    private double weight;

    private double height;

    private LocalDate date;
}
