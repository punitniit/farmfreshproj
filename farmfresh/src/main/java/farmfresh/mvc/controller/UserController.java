
package farmfresh.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import farmfresh.mvc.model.Product;
import farmfresh.mvc.service.ProductService;

@Controller
public class UserController {

	@Autowired
	ProductService pservice;
	
	@RequestMapping("/")
	public ModelAndView  welcome() {
		
		return new ModelAndView("index");
		
	}

		
	@RequestMapping("/loginpage")
	public ModelAndView  login() {
		
		return new ModelAndView("loginpage");
		
	}
	
	@RequestMapping("/logfail")
	public ModelAndView  errorPage() {
		
		return new ModelAndView("logfail");
		
	}
	
	@RequestMapping("/logout")
	public ModelAndView  logout() {
		
		return new ModelAndView("index");
		
	}
	
	@RequestMapping("/register")
	public ModelAndView  register() {
		
		return new ModelAndView("register");
		
	}
	
	@RequestMapping("/products")
	public ModelAndView  productsList() {
		
		List<Product> listofprod = pservice.getAllProducts();
		String products = null;
		
		if(listofprod != null){
			
			Gson gs = new Gson();
			String json = gs.toJson(listofprod);
			System.out.println(json.toString());
			products = json.toString();
			
		}
		
		return new ModelAndView("products","fetchproducts",products);
		
	}
	
	@RequestMapping("/productinfo")
	public ModelAndView  productInfo(@ModelAttribute("prod") Product product) {
		
		return new ModelAndView("productinfo");
		
	}	
}
