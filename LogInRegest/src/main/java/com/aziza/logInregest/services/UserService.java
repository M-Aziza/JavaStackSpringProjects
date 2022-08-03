package com.aziza.logInregest.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.aziza.logInregest.models.LoginUser;
import com.aziza.logInregest.models.User;
import com.aziza.logInregest.repositories.UserRepository;

@Service
public class UserService {

	
	@Autowired
	private UserRepository userRepo;
	
	
// 	
	public User register(User newUser, BindingResult result) {
        if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {//email is exist?
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())) {//comparing the password with the confirm 
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt()); // set var to hash the pw and  set it as user pw
            newUser.setPassword(hashed);
            return userRepo.save(newUser);
        }
    }
	
	public User login(LoginUser newLogin, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
        if(!potentialUser.isPresent()) {
            result.rejectValue("email", "Unique", "invalid email or password!");
            return null;
        }
        User user = potentialUser.get();
        if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
            result.rejectValue("password", "Matches", "invalid email or password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return user;
        }
    }
	
	
	 public User findUserById(Long id) {
	    	Optional<User> potentialUser = userRepo.findById(id);
	    	if(potentialUser.isPresent()) {
	    		return potentialUser.get();
	    	}
	    	else {
	    		return null;    		
	    	}
	    }
	 
}
