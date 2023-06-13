package com.example.demo.bmi;

import com.example.demo.member.domain.Member;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Bmi {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;


    private double weight;

    private double height;

    private LocalDate date;

    @ManyToOne(fetch = FetchType.EAGER)
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

    public Bmi(double weight, double height, LocalDate date, Member member) {
        this.weight = weight;
        this.height = height;
        this.date = date;
        this.member = member;
    }
}
