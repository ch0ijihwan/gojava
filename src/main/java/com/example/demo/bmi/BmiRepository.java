package com.example.demo.bmi;

import com.example.demo.member.domain.Member;
import com.example.demo.workout.domain.Workout;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface BmiRepository extends JpaRepository<Bmi, Long> {
    List<Bmi> findByMember(Member member);

}


