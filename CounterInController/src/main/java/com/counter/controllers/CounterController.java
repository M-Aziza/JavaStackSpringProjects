package com.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class CounterController {
	
	
	@RequestMapping("/")
	public String welcome(HttpSession session,Model model){
		// If the count is not already in session
		if (session.getAttribute("counter") == null) {
			
			// Use setAttribute to initialize the count in session
			session.setAttribute("counter", 0);
		}
		else {
//			int count = Integer.parseInt((String)request.getAttribute("counter")); 
			Integer count = (Integer) session.getAttribute("counter");
			count ++;
			session.setAttribute("counter", count);
			
		 	model.addAttribute("counter",count);
			// increment the count by 1 using getAttribute and setAttribute
		}
//		session.setAttribute("count", 0);
		return "welcom.jsp";
	}
	
	
	@RequestMapping("/counter")
	public String counter(HttpSession session){
		return "count.jsp";
	}
	
	
}
