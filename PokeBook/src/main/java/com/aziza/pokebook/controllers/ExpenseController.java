package com.aziza.pokebook.controllers;





//import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aziza.pokebook.models.Expense;
import com.aziza.pokebook.services.ExpenseService;



@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;
		
	@GetMapping("/expenses")
	public String index(@ModelAttribute("expen") Expense expense ,Model model ) {
		model.addAttribute("ex",expenseService.allExpenses());
		return "index.jsp";
	}

	@RequestMapping(value="/expenses", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("expen") Expense expense, BindingResult result , Model model) {
		model.addAttribute("ex",expenseService.allExpenses());
		if (result.hasErrors()) {
            return "index.jsp";
        } else {
        	expenseService.createExpense(expense);
            return "redirect:/expenses";
        }
    }

}
