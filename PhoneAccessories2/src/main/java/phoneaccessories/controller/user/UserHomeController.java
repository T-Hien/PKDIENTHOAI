package phoneaccessories.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import phoneaccessories.Utils.SecurityUtils;
import phoneaccessories.entity.Account;
import phoneaccessories.entity.Product;
import phoneaccessories.repository.CartRepository;
import phoneaccessories.repository.Cart_DetailRepository;
import phoneaccessories.repository.OrderRepository;
import phoneaccessories.repository.UserRepository;
import phoneaccessories.service.AccountService;
import phoneaccessories.service.CartDetailService;
import phoneaccessories.service.CartService;
import phoneaccessories.service.PaysService;
import phoneaccessories.service.PositionService;
import phoneaccessories.service.ProductService;
import phoneaccessories.service.UserService;
import phoneaccessories.service.Impl.AccountServiceImpl;

@Controller
@RequestMapping("/user")
public class UserHomeController {

	@Autowired
	private ProductService productService;

	@Autowired
	AccountServiceImpl accountServiceImpl;

	@Autowired
	AccountService accountService;

	@Autowired
	CartService cartservice;

	@Autowired
	CartRepository cartRpstr;

	@Autowired
	Cart_DetailRepository cart_DetailRepository;

	@Autowired
	CartDetailService cartDetailService;

	@Autowired
	UserService userSV;

	@Autowired
	OrderRepository orderRpstr;

	@Autowired
	PaysService paysSV;

	@Autowired
	PositionService poSV;

	@Autowired
	UserRepository userRpstr;

	@RequestMapping("/product")
	public ModelAndView getProductListByCategoryId(@RequestParam(value = "categoryId", required = false) String id) {
		ModelAndView mav = new ModelAndView("user/product");

		Account account = null;

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication.getName().equals("anonymousUser"))) {
			account = accountService.getAccountById(SecurityUtils.getPrincipal().getUsername());
			mav.addObject("account", account);
			System.out.println("dinh");
		} 
		
		List<Product> productList = new ArrayList<>();
		if (id == null) {
	        productList = productService.getListProduct();
	        System.out.println("AAa");
	        
	    } else {
	        productList = productService.getProductByCategoryId(id);
	        System.out.println("DĐ");
	    }
		mav.addObject("listProduct", productList);
		return mav;
	}
	
	/*
	 * @GetMapping("/findByTypeId") public ModelAndView
	 * getProductListByTypeId(@RequestParam(value = "typeId", required = false)
	 * String id) { ModelAndView mav = new ModelAndView("user/product");
	 * 
	 * 
	 * List<Product> productList = productService.getProductByTypeId(id);
	 * System.out.println("DĐ");
	 * 
	 * mav.addObject("listProduct", productList); return mav; }
	 */

	@GetMapping("/findbycenterprice")
	public ModelAndView filterByPriceRange(@RequestParam("price1") double price1,
			@RequestParam("price2") double price2) {
		List<Product> productList = productService.filterByPriceRange(price1, price2);
		ModelAndView mav = new ModelAndView("user/product");
		mav.addObject("listProduct", productList);
		return mav;
	}
	
	@GetMapping("/search")
	public String search(@RequestParam("keyword") String keyword, Model model) {
		List<Product> productList = productService.searchProductByName(keyword);
		model.addAttribute("listProduct", productList);

		return "user/product";
	}

	@GetMapping("/findprice")
	public ModelAndView filterByPrice(@RequestParam("price") double price) {
		List<Product> productList = productService.filterByPrice(price);
		ModelAndView mav = new ModelAndView("user/product");
		mav.addObject("listProduct", productList);
		return mav;
	}

	@GetMapping("/price")
	public ModelAndView getProductsBySortType(@RequestParam("sortType") String sortType) {
		List<Product> products = new ArrayList<>();
		if (sortType.equals("price-asc")) {
			products = productService.getProductsOrderByPriceAsc();
		} else if (sortType.equals("price-desc")) {
			products = productService.getProductsOrderByPriceDesc();
		} else if (sortType.equals("name-asc")) {
			products = productService.getProductsOrderByNameAsc();
		} else if (sortType.equals("name-desc")) {
			products = productService.getProductsOrderByNameDesc();
		}
		ModelAndView mv = new ModelAndView("user/product");
		mv.addObject("listProduct", products);
		return mv;
	}

	@RequestMapping(value = "/product_detail")
	public ModelAndView product_detail(@RequestParam(value = "id", required = false) String id) {
		ModelAndView mv = new ModelAndView("user/product_detail");
		List<Product> listProduct = new ArrayList<>();
		listProduct = productService.getListProduct();
		mv.addObject("listProduct", listProduct);

		Product product = productService.getProductById(id);
		mv.addObject("product", product);
		return mv;
	}
	
	@ModelAttribute("account")
	public Account showAccount() {
		Account account = null;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication.getName().equals("anonymousUser"))) {
			account = accountService.getAccountById(SecurityUtils.getPrincipal().getUsername());
			
		} 
		return account;
	}
}