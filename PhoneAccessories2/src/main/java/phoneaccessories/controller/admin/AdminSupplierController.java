package phoneaccessories.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import phoneaccessories.Utils.RandomStringGenerator;
import phoneaccessories.Utils.SecurityUtils;
import phoneaccessories.entity.Account;
import phoneaccessories.entity.Staffs;
import phoneaccessories.entity.Supplier;
import phoneaccessories.service.AccountService;
import phoneaccessories.service.StaffService;
import phoneaccessories.service.SupplierService;

@Controller
@RequestMapping("/admin/")
public class AdminSupplierController {
	
	@Autowired
	SupplierService supplierService;
	
	@GetMapping("supplier/list")
	public ModelAndView listSupplier() {
		ModelAndView mav = new ModelAndView("admin/supplier/list-supplier");
		
		List<Supplier> listSupplier = supplierService.getListSupplierByStatus(true);
		mav.addObject("listSupplier", listSupplier);
		return mav;
	}
	
	@GetMapping("supplier/add")
	public ModelAndView viewAddSupplier() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/supplier/add-supplier");
		Supplier supplier = new Supplier();
		mav.addObject("supplier", supplier);
		return mav;
	}
	
	@PostMapping("supplier/add")
	public ModelAndView addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/supplier/add-supplier");
		mav.addObject("message", "thêm nhà cung cấp thành công");
		supplier.setId(RandomStringGenerator.generateRandomString(10));
		supplierService.save(supplier);
		return mav;
	}
	
	@GetMapping("supplier/edit")
	public ModelAndView viewEditSupplier(@RequestParam("ids") String idsupplier) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/supplier/edit-supplier");
		Supplier supplier = supplierService.findById(idsupplier);
		mav.addObject("supplier", supplier);
		return mav;
	}
	
	@PostMapping("supplier/edit")
	public ModelAndView editSupplier(@RequestParam("ids") String idsupplier,@ModelAttribute("supplier") Supplier supplier) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/supplier/edit-supplier");
		supplierService.update(supplier, idsupplier);
		return mav;
	}
	
	@Autowired
	private StaffService staffService;
	
	@Autowired
	private AccountService accountService;
	
	@ModelAttribute("staff")
	public Staffs getStaff() {
		Account account = accountService.findByUsername(SecurityUtils.getPrincipal().getUsername());
		Staffs staff = staffService.findOneByAccount(account);
		return staff;
	}
}
