package com.aziza.languages.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aziza.languages.models.Language;
import com.aziza.languages.services.LanguageService;


@Controller
public class LanguageController {
	
	@Autowired
	LanguageService languageService;
	
	
	@RequestMapping("/languages")
	public String index(@ModelAttribute("language") Language language, Model model){ //view
		model.addAttribute("languages", languageService.allLanguages());
				return "index.jsp";
	}
	
	@RequestMapping(value="/languages", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("language") Language language, BindingResult result,Model model) { //create
		model.addAttribute("languages",languageService.allLanguages());
		if (result.hasErrors()) {
			return "index.jsp";
		} else {
			languageService.createLanguage(language);
			return "redirect:/languages";
		}
	}
	
	@RequestMapping("/languages/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model ) { //edit view
		Language language = languageService.findLanguage(id) ;
        model.addAttribute("language",language );
        return "edit.jsp";
    }
	
	@RequestMapping(value="/languages/update/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("language") Language language, BindingResult result,@PathVariable("id") Long id) {
        if (result.hasErrors()) {
            return "edit.jsp";
        } else {
        	languageService.updateLanguage(language, id);
            return "redirect:/languages";
        }
    }
	
	@RequestMapping("/languages/{id}")
    public String show(@PathVariable("id") Long id, Model model ) {
		Language language = languageService.findLanguage(id) ;
        model.addAttribute("language",language );
        return "show.jsp";
    }
	
	
	@RequestMapping(value="languages/delete/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") Long id) {
		languageService.deleteLanguage(id);
		return "redirect:/languages";
	}
//	
}
