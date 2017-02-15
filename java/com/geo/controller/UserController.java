/*package com.geo.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.geo.dao.UserDao;
import com.geo.model.User;

@Controller
@RequestMapping("/user")
public class UserController {

	private Path path;

	@Autowired
	private UserDao userDao;
	
	String message;
	
	
	@RequestMapping("/userList/all")
	public String getUsers(Model model) {
		List<User> users = userDao.getUserList();
		model.addAttribute("users", users);

		return "userList";
	}

	@RequestMapping("/viewUser/{userId}")
	public String viewUser(@PathVariable int userId, Model model) throws IOException {
		User user = userDao.getUserById(userId);
		model.addAttribute("user", user);

		return "viewUser";
	}

	@RequestMapping("/userList")
	public String getUserByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
		List<User> users = userDao.getUserList();
		model.addAttribute("users", users);
		model.addAttribute("searchCondition", searchCondition);

		return "userList";
	}

	// Adding username and password confirmation from a sample project
	@RequestMapping(value = "/authenticate", method = RequestMethod.POST, headers = "Accept=application/json")
	public String authenticateUser(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session) {
		System.out.println("username:" + username);
		System.out.println("password:" + password);

		User user1 = userDao.getUserByUsername(username);
		String result = "login";
		if (user1 == null)
			result = "login";

		if (user1.getpassword().equals(password))
			result = "index";

		return result;

		
		 * int result=0;
		 * result=userDao.validateUser(user1.getusername(),user.getpassword());
		 * System.out.println("result we have got is:"+result);
		 * 
		 * if(result!=0){ session.setAttribute("loggedInUser", user);
		 * session.setAttribute("loggedInUserId", user.getUserId()); } return
		 * result;
		 

	}
}
*/