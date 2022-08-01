package com.aziza.pokebook.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.aziza.pokebook.models.Expense;
import com.aziza.pokebook.repositories.ExpenseRepository;




@Service
public class ExpenseService {
	
	// adding the expense repository as a dependency
	private final ExpenseRepository expenseRepository;
	
    //Contractor 
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}

    
 // returns all the expenses
    public List<Expense> allExpenses() {
        return expenseRepository.findAll();
    }
    
 // creates a expense
    public Expense createExpense(Expense expense) {
        return expenseRepository.save(expense);
    }

}
