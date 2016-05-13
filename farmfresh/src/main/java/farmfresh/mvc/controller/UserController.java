
package farmfresh.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

		
	@RequestMapping("/login")
	public ModelAndView  login() {
		
		return new ModelAndView("login");
		
	}
	
	@RequestMapping("/aboutus")
	public ModelAndView  aboutus() {
		
		return new ModelAndView("aboutus");
		
	}
	
	@RequestMapping("/contactus")
	public ModelAndView  contactus() {
		
		return new ModelAndView("contactus");
		
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
	
	@RequestMapping(value="/productinfo",method=RequestMethod.POST)
	public String  productInfo(@ModelAttribute("prod") Product product,BindingResult rs,ModelMap m) {
		m.addAttribute("product",product);
		return "productinfo";
		
	}	
}
