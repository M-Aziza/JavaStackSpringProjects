package com.codingdojo.firstproject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController

//@RequestMapping("/hello")
public class HomeController {	
	
	@RequestMapping("/greeting")
    public String index(){
      return "Hello user!";
    }
	// you can be explicit about the request as well
    @RequestMapping(value="/greeting/hello", method=RequestMethod.GET)
    public String hello(){
      return "Hello world! What route did you use to access me?";
    }
    @RequestMapping("/greeting/goodbye")
    public String world(){
      return "Goodbye world!";
//      
//	@RequestMapping("")
//    public String hellos() {
//            return "Hello World!!!!";
//    }
//    @RequestMapping("/world")
//    public String world() {
//            return "Class level annotations are cool too!";
//    }
//	 // 1. Annotation
//    @RequestMapping("/")
//    
//    // 3. Method that maps to the request route above
//    public String hello() { // 3
//            return "Hello World!";
//    }
//    @RequestMapping("											")
//    public String myMsg() { // 3
//        return "my first project!jjj :) ";
}
//    

}
