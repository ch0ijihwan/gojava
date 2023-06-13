package com.example.demo.bmi;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@AllArgsConstructor
@Getter
@Setter
public class BmiRequestDto {

    private double weight;

    private double height;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;
}
