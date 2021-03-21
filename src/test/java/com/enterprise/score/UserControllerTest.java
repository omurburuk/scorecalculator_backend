package com.enterprise.score;

import com.enterprise.score.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.*;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.client.HttpClientErrorException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = ScoreApplication.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserControllerTest {
    @Autowired
    private TestRestTemplate restTemplate;

    @LocalServerPort
    private int port;

    private String getRootUrl() {
        return "http://localhost:" + port;
    }

    @Test
    public void contextLoads() {

    }

    @Test
    public void testGetAlUser() {
        HttpHeaders headers = new HttpHeaders();
        HttpEntity<String> entity = new HttpEntity<String>(null, headers);

        ResponseEntity<String> response = restTemplate.exchange(getRootUrl() + "/users",
                HttpMethod.GET, entity, String.class);

        assertNotNull(response.getBody());
    }

    @Test
    public void testGetUserById() {
        User user = restTemplate.getForObject(getRootUrl() + "/getUser/1", User.class);
        System.out.println(user.getNameSurname());
        assertNotNull(user);
    }

    @Test
    public void testCreateEmployee() {
        User user = new User();
        user.setCityId(61L);
        user.setPhone("+905781231543");
        user.setIdentityNu("12345678901");
        user.setNameSurname("admin");
        user.setIncomeRangeId(5L);

        ResponseEntity<User> postResponse = restTemplate.postForEntity(getRootUrl() + "/saveUser", user, User.class);
        assertNotNull(postResponse);
        assertNotNull(postResponse.getBody());
    }
}