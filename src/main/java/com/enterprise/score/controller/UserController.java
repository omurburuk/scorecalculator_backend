package com.enterprise.score.controller;

import com.enterprise.score.exception.ResourceNotFoundException;
import com.enterprise.score.model.User;
import com.enterprise.score.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    private UserRepository userRepository;

    public UserController() {
    }

    @RequestMapping("/saveUser")
    public User saveUser(@RequestBody User user){
        return userRepository.save(user);
    }

    @RequestMapping("/getUser")
    public ResponseEntity<User> getUser(@PathVariable(value = "id") Long userId) throws ResourceNotFoundException {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found for this id :: " + userId));
        return ResponseEntity.ok().body(user);
    }
    @RequestMapping("/getUserScore")
    public ResponseEntity<User> getUserScore(@PathVariable(value = "id") Long userId) throws ResourceNotFoundException {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found for this id :: " + userId));
        return ResponseEntity.ok().body(user);
    }
}
