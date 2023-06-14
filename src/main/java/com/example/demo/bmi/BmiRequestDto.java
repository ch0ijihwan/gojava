package com.example.demo.bmi;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Size;
import java.time.LocalDate;

@AllArgsConstructor
@Getter
@Setter
public class BmiRequestDto {

    @Size(min = 1, max = 300, message = "Please enter a valid weight.")
    private double weight;

    @Size(min = 1, max = 250, message = "Please enter a valid height.")
    private double height;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;
}
