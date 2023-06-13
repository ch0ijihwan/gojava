package com.example.demo.member.request;

import lombok.AllArgsConstructor;
import lombok.Getter;

import javax.validation.constraints.Size;

@Getter
@AllArgsConstructor
public class MemberRequestDto {

    @Size(min = 2, max = 20)
    private String name;

    @Size(min = 5, max = 20)
    private String password;

    @Size(min = 4, max = 20)
    private String loginId;
}
