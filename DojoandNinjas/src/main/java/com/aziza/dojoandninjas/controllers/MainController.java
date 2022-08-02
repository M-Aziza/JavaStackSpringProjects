package com.aziza.dojoandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

import com.aziza.dojoandninjas.models.Dojo;
import com.aziza.dojoandninjas.models.Ninja;
import com.aziza.dojoandninjas.services.DojoService;
import com.aziza.dojoandninjas.services.NinjaService;

@Controller
public class MainController {

	@Autowired
	DojoService dojoService;
	
	@Autowired
	NinjaService ninjaService;
	
	@RequestMapping("/")
	public String index(Model model ) {
		model.addAttribute("ninjas",ninjaService.allNinjas());
		return "index.jsp";
	}
	

	
	@RequestMapping("/dojos")
	public String dojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newTeam.jsp";
	}
	
	
	@RequestMapping("/dojos/new")
	public String makeDojo(@Valid @ModelAttribute("dojo") Dojo dojo,BindingResult result) {
		if (result.hasErrors()) {
			return "newTeam.jsp";
		} else {
			dojoService.createDojo(dojo);
			return "redirect:/dojos";
		}
	}
	
	@RequestMapping("/ninjas")
	public String ninja(@ModelAttribute("ninja") Ninja ninja,Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "newPlayer.jsp";
	}
	
	
	@RequestMapping("/ninjas/new")
	public String makeninja(@Valid @ModelAttribute("ninja") Ninja ninja,BindingResult result) {
		if (result.hasErrors()) {
			return "newPlayer.jsp";
		} else {
			ninjaService.createNinja(ninja);
			return "redirect:/ninjas";
		}
	}
	
	

}
