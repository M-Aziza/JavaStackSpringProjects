package com.aziza.pokeboook.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.aziza.pokeboook.models.Expense;
import com.aziza.pokeboook.repositories.ExpenseRepository;

@Service
public class ExpenseService {

	private final ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
	
	public List<Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	
	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}
	
	public Expense findExpense(Long id) {
		Optional<Expense> optionalItem = expenseRepository.findById(id);
		if(optionalItem.isPresent()) {
			return optionalItem.get();
		} else {
			return null;
		}
	}
	
	public Expense updateExpense(Expense expense, Long id) {
		Expense i = expenseRepository.findById(id).get();
		i.setName(expense.getName());
		i.setVendor(expense.getVendor());
		i.setDescription(expense.getDescription());
		i.setAmount(expense.getAmount());
		return expenseRepository.save(i);
	}

}
