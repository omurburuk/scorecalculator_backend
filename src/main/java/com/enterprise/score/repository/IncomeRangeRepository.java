package com.enterprise.score.repository;

import com.enterprise.score.model.IncomeRange;
import com.enterprise.score.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IncomeRangeRepository extends JpaRepository<IncomeRange, Long> {

}