package com.example.demo.member;

import com.example.demo.member.request.MemberRequestDto;
import com.example.demo.member.serivce.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members")
public class MemberController {

    private MemberService memberService;

    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping("/add")
    public String addForm(@Validated @ModelAttribute("memberRequestDto") MemberRequestDto memberRequestDto, BindingResult bindingResult) {
        return "membe" +
                "rs/addMemberForm";
    }


    @PostMapping("/add")
    public String save(@Validated @ModelAttribute("memberRequestDto") MemberRequestDto memberRequestDto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "members/addMemberForm";
        }
        memberService.save(memberRequestDto);
        return "redirect:/";
    }
}
