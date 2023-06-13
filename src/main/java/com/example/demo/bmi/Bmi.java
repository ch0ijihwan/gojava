package com.example.demo.bmi;

import com.example.demo.member.domain.Member;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
public class Bmi {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;


    private double weight;

    private double height;

    private LocalDate date;

    @ManyToOne
    private Member member;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bmi bmi = (Bmi) o;
        return Objects.equals(id, bmi.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setWeight(double weight) {
        this.weight = weight;
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

    public Bmi(double weight, double height, LocalDate date) {
        this.weight = weight;
        this.height = height;
        this.date = date;
    }

    public Bmi() {
    }

    public Long getId() {
        return id;
    }


    public double getWeight() {
        return weight;
    }

    public double getHeight() {
        return height;
    }


    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }


}
