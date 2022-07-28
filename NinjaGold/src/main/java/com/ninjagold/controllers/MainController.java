package com.ninjagold.controllers;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@RequestMapping("/")
	public String index(HttpSession session){
		// If the gold is not already in session
		if (session.getAttribute("gold") == null) {
			
			// Use setAttribute to initialize the gold in session
	        session.setAttribute("gold", 0);
	        session.setAttribute("activities", new ArrayList<String>());
	        }
		
		return "index.jsp";
	}
	

	@RequestMapping(value="/earnGold", method=RequestMethod.POST)
	public String earnGold(
			@RequestParam(value="place") String place,
			HttpSession session
			){
			Integer gold = (Integer) session.getAttribute("gold");
			int earnd = ThreadLocalRandom.current().nextInt();	 
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("EEE ' ','the ' dd ' of ' MMM ' ' , yyyy , hh:mm a");  
	    	 LocalDateTime date = LocalDateTime.now(); 
//			ArrayList<Integer> message = new  ArrayList<Integer>();
		
	if(place.equals("farm")) {
			
			earnd = ThreadLocalRandom.current().nextInt(10,20);
			session.setAttribute("gold", (Integer)session.getAttribute("gold")+ earnd );
		}
	if(place.equals("cave")) {
		earnd = ThreadLocalRandom.current().nextInt(5,10);
		session.setAttribute("gold", (Integer)session.getAttribute("gold")+ earnd );
		
	}
	if(place.equals("house")) {
		earnd = ThreadLocalRandom.current().nextInt(2,5);
		session.setAttribute("gold", (Integer)session.getAttribute("gold")+ earnd );
		
	}
		
		if(place.equals("casino")) {
			
		earnd = ThreadLocalRandom.current().nextInt(-50,50);
		session.setAttribute("gold", (Integer)session.getAttribute("gold")+ earnd );
	
	}
		
        String message ;
        if(earnd < 0){
            message = "You entered a "+ place + " ,and lost " + earnd + " gold.....Ouch ("+dtf.format(date)+")"; 
            ((ArrayList<String>) session.getAttribute("activities")).add(message);
        }else{
            message = "You entered a "+ place + " ,and earned " + earnd + " gold. ("+dtf.format(date)+")"; 
            ((ArrayList<String>) session.getAttribute("activities")).add(message);
        }


		return "redirect:/";
	}

		@RequestMapping("/destroy")
		public String destroy(HttpSession session) { 
			session.invalidate();
			return "redirect:/" ;
		}
}
