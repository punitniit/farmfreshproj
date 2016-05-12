package farmfresh.mvc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farmfresh.mvc.model.Product;

@Repository("pdao")
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory factory;
		
	public Session	getSession() {
		
		Session sess = factory.openSession();
		return sess;
		
	}
	
	public void saveProduct(Product product) {
		
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		session.save(product);
		
		tx.commit();
		session.close();
		
	}

	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		session.delete(product);
		
		tx.commit();
		session.close();
		
	}

	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		session.update(product);
		
		tx.commit();
		session.close();
		
	}

	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		Product prod = (Product) session.get(Product.class, id);
				
			tx.commit();
			session.close();
			return prod;
	
	}
		
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from Product");
		List<Product> products = null;
				
		if(query != null){
			
		products = (List<Product>)query.list();	
			
		}
						
		tx.commit();
		session.close();
		return products;
		
	}

	public int getMaxId() {
	
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Product> list =session.createQuery("FROM Product WHERE pid = (SELECT MAX(pid) FROM Product)").list();
		int y=list.get(0).getProd_id();
		System.out.println("MAX:ID: "+y);
		tx.commit();
		session.close();
		return y;
		
	}
}
