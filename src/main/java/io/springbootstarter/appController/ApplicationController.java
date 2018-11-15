package io.springbootstarter.appController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import io.springbootstarter.instagram.InstagramAccount;
import io.springbootstarter.twitter.TwitterAccount;
import io.springbootstarter.user.User;
import io.springbootstarter.user.UserService;

@Controller
public class ApplicationController  {

	@Autowired 
	private UserService userService;
	
	@RequestMapping("/welcome")
	public String welcomePage() {
		return "welcome";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/loginuser")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request, HttpSession session) {
		String username = user.getUsername();
		String password = user.getPassword();
		
		
		if(userService.getUserByUsernameAndPassword(username, password) !=null ) {
			user= userService.getUserByUsernameAndPassword(username, password);
			addUserToSession(user, session);
			return "loginsuccess";
			
		}
	
		else {
			request.setAttribute("error", "Invalid Username or Password");
			return "login";
		}
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(@ModelAttribute User user,@SessionAttribute("id") int id, HttpServletRequest request, HttpSession session) {
		userService.deleteUser(id);
		session.invalidate();
		return "welcome";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@PostMapping("/addUser")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.addUser(user);
		return "loginsuccess";
	}
	
	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute User user, @SessionAttribute("id") int id, BindingResult bindingResult, HttpServletRequest request) {
		userService.updateUser(id, user);
		return "loginsuccess";
	}
	
	@RequestMapping("/AccSettings")
	public String settings()
	{
		return "AccSettings";
	}
	
	@RequestMapping("/loginsuccess")
	public String home()
	{
		return "loginsuccess";
	}
	
	@RequestMapping("/AddiAccount")
	public String addiAccount()
	{
		return "instaAccount";
	}
	
	@PostMapping("/AddAccount")
	public String addInstaAccount(HttpServletRequest request, @SessionAttribute("id") int id, @RequestParam String username, @RequestParam String password, @ModelAttribute InstagramAccount iaccount, BindingResult bindingResult) {
		User user = userService.getUserById(id);
		user.getiAccount().add(iaccount);
		userService.addIAccount(iaccount, id);
		return "loginsuccess";
		
	}
	
	@RequestMapping("/AddtAccount")
	public String addtAccount() {
		return "twitteraccount";
	}
	
	@PostMapping("/AddTwitterAccount")
	public String addTwitterAccount(HttpServletRequest request, @SessionAttribute("id") int id, @RequestParam String username, @RequestParam String password, @ModelAttribute TwitterAccount taccount, BindingResult bindingResult) {
		User user = userService.getUserById(id);
		user.gettAccount().add(taccount);
		userService.addTAccount(taccount, id);
		return "loginsuccess";
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "welcome";
	}
	
	private void addUserToSession(User user, HttpSession session) {
		session.setAttribute("user", user);
		session.setAttribute("id", user.getId());
		
	}
}
