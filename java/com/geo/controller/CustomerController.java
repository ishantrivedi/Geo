package com.geo.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.geo.dao.CustomerDao;
import com.geo.model.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	private Path path;

	@Autowired
	private CustomerDao customerDao;
	
	String message;
	
	
	@RequestMapping("/customerList/all")
	public String getCustomers(Model model) {
		List<Customer> customers = customerDao.getCustomerList();
		model.addAttribute("customers", customers);

		return "customerList";
	}

	@RequestMapping("/viewCustomer/{customerId}")
	public String viewCustomer(@PathVariable int customerId, Model model) throws IOException {
		Customer customer = customerDao.getCustomerById(customerId);
		model.addAttribute("customer", customer);

		return "viewCustomer";
	}

	@RequestMapping("/customerList")
	public String getCustomerByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
		List<Customer> customers = customerDao.getCustomerList();
		model.addAttribute("customers", customers);
		model.addAttribute("searchCondition", searchCondition);

		return "customerList";
	}

	// Adding customername and password confirmation from a sample project
	@RequestMapping(value = "/authenticate", method = RequestMethod.POST, headers = "Accept=application/json")
	public String authenticateCustomer(@RequestParam("customername") String customername, @RequestParam("password") String password,
			HttpSession session) {
		System.out.println("customername:" + customername);
		System.out.println("password:" + password);

		Customer customer1 = customerDao.getCustomerByCustomername(customername);
		String result = "login";
		if (customer1 == null)
			result = "login";

		if (customer1.getPassword().equals(password))
			result = "index";

		return result;

		/*
		 * int result=0;
		 * result=customerDao.validateCustomer(customer1.getcustomername(),customer.getpassword());
		 * System.out.println("result we have got is:"+result);
		 * 
		 * if(result!=0){ session.setAttribute("loggedInCustomer", customer);
		 * session.setAttribute("loggedInCustomerId", customer.getCustomerId()); } return
		 * result;
		 */

	}
}
