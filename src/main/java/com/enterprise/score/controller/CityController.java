package com.enterprise.score.controller;

import com.enterprise.score.exception.ResourceNotFoundException;
import com.enterprise.score.model.City;
import com.enterprise.score.model.User;
import com.enterprise.score.repository.CityRepository;
import com.enterprise.score.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class CityController {
    @Autowired
    private CityRepository cityRepository;
    @RequestMapping("/cityScore")
    public ResponseEntity<Integer> getCityScore(@PathVariable(value = "id") Long cityId) throws ResourceNotFoundException {
        City city = cityRepository.findById(cityId)
                .orElseThrow(() -> new ResourceNotFoundException("City not found for this id :: " + cityId));
        return ResponseEntity.ok().body(city.getScore());
    }
    @RequestMapping("/getAllCities")
    public List<City> cityList(){
        return cityRepository.findAll();
    }
}
