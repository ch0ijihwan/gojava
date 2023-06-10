package com.example.demo.workout.domain;

import com.example.demo.member.domain.Member;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
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
        this.isDone = false;
    }

    public Workout() {

    }

    public Long getId() {
        return id;
    }

    public String getPart() {
        return part;
    }

    public String getSetCount() {
        return setCount;
    }

    public String getWeight() {
        return weight;
    }

    public int getCount() {
        return count;
    }

    public LocalDate getDate() {
        return date;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setDone(boolean done) {
        isDone = done;
    }
}
