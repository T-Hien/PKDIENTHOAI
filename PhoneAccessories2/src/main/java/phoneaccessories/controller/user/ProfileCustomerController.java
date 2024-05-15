package phoneaccessories.controller.user;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import phoneaccessories.Utils.SecurityUtils;
import phoneaccessories.entity.Account;
import phoneaccessories.entity.Staffs;
import phoneaccessories.entity.User;
import phoneaccessories.service.AccountService;
import phoneaccessories.service.OrderService;
import phoneaccessories.service.UserService;

@Controller
@RequestMapping("/")
public class ProfileCustomerController {

	@Autowired
	private UserService userService;

	@Autowired
	AccountService accountService;

	@Autowired
	OrderService orderService;

	@GetMapping("/profile")
	public ModelAndView showProfile() {
		ModelAndView mav = new ModelAndView("user/profile");
		Account account = accountService.getAccountById(SecurityUtils.getPrincipal().getUsername());
		mav.addObject("account1", account.getUser());
		mav.addObject("order", account.getUser().getListOther());

		mav.addObject("account", account);

		return mav;
	}

	@PostMapping("/profile/update")
	public ModelAndView updateProfile(@ModelAttribute("account1") User user,
			@RequestParam("avatar") MultipartFile avatar, @RequestParam("ids") String ids) {
		ModelAndView mav = new ModelAndView();
		user.setId(ids);
		user.setImage(avatar.getOriginalFilename());

		System.out.println(user.getId());
		userService.updateUser(user);

		String message = "";
		try {
			MultipartFile multipartFile = avatar;
			String fileName = multipartFile.getOriginalFilename();
			File file = new File(
					"C:\\Users\\Hoai Han\\Downloads\\PhoneAccessories2\\src\\main\\webapp\\templates\\user\\access\\img\\customer",
					fileName);
			multipartFile.transferTo(file);
			message = "Thêm thành công";
			mav.addObject("message", message);
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("message", "Lưu file ảnh thất bại");
		}
		
		Account account = accountService.getAccountById(SecurityUtils.getPrincipal().getUsername());
		mav.addObject("account1", account.getUser());
		mav.addObject("order", account.getUser().getListOther());

		mav.addObject("account", account);
		
		mav.setViewName("redirect:/profile");
		mav.addObject("mess","Cập nhật thành công");
		return mav;
	}

	@RequestMapping("/admin/user/list")
	public ModelAndView listStaff() {
		ModelAndView mav = new ModelAndView();
		Account account = accountService.findByUsername(SecurityUtils.getPrincipal().getUsername());
		
		mav.setViewName("/admin/users/list-user");
		List<User> users = userService.findAllByStatus(true);
		
		mav.addObject("listUser", users);
		
		return mav;
	}
	
}
