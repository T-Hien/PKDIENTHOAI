package phoneaccessories.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import phoneaccessories.Utils.RandomStringGenerator;
import phoneaccessories.entity.Account;
import phoneaccessories.entity.Cart;
import phoneaccessories.entity.Position;
import phoneaccessories.entity.Product;
import phoneaccessories.entity.User;
import phoneaccessories.repository.UserRepository;
import phoneaccessories.service.AccountService;
import phoneaccessories.service.CartService;
import phoneaccessories.service.PositionService;
import phoneaccessories.service.ProductService;
import phoneaccessories.service.Impl.AccountServiceImpl;
import phoneaccessories.service.Impl.UserServiceImpl;

@Controller
public class UserSigninController {
	
	@Autowired
	private AccountServiceImpl accountImpl;
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private PositionService positionService;
	
	@Autowired
	private UserRepository userRpsrt;
	
	@Autowired
	private UserServiceImpl userImpl;
	
	@Autowired
	CartService cartservice;
	@Autowired
	private ProductService productService;
	String Tenuser ="";

	
	@RequestMapping(value = "/singinUser",method = RequestMethod.GET)
	public ModelAndView singinUS() {
		ModelAndView mav = new ModelAndView("cart-pay/signinUS");
		Account account = new Account();
		mav.addObject("account",account );
		return mav;
		
	}
	@PostMapping("/signupUser")
	public ModelAndView creatAccount( HttpSession session,@ModelAttribute("account") Account account , 
			@RequestParam("passwordConfirm") String paswordCf,@RequestParam("password") String password, @RequestParam("role") String role, BindingResult bindingResult) {
		ModelAndView mav = new ModelAndView("cart-pay/signinUS");
		mav.addObject("check", true);
		String message ="";
		if (account.getUsername() == "") {
			message = "Tài khoản không được để trống";
			mav.addObject("errorTK", message);
			return mav;
		}
		if (account.getEmail() == "") {
			message = "Email không được để trống";
			mav.addObject("errorem", message);
			return mav;
		}
		
		if (password== "") {
			message = "Mật khẩu không được để trống";
			mav.addObject("errorpw", message);
			return mav;
		}
		if (bindingResult.hasErrors()) {
	        message = "Đăng kí thất bại";
	        mav.addObject("message", message);

	        return mav;
	    }
		if ( !paswordCf.equals(password)) {
			mav.addObject("checkPassword", true);
			mav.addObject("error", "Xác thực mật khẩu thất bại");
			message = "Đăng kí thất bại";
			mav.addObject("message", message);
			return mav;
		}
		 
		 mav.addObject("message", message);
		 Position position = positionService.findOneByName(role);
			if (position == null) {
				position = new Position();
				position.setId("user");
				position.setName(role);
				positionService.save(position);
			}
			
			account.setPasword(password);
			account.setPosition(position);
		

		 accountService.saveUser(account);
		 //accountImpl.save(account);
		 
		 Tenuser = account.getUsername();
		 session.setAttribute("account", account);
		 message = "Đăng kí thành công";
		 mav.addObject("message", message);
		 User user = new User();
		 user.setId(RandomStringGenerator.generateRandomString(10));
		 user.setAccount(account);
		 userImpl.save(user);
		return mav;
				
	}
	@RequestMapping(value = "/DKuser")
	public ModelAndView userDK() {
		ModelAndView mav = new ModelAndView("cart-pay/userInfo");
		User user = new User();
		System.out.println("1: "+Tenuser);
		mav.addObject("user",user );
		return mav;
		
	}
	
	@PostMapping("/userDK1")
	public ModelAndView creatUser(HttpSession session,@ModelAttribute("user") User user) {
		System.out.println("Username: "+Tenuser);
		ModelAndView mav = new ModelAndView("cart-pay/userInfo");
		Account account = (Account) session.getAttribute("account");
		System.out.println("Username:" + Tenuser);
		System.out.println("Tên đăng nhập: "+account.getUsername());
		Account account1 = accountImpl.getAccountById(account.getUsername());
		mav.addObject("check", true);
		String message ="";
		

		if (user.getSurname() == "") {
			message = "Họ không được để trống";
			mav.addObject("errorHo", message);
			return mav;
		}
		
		if (user.getName() == "") {
			message = "Tên không được để trống";
			mav.addObject("errorTen", message);
			return mav;
		}
		
		if (user.getAddress() == "") {
			message = "Địa không được để trống";
			mav.addObject("errorDC", message);
			return mav;
		}
		
		if (user.getSdt() == "") {
			message = "Số điện không được để trống";
			mav.addObject("errorSDT", message);
			return mav;
		}
		 
		 System.out.println("11111");
		 Long count = userRpsrt.countUserById();
		 System.out.println("AAAA");
		 Long newcount = count+1;
		 String newId = Long.toString(newcount);
		 System.out.println(newId);
		 user.setId(newId);
		 user.setAccount(account1);

		 userImpl.save(user);
		 message = "Đăng kí thông tin thành công";
		 mav.addObject("message", message);
		 mav.setViewName("redirect:/login");
		
		
		return mav;
				
	}

}
