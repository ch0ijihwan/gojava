package com.example.demo.workout.service;

import com.example.demo.workout.response.WorkoutResponseDto;
import com.example.demo.member.domain.Member;
import com.example.demo.workout.domain.Workout;
import com.example.demo.workout.repository.WorkoutRepository;
import com.example.demo.workout.request.WorkoutRequestDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class WorkoutService {

    private final WorkoutRepository workoutRepository;

    public WorkoutService(WorkoutRepository workoutRepository) {
        this.workoutRepository = workoutRepository;
    }

    public Long write(WorkoutRequestDto workoutRequestDto, Member member) {
        Workout workout = new Workout(workoutRequestDto.getPart(), workoutRequestDto.getSetCount(), workoutRequestDto.getWeight()
                , workoutRequestDto.getCount(), workoutRequestDto.getDate(), member);
        workoutRepository.save(workout);
        return workout.getId();
    }

    public WorkoutResponseDto get(Long workoutId) {
        Workout workout = workoutRepository.findById(workoutId)
                .orElseThrow(NullPointerException::new);

        return new WorkoutResponseDto(workout.getPart(), workout.getSetCount(), workout.getWeight(),
                workout.getCount(), workout.getDate(), workout.isDone());

    }

    public void complete(Long workoutId, Member member) {
        Workout workout = workoutRepository.findById(workoutId)
                .orElseThrow(NullPointerException::new);
        if (member.equals(workout.getMember())) {
            workout.setDone(true);
        }
    }

    public List<WorkoutResponseDto> getWorkouts(Member member) {
        List<Workout> byMember = workoutRepository.findByMember(member);
        return byMember.stream()
                .map(workout -> new WorkoutResponseDto(workout.getPart(), workout.getSetCount(), workout.getWeight()
                        , workout.getCount(), workout.getDate(), workout.isDone()))
                .collect(Collectors.toUnmodifiableList());
    }
}
