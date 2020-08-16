package com.deloitte.todo.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.deloitte.todo.app.service.LoginService;

@Controller
@SessionAttributes({ "name", "password" })
public class LoginController {

	@Autowired
	LoginService loginService;

	// method to display the login page
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "Login.jsp";
	}

	// authenticate user using BCrypt for security
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showHomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {

		try {
			boolean isValidUser = loginService.validateUser(name, password);
			if (!isValidUser) {
				model.put("errorMessage", "Invalid Credentials");
				return "Login.jsp";
			}
			model.put("name", name);
			model.put("password", password);
			return "Home.jsp";

		} catch (Exception e) {
			e.printStackTrace();
			throw e;

		}

	}
}
