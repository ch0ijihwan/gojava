package com.example.demo.member.request;

import javax.validation.constraints.Size;

public class MemberRequestDto {

    @Size(min = 2, max = 20)
    private String name;

    @Size(min = 5, max = 20)
    private String password;

    @Size(min = 4, max = 20)
    private String loginId;

    public MemberRequestDto(String name, String password, String loginId) {
        this.name = name;
        this.password = password;
        this.loginId = loginId;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getLoginId() {
        return loginId;
    }
}
