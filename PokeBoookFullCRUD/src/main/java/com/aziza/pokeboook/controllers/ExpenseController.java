package com.aziza.pokeboook.controllers;

import java.util.List;

import javax.validation.Valid;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aziza.pokeboook.models.Expense;
import com.aziza.pokeboook.services.ExpenseService;


@Controller
public class ExpenseController {

	private final ExpenseService  expenseService;
	
	public ExpenseController(ExpenseService  expenseService) {
		this.expenseService = expenseService;
	}
	
	
	@RequestMapping("/expenses")
	public String index(@ModelAttribute("expense")Expense expense,Model model){ //view
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses",expenses);
				return "index.jsp";
	}
	
	

	@RequestMapping(value="/expenses", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) { //create
		if (result.hasErrors()) {
            return "index.jsp";
        } else {
        	expenseService.createExpense(expense);
            return "redirect:/expenses";
        }
    }

	@RequestMapping("/expenses/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model ) {
		Expense expen = expenseService.findExpense(id) ;
        model.addAttribute("expense",expen );
        return "edit.jsp";
    }
    
    @RequestMapping(value="/expenses/update/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result,@PathVariable("id") Long id) {
        if (result.hasErrors()) {
            return "edit.jsp";
        } else {
        	expenseService.updateExpense(expense,id);
            return "redirect:/expenses";
        }
    }
 
    @RequestMapping("/expenses/{id}")
    public String show(@PathVariable("id") Long id, Model model ) {
		Expense expen = expenseService.findExpense(id) ;
        model.addAttribute("expense",expen );
        return "show.jsp";
    }
	@RequestMapping(value="expenses/delete/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") Long id) {
		expenseService.deleteExpense(id);
		return "redirect:/expenses";
	}
}