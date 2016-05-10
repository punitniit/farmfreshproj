package farmfresh.mvc.controller;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import farmfresh.mvc.model.Product;
import farmfresh.mvc.service.ProductService;

@Controller
public class AdminController {
	
	@Autowired
	ProductService pservice;
	
	@RequestMapping("/adminpage")
	public String adminPage(@ModelAttribute("product") Product product,Model model) {
		model.addAttribute("product", new Product());
		 ArrayList<Product> p= (ArrayList<Product>) pservice.getAllProducts();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("ajson: "+json);
			model.addAttribute("list",json);
		return "admin";
	}
	
    @RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
    public String saveProduct(@Valid @ModelAttribute("product") Product product,BindingResult result, ModelMap model) {
    	
    	if(result.hasErrors()){
    		
    		ArrayList<Product> p= (ArrayList<Product>) pservice.getAllProducts();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("ajson: "+json);
			model.addAttribute("list",json);
    		return "admin";
    		
    	}
    	
    	if(product.getProd_id()	== 0){
	          
    		  model.addAttribute("product", product);
    	      //boolean x=service.addProduct(product);
       		   pservice.saveProduct(product);
    	       ArrayList<Product> p= (ArrayList<Product>) pservice.getAllProducts();
    			Gson gson=new Gson();
    			String json=gson.toJson(p);
    			System.out.println("ajson: "+json);
    			model.addAttribute("list",json);
    	       	        
    	   
        }else{
           
        	model.addAttribute("product", product);
            //boolean x=service.updateProduct(product);
        	pservice.updateProduct(product);
            ArrayList<Product> p= (ArrayList<Product>) pservice.getAllProducts();
      		Gson gson=new Gson();
      		String json=gson.toJson(p);
      		System.out.println("ajson: "+json);
      		model.addAttribute("list",json);
            
              return "admin";
            
        }
    	return "admin";
    }
    
    @RequestMapping(value = "/deleteproduct", method = RequestMethod.POST)
    public String deleteProduct(@ModelAttribute("product")Product product,BindingResult result, ModelMap model) {
      model.addAttribute("product", product);
      //boolean x=service.deleteProduct(product);
      pservice.deleteProduct(product);
      ArrayList<Product> p= (ArrayList<Product>) pservice.getAllProducts();
		Gson gson=new Gson();
		String json=gson.toJson(p);
		System.out.println("ajson: "+json);
		model.addAttribute("list",json);
      //if(x)
        return "admin";
      //else
      //	  return null;
    }
    
    @RequestMapping(value = "/editproduct", method = RequestMethod.POST)
    public String edit(@ModelAttribute("product")Product product,BindingResult result, ModelMap model) {
      model.addAttribute("product", product);
       
        ArrayList<Product> p= (ArrayList<Product>) pservice.getAllProducts();
		Gson gson=new Gson();
		String json=gson.toJson(p);
		System.out.println("ajson: "+json);
		model.addAttribute("list",json);
		Gson g=new Gson();
		String j=g.toJson(product);
		model.addAttribute("alist",json);
        return "admin";
    }
}


