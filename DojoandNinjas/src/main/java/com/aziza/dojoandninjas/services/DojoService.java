package com.aziza.dojoandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aziza.dojoandninjas.models.Dojo;
import com.aziza.dojoandninjas.repositories.DojoRepo;

@Service
public class DojoService {
	
	@Autowired
	DojoRepo dojoRepo;
	
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
		
	}
	
	public Dojo createDojo(Dojo dojo){
		
		return dojoRepo.save(dojo);
		
	}
	
	public Dojo findDojo(Long id){
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
	if(optionalDojo.isPresent()) {
		return optionalDojo.get();
	} else {
		return null;
	}
		
	}
	
	
}
