package farmfresh.mvc.service;

import org.springframework.stereotype.Component;

import farmfresh.mvc.model.Cart;

@Component
public class CartService {

	public Cart initFlow(){	
		System.out.println("Cart Initialized");
		return new Cart();
	}
}
