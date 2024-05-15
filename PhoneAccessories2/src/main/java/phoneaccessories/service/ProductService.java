package phoneaccessories.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import phoneaccessories.entity.Product;

public interface ProductService {
	void save(Product product);
	Product update(Product product,String id);
	List<Product> getListProduct();
	Product getProductById(String id);
	List<Product> findAllByCategory_Id(String idc);
	
	List<Product> getProductByCategoryId(String id);
	List<Product> searchProductByName(String name);
	
	List<Product> filterByPrice(double price);
	 
    List<Product> filterByPriceRange(double price1, double price2);
    
    List<Product> getProductsOrderByNameAsc();
    
    List<Product> getProductsOrderByNameDesc();
    
    List<Product> getProductsOrderByPriceAsc();
    
    List<Product> getProductsOrderByPriceDesc();
    Page<Product> findAll(Pageable pageable);
}
