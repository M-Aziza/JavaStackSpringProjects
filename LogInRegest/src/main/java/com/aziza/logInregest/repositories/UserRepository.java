package com.aziza.logInregest.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.aziza.logInregest.models.User;

public interface UserRepository extends CrudRepository<User, Long> {

	
//	List<User> findAll();
	Optional<User> findByEmail(String email);
	Optional<User> findById(Long id);
	
//	Optional<User> findByEmail(String email);
//    Optional<User> findById(Long id);
}
