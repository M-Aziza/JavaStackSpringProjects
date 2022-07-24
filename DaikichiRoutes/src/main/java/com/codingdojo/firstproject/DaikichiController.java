package com.codingdojo.firstproject;

import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/daikichi")

public class DaikichiController {
	
    @RequestMapping("")
    public String welcomeMsg(){
      return "Welcome!";
  
    }
    @RequestMapping("/today")
    public String todayMsg(){
      return "Today you will find luck in all your endeavors!!";
    }
    @RequestMapping("/tomorrow")
    public String tomorrowMsg(){
      return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
  
    }

}
