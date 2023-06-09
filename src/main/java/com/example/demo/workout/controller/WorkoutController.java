package com.example.demo.workout.controller;

import com.example.demo.member.domain.Member;
import com.example.demo.web.resovler.Login;
import com.example.demo.workout.request.WorkoutRequestDto;
import com.example.demo.workout.response.WorkoutResponseDto;
import com.example.demo.workout.service.WorkoutService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/workout")
public class WorkoutController {

    private final WorkoutService workoutService;

    public WorkoutController(WorkoutService workoutService) {
        this.workoutService = workoutService;
    }

    @PostMapping
    public Long write(@Login Member member, @Validated @RequestBody WorkoutRequestDto workoutRequestDto) {
        return workoutService.write(workoutRequestDto, member);
    }

    @GetMapping("/{workoutId}")
    public String get(@PathVariable Long workoutId, Model model) {
        WorkoutResponseDto workoutResponseDto = workoutService.get(workoutId);
        model.addAttribute("workout", workoutResponseDto);
        return "workout";
    }


    @PostMapping("/{workoutId}/done")
    public ResponseEntity<WorkoutResponseDto> done(@PathVariable Long workoutId, @Login Member member) {
        workoutService.complete(workoutId, member);

        return ResponseEntity.ok()
                .build();
    }

    @GetMapping("/workouts")
    public String getWorkouts(Model model, @Login Member member) {
        List<WorkoutResponseDto> workouts = workoutService.getWorkouts(member);
        model.addAttribute("workouts", workouts);
        return "workout/workouts";
    }
}
