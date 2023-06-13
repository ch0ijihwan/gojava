package com.example.demo.bmi;

import java.time.LocalDate;

public class BmiResponseDto {

    private Long id;

    public BmiResponseDto(Long id, double weight, double height, LocalDate date) {
        this.id = id;
        this.weight = weight;
        this.height = height;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    private double weight;

    private double height;

    private LocalDate date;
}
