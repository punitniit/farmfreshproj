package farmfresh.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import farmfresh.mvc.model.Cart;

@Controller
public class ShoppingCartController {

@RequestMapping("/order")	
public Cart	 initFlow() {
		
	return new Cart();
	
}
	
}
