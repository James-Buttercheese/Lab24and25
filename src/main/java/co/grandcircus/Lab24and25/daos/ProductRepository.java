package co.grandcircus.Lab24and25.daos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.Lab24and25.objects.Products;

public interface ProductRepository extends JpaRepository <Products, Long> {
	
	List<Products> findByNameContainsIgnoreCase(String name);

}
