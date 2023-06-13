package com.example.demo.workout.repository;

import com.example.demo.member.domain.Member;
import com.example.demo.workout.domain.Workout;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface
WorkoutRepository extends JpaRepository<Workout, Long> {

    List<Workout> findByMember(Member member);

}
