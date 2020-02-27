package co.grandcircus.Lab24and25.daos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.Lab24and25.objects.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbc;

	public void create(User user) {

		String sql = "INSERT INTO User(First_Name, Last_Name, Email, Phone_Number, Password) Values(?,?,?,?,?)";
		jdbc.update(sql, user.getfName(), user.getlName(), user.getEmail(), user.getpNumber(), user.getpWord());

	}

	public List<User> findByName(String First_Name) {
		String sql = "SELECT * FROM User WHERE First_Name = ?";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(User.class), First_Name);

	}
}
