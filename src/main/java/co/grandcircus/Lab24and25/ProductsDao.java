package co.grandcircus.Lab24and25;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;



@Repository
public class ProductsDao {
	
	@Autowired
	private JdbcTemplate jdbc;

	
	public List<Products> findAll() {
		String sql = "SELECT * FROM Products";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Products.class) );
		
	}
	
//	public List<Products> findByName(String name) {
//		String sql = "SELECT * FROM Products WHERE name = ?";
//		return jdbc.query(sql, new BeanPropertyRowMapper<>(Products.class), name);
//
//	}
}
