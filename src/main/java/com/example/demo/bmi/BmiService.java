package com.example.demo.bmi;

import com.example.demo.member.domain.Member;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class BmiService {

    private final BmiRepository bmiRepository;

    public BmiService(BmiRepository bmiRepository) {

        this.bmiRepository = bmiRepository;
    }

    @Transactional
    public BmiResponseDto write(BmiRequestDto bmiRequestDto, Member member) {
        Bmi bmi = new Bmi(bmiRequestDto.getWeight(), bmiRequestDto.getHeight(), bmiRequestDto.getDate(), member);
        Bmi save = bmiRepository.save(bmi);
        double bmiRate = getBmiRate(save.getWeight(), save.getHeight());
        return new BmiResponseDto(save.getWeight(), save.getHeight(), bmiRate, save.getDate());
    }

    private double getBmiRate(double weight, double height) {
        return weight / ((height / 100) * (height / 100));
    }

    public BmiResponseDto get(Long workoutId) {
        Bmi bmi = bmiRepository.findById(workoutId)
                .orElseThrow(NullPointerException::new);
        double bmiRate = getBmiRate(bmi.getWeight(), bmi.getHeight());
        return new BmiResponseDto(bmi.getWeight(), bmi.getHeight(), bmiRate, bmi.getDate());

    }

    public List<BmiResponseDto> getBmi(Member member) {
        List<Bmi> byMember = bmiRepository.findByMember(member);
        return byMember.stream()
                .map(bmi -> new BmiResponseDto(bmi.getWeight(), bmi.getHeight(), getBmiRate(bmi.getWeight(), bmi.getHeight()), bmi.getDate()))
                .sorted(Comparator.comparing(BmiResponseDto::getDate))
                .collect(Collectors.toUnmodifiableList());
    }
}
