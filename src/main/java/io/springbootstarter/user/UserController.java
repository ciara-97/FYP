package io.springbootstarter.user;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.springbootstarter.instagram.InstagramAccount;

@RestController
public class UserController {

	@Autowired 
	private UserService userService;
	
	
	@RequestMapping("/users")
	public List<User> getAllUsers() {
		return userService.getAllUsers();
	}
	
	@RequestMapping("/users/{id}")
	public User getUserById(@PathVariable("id") int id) {
		return userService.getUserById(id);
	}
	
	
	@RequestMapping(method=RequestMethod.POST, value="/users") //Value is the path
	public void addTopic(@RequestBody User user) {
		userService.addUser(user);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/users/{id}") //Value is the path
	public void updateUser(@RequestBody User user, @PathVariable int id) {
		userService.updateUser(id, user);
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/users/{id}")
	public void deleteuser(@PathVariable("id") int id) {
		userService.deleteUser(id);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/users/{id}/instagram")
	public void addAccount(@RequestBody InstagramAccount iaccount, @PathVariable int id) {
		User user = userService.getUserById(id);
		System.out.println(user.toString());
		user.getiAccount().add(iaccount);
		userService.addIAccount(iaccount, id);
	}
	
	
	
	
	
	
}
