package com.enterprise.score.repository;

import com.enterprise.score.model.Score;
import com.enterprise.score.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ScoreRepository extends JpaRepository<Score, Long> {

}