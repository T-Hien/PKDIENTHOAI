package phoneaccessories.controller.user;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import phoneaccessories.Utils.SecurityUtils;
import phoneaccessories.dto.MyUser;
import phoneaccessories.entity.Account;
import phoneaccessories.entity.CardDetail;
import phoneaccessories.entity.CardDetailPk;
import phoneaccessories.entity.Cart;
import phoneaccessories.entity.Order;
import phoneaccessories.entity.Pays;
import phoneaccessories.entity.Product;
import phoneaccessories.entity.User;
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

@RestController
@Controller
@RequestMapping("/cart-pay")
public class UserCartController {
	private String a;
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
	
	@Autowired
	private ProductService productService;
	
	private String newCart;
	@RequestMapping("/addProduct")
	public ModelAndView cart(HttpSession session, @RequestParam(name ="id") String id) {
	    ModelAndView mv = new ModelAndView("redirect:/cart-pay/cart");
	    MyUser myUser = SecurityUtils.getPrincipal();
		if (myUser != null) {
		    Account account = accountService.findByUsername(SecurityUtils.getPrincipal().getUsername());
		    Account account1 = accountServiceImpl.getAccountById(account.getUsername());
		    User user = account1.getUser();
		    Cart cart;
		    List<Cart> carts = cartservice.getCartByUser(user);
		    if (carts.isEmpty()) {
		        cart = new Cart();
		        User user1 = userSV.getUserById(user.getId());
		        Long cartCount = cartRpstr.countCartById();
		        Long newCount = cartCount + 1;
		        String count = newCount.toString();
		        cart.setId(count);
		        cart.setUser(user1);
		        cartRpstr.save(cart);
		        newCart = count;
		    } else {
		        cart = carts.get(carts.size() - 1); // Lấy giỏ hàng cuối cùng trong danh sách giỏ hàng
		        newCart = cart.getId();
		    }

		    a = account.getUsername(); // Đã thêm kiểu dữ liệu String
		    Account account11 = accountServiceImpl.getAccountById(a);

		    Product product = productService.getProductById(id);

		    CardDetailPk ids = new CardDetailPk(cart.getId(), product.getId());
		    int count = 1;

		    CardDetail existingCardDetail = cartDetailService.getCardDetailByIds(ids);
		    if (existingCardDetail != null) {
		        String message = "Sản phẩm đã tồn tại trong giỏ hàng.";
		        mv.addObject("message", message); 
		    } else {
		        CardDetail cardDetail = new CardDetail(ids, count, product, cart);
		        cartDetailService.save(cardDetail);
		    }
		    List<CardDetail> listcart = cart_DetailRepository.findByCartId(cart.getId());
		    mv.addObject("listCart", listcart);
	    }
	    else 
	    {
	    	return new ModelAndView("redirect:/login");
	    }
	    

	    return mv;
	}
	
	//GIO HANG
	@RequestMapping("/cart")
	public ModelAndView listCart1(HttpSession session) {
		ModelAndView mv = new ModelAndView("cart-pay/cart");	
		MyUser myUser = SecurityUtils.getPrincipal();
		if (myUser != null) {
			Account account = accountService.findByUsername(SecurityUtils.getPrincipal().getUsername());
			a = account.getUsername();
			Account account1 = accountServiceImpl.getAccountById(a);
			List<Cart> lc = cartservice.getCartByUser(account1.getUser());
			int size = lc.size();
			String b = "0";
			if(size==0) {
				Cart cart = new Cart();
				User user1 = userSV.getUserById(account1.getUser().getId());
				Long cart1 = cartRpstr.countCartById();
				Long newcount = cart1 +1;
				String count = newcount.toString();
				cart.setId(count);
				cart.setUser(user1);
				cartRpstr.save(cart);
				newCart = count;
				System.out.println("GH"+count);
			}
			else if(newCart !=null) {
				b = newCart;
			}
			else {
				for(int k = 0; k<lc.size();k++) {
					Cart c = lc.get(k);
				    String idcart = c.getId();
				    if(k==lc.size()-1) {
				    	b = idcart;
				    }
				}
				newCart = b;
			}
			List<CardDetail> listCart = cart_DetailRepository.findByCartId(b);
			mv.addObject("listCart", listCart);
			User user = userSV.getUserById(account1.getUser().getId());
			mv.addObject("User", user);
			return mv;
		} else {
			mv.setViewName("cart-pay/cart");
		    return mv;
		}	
	}
	
	@PostMapping("/cart/upanddown")
	public ModelAndView upanddown(@RequestParam("cartDetailId") String cartDetailId,
	                                      @RequestParam("productId") String productId,
	                                      @RequestParam("newQuantity") int newQuantity) {

		ModelAndView mv = new ModelAndView();
		Account account = accountServiceImpl.getAccountById(a);
		Cart cart = cartservice.getCartbyUserAndIdCart(account.getUser(),newCart);
		int quantity = newQuantity;
		cartDetailService.updateQuantityByProductIdAndCartId(productId, cartDetailId, quantity);
		List<CardDetail> listcart = cart_DetailRepository.findByCartId(cart.getId());

		mv.addObject("listCart", listcart);
	    mv.setViewName("redirect:/cart-pay/cart");
	    return mv;
	} 
	
