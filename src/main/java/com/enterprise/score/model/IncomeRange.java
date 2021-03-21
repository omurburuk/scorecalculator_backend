package com.enterprise.score.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "IncomeRange")
public class IncomeRange {

    private Long id;
    private String IncomeRange;
    private int Factor;

    public int getFactor() {
        return Factor;
    }

    public void setFactor(int factor) {
        Factor = factor;
    }

    public String getIncomeRange() {
        return IncomeRange;
    }

    public void setIncomeRange(String incomeRange) {
        IncomeRange = incomeRange;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Id
    public Long getId() {
        return id;
    }
}
