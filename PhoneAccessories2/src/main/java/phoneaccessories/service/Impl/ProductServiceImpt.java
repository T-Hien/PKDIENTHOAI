package phoneaccessories.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.Category;
import phoneaccessories.entity.Product;
import phoneaccessories.repository.CategoryRepository;
import phoneaccessories.repository.ProductPepository;
import phoneaccessories.service.ProductService;

@Service
public class ProductServiceImpt implements ProductService{
	
	@Autowired
	private ProductPepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public void save(Product product) {
		Category category = categoryRepository.findOne(product.getCategory().getId());
		product.setStatus(true);
		product.setCategory(category);
		
		productRepository.save(product);
	}
	
	@Override
	public Product update(Product product,String id) {
		Product productold = productRepository.findOne(id);
		int num = productold.getNumber();
		productold = product;
		productold.setId(id);
		productold.setNumber(num);
		productold.setStatus(true);
		System.out.println(productold);
		return productRepository.save(productold);
		
		
		
	}
	@Override
	public List<Product> findAllByCategory_Id(String idc) {
		return productRepository.findAllByCategory_Id(idc);
	}
	@Override
	public List<Product> getListProduct() {
		return productRepository.findAll();
	}

	@Override
	public Product getProductById(String id) {
		return productRepository.findOne(id);
	}
	
	//THÊM

	@Override
	public List<Product> getProductByCategoryId(String id) {
        Category category = categoryRepository.findById(id);
        return category.getProducts();
	}

	@Override
	public List<Product> searchProductByName(String name) {
		// TODO Auto-generated method stub
		return productRepository.findByNameContaining(name);
	}

	@Override
	public List<Product> filterByPrice(double price) {
		// TODO Auto-generated method stub
		return productRepository.findByPriceLessThan(price);
	}

	@Override
	public List<Product> filterByPriceRange(double price1, double price2) {
		// TODO Auto-generated method stub
		return productRepository.findByPriceBetween(price1, price2);
	}

	@Override
	public List<Product> getProductsOrderByNameAsc() {
		// TODO Auto-generated method stub
		return productRepository.findAllByOrderByNameAsc();
	}

	@Override
	public List<Product> getProductsOrderByNameDesc() {
		// TODO Auto-generated method stub
		return productRepository.findAllByOrderByNameDesc();
	}

	@Override
	public List<Product> getProductsOrderByPriceAsc() {
		// TODO Auto-generated method stub
		return productRepository.findAllByOrderByPriceAsc();
	}

	@Override
	public List<Product> getProductsOrderByPriceDesc() {
		// TODO Auto-generated method stub
		return productRepository.findAllByOrderByPriceDesc();
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return productRepository.findAll(pageable);
	}

	
	

}
