package co.grandcircus.Lab24and25;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import co.grandcircus.Lab24and25.daos.ProductRepository;
import co.grandcircus.Lab24and25.daos.ProductsDao;
import co.grandcircus.Lab24and25.daos.UserDao;
import co.grandcircus.Lab24and25.objects.Products;
import co.grandcircus.Lab24and25.objects.User;

@Controller
public class CoffeeHouseController {

	@Autowired
	ProductRepository productsRepo;

	@Autowired
	private HttpSession sesh;

	@Autowired
	private UserDao userDao;

//	@Autowired
//	private ProductsDao productsDao;

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
		List<Products> products = productsRepo.findAll();
		return new ModelAndView("shop", "products", products);
	}

	@RequestMapping("/shop/favorite")
	public ModelAndView shopAdd(@RequestParam("id") Long id, @SessionAttribute(name = "products", required = false) List<Products> products) {

		

		if (products != (null)) {
			products = (List<Products>) sesh.getAttribute("products");
			sesh.removeAttribute("products");
			products.add(productsRepo.findById(id).orElse(null));
			sesh.setAttribute("products", products);
		} else {
			List<Products> pducts = new ArrayList<>();
			pducts.add(productsRepo.findById(id).orElse(null));
			sesh.setAttribute("products", pducts);
			}

		return new ModelAndView("redirect:/shop");
	}

	@RequestMapping("/favorites")
	public ModelAndView favorites(@SessionAttribute(name = "products", required = false) List<Products> products) {

		ModelAndView mav = new ModelAndView("favorites");

		if (products != null) {
			mav.addObject("products", products);
		}

		return mav;
	}

	@RequestMapping("/admin")
	public ModelAndView admin() {

		ModelAndView mav = new ModelAndView("admin");

		return mav;
	}

	@RequestMapping("/adminTable")
	public ModelAndView adminTable() {
		List<Products> products = productsRepo.findAll();
		return new ModelAndView("adminTable", "products", products);
	}

	@RequestMapping("/adminTable/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		productsRepo.deleteById(id);
		return new ModelAndView("redirect:/adminTable");
	}

	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam("id") Long id) {
		return new ModelAndView("edit", "product", productsRepo.findById(id).orElse(null));
	}

	@PostMapping("/edit/confirm")
	public ModelAndView editConfirm(Products product) {
		productsRepo.save(product);
		return new ModelAndView("redirect:/adminTable");
	}

	@PostMapping("/add/confirm")
	public ModelAndView addConfirm(Products product) {
		productsRepo.save(product);
		return new ModelAndView("redirect:/adminTable");
	}

	@RequestMapping("/add")
	public ModelAndView add() {

		ModelAndView mav = new ModelAndView("add");

		return mav;
	}

	@RequestMapping("/registered")
	public ModelAndView registered(User user) {
		userDao.create(user);
		return new ModelAndView("registered", "user", user);
	}

	@RequestMapping("/byName")
	public ModelAndView byName(@RequestParam("name") String name) {
		List<Products> names = productsRepo.findByNameContainsIgnoreCase(name);
		return new ModelAndView("byName", "names", names);
	}

//	@RequestMapping("/byName")
//	public ModelAndView byName(@RequestParam ("name") String name) {
//		
//		List<Products> names = productsDao.findByName(name);
//				
//		return new ModelAndView("byName", "names", names);
//	}

}
