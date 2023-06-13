package com.example.demo.workout.domain;

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
public class Workout {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    private String part;

    private String setCount;

    private String weight;

    private int count;

    private LocalDate date;

    private boolean isDone;

    @ManyToOne
    private Member member;

    public Workout(String part, String setCount, String weight, int count, LocalDate date, Member member) {
        this.part = part;
        this.setCount = setCount;
        this.weight = weight;
        this.count = count;
        this.date = date;
        this.member = member;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Workout workout = (Workout) o;

        return Objects.equals(id, workout.id);
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }
}
