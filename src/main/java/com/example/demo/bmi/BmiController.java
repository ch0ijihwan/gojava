package com.example.demo.bmi;

import com.example.demo.member.domain.Member;
import com.example.demo.web.resovler.Login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/bmi")
public class BmiController {

    private final BmiService bmiService;

    public BmiController(BmiService bmiService) {
        this.bmiService = bmiService;
    }

    @GetMapping
    public String bmiForm(Model model) {
        model.addAttribute("bmiForm", new BmiRequestDto(0.0,0.0, LocalDate.now()));
        return "bmi/addBmiForm";
    }

    @PostMapping
    public String write(@Login Member member, @Valid @ModelAttribute("bmiForm") BmiRequestDto bmiRequestDto,
                        BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "bmi/addBmiForm";
        }
        bmiService.write(bmiRequestDto, member);

        List<BmiResponseDto> bmi = bmiService.getBmi(member);
        model.addAttribute("bmi", bmi);
        return "bmi/bmiResults";
    }


//    @GetMapping("/{bmiId}")
//    public String get(@PathVariable Long bmiId, Model model) {
//        BmiResponseDto bmiResponseDto = bmiService.get(bmiId);
//        model.addAttribute("bmi", bmiResponseDto);
//        return "bmi/showBmi";
//    }


    @GetMapping("/bmiResults")
    public String getBmi(Model model, @Login Member member) {
        List<BmiResponseDto> bmi = bmiService.getBmi(member);
        model.addAttribute("bmi", bmi);
        return "bmi/bmiResults";
    }
}
