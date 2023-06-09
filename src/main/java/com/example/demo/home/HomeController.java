package com.example.demo.home;

import com.example.demo.member.domain.Member;
import com.example.demo.web.resovler.Login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String homeLogin(@Login Member member, Model model) {
        //세션에 회원 데이터가 없으면 home
        if (member == null) {
            return "home";
        }

        //세션이 유지 되면 로그인 이동
        model.addAttribute("member", member);
        return "loginHome";
    }
}
