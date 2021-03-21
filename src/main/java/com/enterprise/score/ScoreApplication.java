package com.enterprise.score;

import com.enterprise.score.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

@SpringBootApplication
public class ScoreApplication implements CommandLineRunner {
	//@Autowired
	//private JdbcTemplate jdbcTemplate;
	public static void main(String[] args) {
		SpringApplication.run(ScoreApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		/*String sql = "SELECT * FROM User";
		List<User> customers = jdbcTemplate.query(sql,
				BeanPropertyRowMapper.newInstance(User.class));

		customers.forEach(System.out :: println);*/
	}
}
