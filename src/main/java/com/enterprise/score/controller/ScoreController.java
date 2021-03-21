package com.enterprise.score.controller;

import com.enterprise.score.exception.ResourceNotFoundException;
import com.enterprise.score.model.City;
import com.enterprise.score.model.IncomeRange;
import com.enterprise.score.model.Score;
import com.enterprise.score.model.User;
import com.enterprise.score.repository.CityRepository;
import com.enterprise.score.repository.IncomeRangeRepository;
import com.enterprise.score.repository.ScoreRepository;
import com.enterprise.score.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
public class ScoreController {

    // dokümanda yer alan tckimlik numarasına bağlı score segment servisi ucu açık olduğu için User tablosunda bu değeri tutarak
    // sonuç hesaplaması üzerinde kullandık.
    @Autowired
    private ScoreRepository scoreRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    private IncomeRangeRepository incomeRangeRepository;
    @RequestMapping("/calculateAndSaveScore")
    public ResponseEntity<Integer> calculateAndSaveScore(@PathVariable(value = "id") Long userId) throws ResourceNotFoundException {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found for this id :: " + userId));

        City city = cityRepository.findById(user.getCityId())
                .orElseThrow(() -> new ResourceNotFoundException("City not found for this id :: " + user.getCityId()));

        IncomeRange incomeRange = incomeRangeRepository.findById(user.getIncomeRangeId())
                .orElseThrow(() -> new ResourceNotFoundException("IncomeRange not found for this id :: " + user.getIncomeRangeId()));
        Score score=new Score();
        score.setUserId(user.getId());
        score.setTotal(user.getScore()*incomeRange.getFactor()+city.getScore());
        score = scoreRepository.save(score);

        return ResponseEntity.ok().body(score.getTotal());
    }
    @RequestMapping("/getAllScores")
    public List<Score> scoreList(){
        return scoreRepository.findAll();
    }
}