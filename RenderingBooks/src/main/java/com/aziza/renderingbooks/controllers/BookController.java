package com.aziza.renderingbooks.controllers;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.aziza.renderingbooks.models.Book;
//import com.aziza.renderingbooks.models.Book;
import com.aziza.renderingbooks.services.BookService;

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("books/{id}")
	public String index(Model model , @PathVariable("id") Long id){
		System.out.println(id);
		Book book = bookService.findBook(id);
		System.out.println(book);
		model.addAttribute("book",book);
		return "show.jsp";
	}
}