	@PostMapping("/cart/remove")
	public ModelAndView removeCartDetail(@RequestParam("cartDetailId") String cartDetailId,
	                                      @RequestParam("productId") String productId) {

		Account account = accountServiceImpl.getAccountById(a);
		Cart cart = cartservice.getCartbyUserAndIdCart(account.getUser(),newCart);
		cartDetailService.deleteByProductIdAndCartId(productId, cartDetailId);
	    ModelAndView mv = new ModelAndView();
	    List<CardDetail> listcart = cart_DetailRepository.findByCartId(cart.getId());
	    mv.addObject("listCart", listcart);
	    mv.setViewName("redirect:/cart-pay/cart");
	    return mv;
	}

	
	//THANH TOÁN
	@RequestMapping("/pays")
	public ModelAndView listCartPay() {
		ModelAndView mv = new ModelAndView("cart-pay/pays");
		MyUser myUser = SecurityUtils.getPrincipal();
		if (myUser == null) {
			mv.setViewName("login");
		    return mv;
		}
		Account account = accountServiceImpl.getAccountById(a);
		List<CardDetail> listCart = cart_DetailRepository.findByCartId(newCart);
		mv.addObject("list", listCart);
		User user = userSV.getUserById(account.getUser().getId());
		mv.addObject("User", user);
		List<Pays> pay = paysSV.getPays();
		mv.addObject("pay",pay);
		return mv;
	}

	@PostMapping("/pays")
	public ModelAndView Oder(){
		ModelAndView mv = new ModelAndView("cart-pay/pays");
		Account account = accountServiceImpl.getAccountById(a);
		
		Cart cart = cartservice.getCartbyUserAndIdCart(account.getUser(),newCart);
		List<CardDetail> listCart = cart_DetailRepository.findByCartId(cart.getId());
		mv.addObject("list", listCart);
		User user = userSV.getUserById(account.getUser().getId());
		mv.addObject("User", user);
		return mv;
	}
	
	//THEM PHIEU DAT
	@PostMapping("/pays/save")
	public ModelAndView saveOrder(@RequestParam("Pays") String Idpays) {
		ModelAndView mv = new ModelAndView();
		Order order = new Order();
		Account account = accountServiceImpl.getAccountById(a);
		Cart cart = cartservice.getCartbyUserAndIdCart(account.getUser(),newCart);
		List<CardDetail> listCart = cart_DetailRepository.findByCartId(cart.getId());
		mv.addObject("list", listCart);
		User user = userSV.getUserById(account.getUser().getId());
		mv.addObject("User", user);
		List<Pays> pay = paysSV.getPays();
		mv.addObject("pay",pay);
		
		LocalDate currentDate = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String dateString = currentDate.format(formatter);
		LocalDate date = LocalDate.parse(dateString, formatter);
		Instant instant = date.atStartOfDay(ZoneId.systemDefault()).toInstant();
		Date legacyDate = Date.from(instant);
	
		String v = Idpays;
		Pays pays = paysSV.getPaysById(v);
		order.setDate(legacyDate);
		order.setPay(pays);
		order.setCart(cart);
		order.setStaff(null);
		order.setUser(user);
		order.setStatus("Đang xử lí");
		if(listCart ==null) {
			 mv.setViewName("redirect:/cart-pay/cart");
		}
		else {
			orderRpstr.save(order);
			 mv.setViewName("redirect:/cart-pay/notify");
		}
		
		return mv;
	}
	
	@RequestMapping("/notify")
	public ModelAndView notify1() {
		ModelAndView mv = new ModelAndView("cart-pay/notify");
		Account account = accountServiceImpl.getAccountById(a);
		Cart cart = new Cart();
		User user = userSV.getUserById(account.getUser().getId());
		Long cart1 = cartRpstr.countCartById();
		Long newcount = cart1 +1;
		String count = newcount.toString();
		cart.setId(count);
		cart.setUser(user);
		cartRpstr.save(cart);
		newCart = count;
		return mv;
	}
	
	//DIA CHI
	@RequestMapping("/address")
	public ModelAndView Address() {
		ModelAndView mv = new ModelAndView("cart-pay/address");
		Account account = accountServiceImpl.getAccountById(a);
		User user = userSV.getUserById(account.getUser().getId());
		mv.addObject("User", user);
		return mv;
	}
	
	@PostMapping("/address/update")
	public ModelAndView PhoneandAddress(
		    @RequestParam(value = "phoneold", required = true) String phoneold,
		    @RequestParam(value = "addressold", required = true) String addressold,
		    @RequestParam(value = "phone", required = true) String phone,
		    @RequestParam(value = "address", required = true) String address
		) {
		ModelAndView mv = new ModelAndView("cart-pay/address");
		Account account = accountServiceImpl.getAccountById(a);
		
		if(address.equals("") && !phone.equals("")) {
			userRpstr.updateSdtAndAddressById(account.getUser().getId(),phone, addressold);
		}
		else if (phone.equals("")&&!address.equals("")) {
			userRpstr.updateSdtAndAddressById(account.getUser().getId(),phoneold, address);
		}
		else if(!phone.equals("")&&!address.equals(""))
		{
			userRpstr.updateSdtAndAddressById(account.getUser().getId(), phone, address);
		}
	    mv.setViewName("redirect:/cart-pay/pays");
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