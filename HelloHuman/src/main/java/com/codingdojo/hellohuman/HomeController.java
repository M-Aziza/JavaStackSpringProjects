package com.codingdojo.hellohuman;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
@RestController

public class HomeController {
	
//	Create an app that will show in the browser either a default value of "human" or the name provided in the URL query string. Please note, you may show simple text without any html formatting.
	
	@RequestMapping("/")
    public String index(@RequestParam(value="name", required=false) String searchQuery) {
	 
	 if(searchQuery == null) {
		 
	 return "Hello Human " ;
    }else {
		 return "Hello  " + searchQuery;

    		}

	}
}
