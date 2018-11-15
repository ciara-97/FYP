package io.springbootstarter.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.springbootstarter.instagram.InstagramAccount;
import io.springbootstarter.instagram.InstagramRepository;
import io.springbootstarter.twitter.TwitterAccount;
import io.springbootstarter.twitter.TwitterRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private InstagramRepository instaRepository;
	
	@Autowired
	private TwitterRepository twitterRepository;
	
	public List<User> getAllUsers(){
		List<User> users = new ArrayList<User>();
		for(User user: userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	public User getUserById(int id) {
		return userRepository.findOne(id);
	}
	
	
	public User getUserByUsernameAndPassword(String username, String password) {
		User user = userRepository.findByUsernameAndPassword(username, password);
		return user;
	}

	public void addUser(User user) {	
		userRepository.save(user);
	}

	public void updateUser(int id, User user) {
		userRepository.save(user); 
		
	}

	public void deleteUser(int id) {
		userRepository.delete(id);
	}
	
	public void addIAccount(InstagramAccount iAccount, int id) {
		instaRepository.save(iAccount);
	}
	
	public void addTAccount(TwitterAccount tAccount, int id) {
		twitterRepository.save(tAccount);
	}
}
