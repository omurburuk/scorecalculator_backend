package com.enterprise.score.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Score")
public class Score {
    private Long id;
    private Long userId;
    private int total;

    @Column(name = "UserId", nullable = false)
    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
    @Column(name = "Total", nullable = false)
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }



    public void setId(Long id) {
        this.id = id;
    }

    @Id
    public Long getId() {
        return id;
    }
}
