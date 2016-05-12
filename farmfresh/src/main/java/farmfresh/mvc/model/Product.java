package farmfresh.mvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Cascade;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="productdetails")
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="prod_id")
	private int prod_id;

	@Size(min=5,max=10,message="enter broduct name having letters between 5 to 10")
	private String prod_name;
    @NotNull
	private int prod_price;
    @NotNull
	private String prod_type;
    @NotNull
	private String prod_category;

	@Transient
	private MultipartFile img;
    
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String prod_name, int prod_price, String prod_type, String prod_category) {
		
		this.prod_name = prod_name;
		this.prod_price = prod_price;
		this.prod_type = prod_type;
		this.prod_category = prod_category;
		
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public int getProd_price() {
		return prod_price;
	}

	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}

	public String getProd_type() {
		return prod_type;
	}
	
	public void setProd_type(String prod_type) {
		this.prod_type = prod_type;
	}
	
	public String getProd_category() {
		return prod_category;
	}

	public void setProd_category(String prod_category) {
		this.prod_category = prod_category;
	}
	
	public void setImg(MultipartFile img) {
		this.img = img;
	}
	
	public MultipartFile getImg() {
		return img;
	}
}
