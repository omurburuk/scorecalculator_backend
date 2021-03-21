package com.enterprise.score.controller;

import com.enterprise.score.model.IncomeRange;
import com.enterprise.score.repository.IncomeRangeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class IncomeRangeController {
    @Autowired
    private IncomeRangeRepository incomeRangeRepository;
    @GetMapping("/getAllRanges")
    public List<IncomeRange> getAllRanges() {
        return incomeRangeRepository.findAll();
    }
}
