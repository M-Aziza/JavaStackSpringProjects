package com.displaydate.controllers;


import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DateController {
	
	    @RequestMapping("/")
	    public String index() {
	        return "index.jsp";
	    
	}
	    @RequestMapping("/date")
	    public String date(Model model) {
	    	
	    	 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("EEEE ' ','the ' dd ' of ' MMMM ' ' , yyyy");  
	    	 LocalDateTime now = LocalDateTime.now(); 
	        model.addAttribute("date", dtf.format(now));
	    	return "Date.jsp";
	    }

		@RequestMapping("/time")
	    public String time(Model model) {
			 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("hh:mm a");  
	    	 LocalDateTime now = LocalDateTime.now();
			model.addAttribute("time", dtf.format(now));
	        return "Time.jsp";
	    
	}
	    
}
