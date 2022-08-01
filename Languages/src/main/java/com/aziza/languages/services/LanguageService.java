package com.aziza.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aziza.languages.models.Language;
import com.aziza.languages.repositories.LanguageRepository;

@Service
public class LanguageService {


	@Autowired
	LanguageRepository languageRepository;
	
	public List<Language> allLanguages(){
		return languageRepository.findAll();
	}
	
	public Language createLanguage(Language languge) {
		return languageRepository.save(languge);
	}
	
	public void deleteLanguage(Long id) {
		languageRepository.deleteById(id);
	}
	
	public Language findLanguage(Long id) {
		Optional<Language> optionalItem = languageRepository.findById(id);
		if(optionalItem.isPresent()) {
			return optionalItem.get();
		} else {
			return null;
		}
	}
	public Language updateLanguage(Language languge, Long id) {
		Language i = languageRepository.findById(id).get();
		i.setName(languge.getName());
		i.setCreator(languge.getCreator());
		i.setCurrentVersion(languge.getCurrentVersion());
		return languageRepository.save(i);
	}
}
