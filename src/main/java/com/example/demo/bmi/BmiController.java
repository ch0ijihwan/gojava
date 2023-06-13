package com.example.demo.bmi;

import com.example.demo.member.domain.Member;
import com.example.demo.web.resovler.Login;
import com.example.demo.workout.request.WorkoutRequestDto;
import com.example.demo.workout.response.WorkoutResponseDto;
import com.example.demo.workout.service.WorkoutService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/bmi")
public class BmiController {

    private final BmiService bmiService;

    public BmiController(BmiService bmiService) {
        this.bmiService = bmiService;
    }

    @GetMapping
    public String bmiForm(@ModelAttribute("addBmiForm") BmiRequestDto bmiRequestDto) {
        return "bmi/addBmiForm";
    }

    @PostMapping
    public String write(@Login Member member, @Validated @ModelAttribute BmiRequestDto bmiRequestDto, BindingResult bindingResult
            , Model model) {

        if (bindingResult.hasErrors()) {

            return "bmi/addBmiForm";
        }

        BmiResponseDto write = bmiService.write(bmiRequestDto, member);

        model.addAttribute("bmi", write);
        return "bmi/bmiResult";
    }

//    @GetMapping("/{bmiId}")
//    public String get(@PathVariable Long bmiId, Model model) {
//        BmiResponseDto bmiResponseDto = bmiService.get(bmiId);
//        model.addAttribute("bmi", bmiResponseDto);
//        return "bmi/showBmi";
//    }



    @GetMapping("/bmiResult")
    public String getBmi(Model model, @Login Member member) {
        List<BmiResponseDto> bmi = bmiService.getBmi(member);
        model.addAttribute("bmi", bmi);
        return "bmi/bmiResult";
    }
}
