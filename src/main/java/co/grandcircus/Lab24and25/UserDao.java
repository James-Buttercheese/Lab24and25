package co.grandcircus.Lab24and25;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;




@Repository
public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbc;

public void create(User	user) {
		
		String sql = "INSERT INTO User(First_Name, Last_Name, Email, Phone_Number, Password) Values(?,?,?,?,?)";
		jdbc.update(sql, user.getfName(), user.getlName(), user.getEmail(), user.getpNumber(), user.getpWord());
		
	}
	
}
