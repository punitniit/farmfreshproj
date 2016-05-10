package farmfresh.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import farmfresh.mvc.dao.ProductDaoImpl;
import farmfresh.mvc.model.Product;

@Service("pservice")
public class ProductService {

	@Autowired
	ProductDaoImpl pdao;
	
	public void saveProduct(Product prod){
		
		pdao.saveProduct(prod);
		
	}
	
    public void deleteProduct(Product prod){
		
		pdao.deleteProduct(prod);
		
	}
    
    public void updateProduct(Product prod){
		
		pdao.updateProduct(prod);
		
	}
    
	
	public Product getProductById(int id){
		
		return pdao.getProductById(id);
		
	}
	
    public List<Product> getAllProducts(){
		
		return pdao.getAllProducts();
		
	}
}
