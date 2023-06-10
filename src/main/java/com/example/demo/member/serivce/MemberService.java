package com.example.demo.member.serivce;

import com.example.demo.member.domain.Member;
import com.example.demo.member.repository.MemberRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService {
    private final MemberRepository memberRepository;

    public MemberService(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    @Transactional
    public void save(Member member) {
        memberRepository.save(member);
    }
}
