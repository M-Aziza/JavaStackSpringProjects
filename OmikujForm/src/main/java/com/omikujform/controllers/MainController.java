package com.omikujform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@RequestMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	@RequestMapping("/send")
	public String formPost(
			@RequestParam(value="year") Integer year,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="say") String say,
			HttpSession session
			){
		session.setAttribute("year", year);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("say", say);
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/omikuji/show")
	public String welcome() {
		return "show.jsp";
	}
}
