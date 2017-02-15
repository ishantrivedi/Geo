package com.geo.controller;

import java.io.ObjectInputStream.GetField;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.geo.dao.ProductDao;
import com.geo.dao.CustomerDao;
import com.geo.model.Product;
import com.geo.model.Customer;


@Controller
public class HomeController {

	private Path path;

    @Autowired
    private ProductDao productDao;

	
	@Autowired
	private CustomerDao customerDao;
	//need to call methods of customerdaoimpl---- use autowired
	
	@RequestMapping("/")
	public String homePage1() {
		System.out.println("Executing HomePage");
		return "index";
	}
	
	@RequestMapping("/addCustomer")
	public String addCustomer(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "addCustomer";
	}
	
	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public ModelAndView addCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) 
		{
			System.out.println("denied");
			ModelAndView mv1=new ModelAndView("denied");
			return mv1;
			//return "denied";
		}
		System.out.println("User Name="+customer.getUsername()+"..........................");
		System.out.println("Password="+customer.getPassword()+"..........................");
		System.out.println("Customer Name="+customer.getCustomerName()+"..........................");
		customerDao.addCustomer(customer);

		// MultipartFile customerImage = customer.getCustomerImage();

		//String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		//path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + customer.getCustomerId() + ".jpg");
		// path=Paths.get("D:\\img\\"+customer.getCustomerId()+".jpg");

		// if (customerImage != null && !customerImage.isEmpty()) {
		// try {
		// customerImage.transferTo(new File(path.toString()));
		// } catch (Exception e) {
		// e.printStackTrace();
		// throw new RuntimeException("Customer image saving failed.", e);
		// }
		// }

		// return "redirect:/admin/customerInventory";
		//return "redirect:/";
		ModelAndView mv=new ModelAndView("addCustomer");
		Customer customer1 = new Customer();
		mv.addObject("customer",customer1);
		mv.addObject("message", "Registered Successfully");
		return mv;
	}
	
/*	@Transactional
	@RequestMapping(value = "/BillingAddress", method = RequestMethod.GET)
	public ModelAndView addCustomerPost1(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) 
		{
			System.out.println("denied");
			ModelAndView mv1=new ModelAndView("denied");
			return mv1;
			//return "denied";
		}

		customerDao.BillingAddress(customer);

		// MultipartFile customerImage = customer.getCustomerImage();

		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + customer.getCustomerId() + ".jpg");
		// path=Paths.get("D:\\img\\"+customer.getCustomerId()+".jpg");

		// if (customerImage != null && !customerImage.isEmpty()) {
		// try {
		// customerImage.transferTo(new File(path.toString()));
		// } catch (Exception e) {
		// e.printStackTrace();
		// throw new RuntimeException("Customer image saving failed.", e);
		// }
		// }

		// return "redirect:/admin/customerInventory";
		//return "redirect:/";
		ModelAndView mv=new ModelAndView("BillingAddress");
		Customer customer1 = new Customer();
		mv.addObject("customer",customer1);
		mv.addObject("message", "Registered Successfully");
		return mv;
	}*/
	
    @Transactional
    @RequestMapping("/ListofProducts")
    public String getProducts(Model model) {
        List<Product> products = productDao.getProductList();
        model.addAttribute("products", products);

        return "ListofProducts";
    }
    
    @Transactional
    @RequestMapping("/ListofProductsByCat")
    public String ListofProductsByCat(Model model, @RequestParam("category") String cat)
	{
        List<Product> products = productDao.getProductByCategory(cat);
        model.addAttribute("products", products);
        return "ListofProducts";
    }

    /*------------------added temp check------------------ */
   
	/*------------------added temp check------------------ */	
	
	@RequestMapping("/login")
	public ModelAndView showLogin()
	{
		System.out.println("login called.....");
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("msg", "You clicked login");
		mv.addObject("showLogin", "true");
		return mv;
	}

	/*--------For Software ------*/
	@RequestMapping("/opensourcesoftware")
	public ModelAndView showOpenSourceSoftware()
	{
		System.out.println("opensource called.....");
		ModelAndView mv = new ModelAndView("opensourcesoftware");
		mv.addObject("msg", "You clicked Open Source Software");
		mv.addObject("showOpenSourceSoftware", "true");
		return mv;
	}
	
	/*
	@RequestMapping("/chargeablesoftware")
	public ModelAndView showChargeableSoftware()
	{
		System.out.println("Chargeable Software called.....");
		ModelAndView mv = new ModelAndView("chargeablesoftware");
		mv.addObject("msg", "You clicked Chargeable Software");
		mv.addObject("showChargeableSoftware", "true");
		return mv;
	} */
		
	
	
	/* Open source software above */	

	/*------------For Publications-----------*/
	@RequestMapping("/books")
	public ModelAndView showBooks()
	{
		System.out.println("Books showing");
		ModelAndView mv = new ModelAndView("books");
		mv.addObject("showBooks", "true");
		return mv;
	}
	@RequestMapping("/magazines")
	public ModelAndView showMagazines()
	{
		System.out.println("Magazines showing");
		ModelAndView mv = new ModelAndView("magazines");
		mv.addObject("showMagazines", "true");
		return mv;
	}
	
	
	/* For Publications above */
	
	/* E-tutorial */
	@RequestMapping("/gistutorial")
	public ModelAndView showGISTutorial()
	{
		System.out.println("GIS Tutorial called.....");
		ModelAndView mv = new ModelAndView("gistutorial");
		mv.addObject("showGISTutorial", "true");
		return mv;
	}
	
	@RequestMapping("/remotesensingtutorial")
	public ModelAndView showRemoteSensingTutorial()
	{
		System.out.println("Remote Sensing Tutorial called.....");
		ModelAndView mv = new ModelAndView("remotesensingtutorial");
		mv.addObject("showRemoteSensingTutorial", "true");
		return mv;
	}
	
	@RequestMapping("/lidartutorial")
	public ModelAndView showLidarTutorial()
	{
		System.out.println("Lidar Tutorial called.....");
		ModelAndView mv = new ModelAndView("lidartutorial");
		mv.addObject("showPhotogrammetryTutorial", "true");
		return mv;
	}
	
	/*---------------------------- */
	
	
	/*-------contact us-----------*/
 	@RequestMapping("/contactus")
	public ModelAndView showContactUs()
	{
		System.out.println("Contact Us called.....");
		ModelAndView mv = new ModelAndView("contactus");
		mv.addObject("showContactUs", "true");
		return mv;
	}
	
	/*--------------------------------*/
	
	
/*	@RequestMapping("/validate")
	public ModelAndView validate(@RequestParam("id") String id, @RequestParam("password") String password)
	{
		System.out.println("id: " + id);
		System.out.println("pwd: " + password);
		System.out.print("In Validate Method");
		ModelAndView mv = new ModelAndView("welcome");
		return mv;
	}*/

}