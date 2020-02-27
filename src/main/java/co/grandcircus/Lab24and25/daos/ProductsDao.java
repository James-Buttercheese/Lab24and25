package co.grandcircus.Lab24and25.daos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.Lab24and25.objects.Products;



@Repository
public class ProductsDao {
	
	@Autowired
	private JdbcTemplate jdbc;

	
	public List<Products> findAll() {
		String sql = "SELECT * FROM Products";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Products.class) );
		
	}
	
	public List<Products> findByName(String name) {
		name=name.substring(0,1).toUpperCase() + name.substring(1,name.length()).toLowerCase();
		String regex = "%" + name + "%";
		String sql = "SELECT * FROM Products WHERE name LIKE ?";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Products.class), regex);

	}
	
	
	
	
}
