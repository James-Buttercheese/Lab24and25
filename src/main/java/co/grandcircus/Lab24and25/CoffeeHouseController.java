package co.grandcircus.Lab24and25;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;

import co.grandcircus.Lab24and25.User;
import co.grandcircus.Lab24and25.UserDao;
import co.grandcircus.Lab24and25.Products;
import co.grandcircus.Lab24and25.ProductsDao;


@Controller
public class CoffeeHouseController {

	@Autowired
	private UserDao userDao;

	@Autowired
	private ProductsDao productsDao;

	@RequestMapping("/")
	public ModelAndView main() {

		ModelAndView mav = new ModelAndView("main");

		return mav;
	}

	@RequestMapping("/register")

	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}

	@RequestMapping("/shop")
	public ModelAndView shop() {
		List<Products> products = productsDao.findAll();
		return new ModelAndView("shop", "products", products);
	}
	
	
	

	@RequestMapping("/notYet")
	public ModelAndView notYet() {

		ModelAndView mav = new ModelAndView("notYet");

		return mav;
	}
	
	@RequestMapping("/registered")
	public ModelAndView registered(User user) {
		userDao.create(user);
		ModelAndView mav = new ModelAndView("registered");
		return mav;
	}
	
//	@RequestMapping("/byName")
//	public ModelAndView byName(@RequestParam ("name") String name) {
//		
//		List<Products> names = productsDao.findByName(name);
//				
//		return new ModelAndView("byName", "names", names);
//	}
	

	
	

}
