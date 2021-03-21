package com.enterprise.score.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "City")
public class City {
    int id;
    String name;
    int score;
    public City(){

    }
    public City(int id, String name, int score){
        this.id=id;
        this.name=name;
        this.score=score;
    }

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "Name", nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name = "Score", nullable = false)
    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }


}
