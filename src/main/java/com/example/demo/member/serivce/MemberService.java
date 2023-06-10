package com.example.demo.member.serivce;

import com.example.demo.member.domain.Member;
import com.example.demo.member.repository.MemberRepository;
import com.example.demo.member.request.MemberRequestDto;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService {
    private final MemberRepository memberRepository;

    public MemberService(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    @Transactional
    public void save(MemberRequestDto memberDto) {
        Member member = new Member(memberDto.getLoginId(), memberDto.getName(), memberDto.getPassword());
        memberRepository.save(member);
    }
}
