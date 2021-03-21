package com.enterprise.score.model;

import javax.persistence.*;

@Entity
@Table(name = "User")
public class User {

    private Long id;
    private String IdentityNu;
    private String NameSurname;
    private Long IncomeRangeId;
    private String Phone;
    private Long CityId;
    private int Score;
    public User(){

    }
    public User(String identityNu,String nameSurname){
        this.IdentityNu=identityNu;
        this.NameSurname=nameSurname;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }
    @Column(name = "IdentityNu", nullable = false)
    public String getIdentityNu() {
        return IdentityNu;
    }

    public void setIdentityNu(String identityNu) {
        IdentityNu = identityNu;
    }
    @Column(name = "NameSurname", nullable = false)
    public String getNameSurname() {
        return NameSurname;
    }

    public void setNameSurname(String nameSurname) {
        NameSurname = nameSurname;
    }
    @Column(name = "IncomeRangeId", nullable = false)
    public Long getIncomeRangeId() {
        return IncomeRangeId;
    }

    public void setIncomeRangeId(Long incomeRangeId) {
        IncomeRangeId = incomeRangeId;
    }
    @Column(name = "Phone", nullable = false)
    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }
    @Column(name = "CityId", nullable = false)
    public Long getCityId() {
        return CityId;
    }

    public void setCityId(Long cityId) {
        CityId = cityId;
    }

    public int getScore() {
        return Score;
    }
    @Column(name = "Score", nullable = false)
    public void setScore(int score) {
        Score = score;
    }
}
