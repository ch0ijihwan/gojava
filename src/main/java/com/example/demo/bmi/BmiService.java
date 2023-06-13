package com.example.demo.bmi;

import com.example.demo.member.domain.Member;
import com.example.demo.bmi.Bmi;
import com.example.demo.bmi.BmiRequestDto;
import com.example.demo.bmi.BmiResponseDto;
import com.example.demo.bmi.BmiService;


import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class BmiService {

    private final BmiRepository bmiRepository;

    public BmiService(BmiRepository bmiRepository) {

        this.bmiRepository = bmiRepository;
    }

    public BmiResponseDto write(BmiRequestDto bmiRequestDto, Member member) {
        Bmi bmi = new Bmi(bmiRequestDto.getWeight(), bmiRequestDto.getHeight(), bmiRequestDto.getDate());
        Bmi save = bmiRepository.save(bmi);
        return new BmiResponseDto(save.getId(), save.getWeight(), save.getHeight(), save.getDate());
    }

    public BmiResponseDto get(Long workoutId) {
        Bmi bmi = bmiRepository.findById(workoutId)
                .orElseThrow(NullPointerException::new);

        return new BmiResponseDto(bmi.getId(), bmi.getWeight(), bmi.getHeight(), bmi.getDate());

    }

    public List<BmiResponseDto> getBmi(Member member) {
        List<Bmi> byMember = bmiRepository.findByMember(member);
        return byMember.stream()
                .map(bmi -> new BmiResponseDto(bmi.getId(), bmi.getWeight(), bmi.getHeight(), bmi.getDate()))
                .sorted(Comparator.comparing(BmiResponseDto::getDate))
                .collect(Collectors.toUnmodifiableList());
    }
}
