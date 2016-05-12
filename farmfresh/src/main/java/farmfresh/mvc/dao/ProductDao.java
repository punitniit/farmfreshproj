package farmfresh.mvc.dao;

import java.util.List;

import farmfresh.mvc.model.Product;

public interface ProductDao {

	public int  getMaxId();
	public void  saveProduct(Product product);
	public void  deleteProduct(Product product);
	public void  updateProduct(Product product);
	public Product getProductById(int id);
	public List<Product> getAllProducts();
	
}
