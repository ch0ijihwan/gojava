package com.example.demo.member;

import com.example.demo.member.request.MemberRequestDto;
import com.example.demo.member.serivce.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/members")
public class
MemberController {

    private final MemberService memberService;

    @GetMapping("/add")
    public String addForm(@Validated @ModelAttribute("memberRequestDto") MemberRequestDto memberRequestDto, BindingResult bindingResult) {
        return "members/addMemberForm";
    }

    @PostMapping("/add")
    public String save(@Validated @ModelAttribute("memberRequestDto") MemberRequestDto memberRequestDto, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("bindingResult", bindingResult);
            return "members/addMemberForm";
        }
        memberService.save(memberRequestDto);
        return "redirect:/";
    }
}
