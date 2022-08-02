package com.aziza.lookiify.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aziza.lookiify.models.Song;
import com.aziza.lookiify.services.SongServ;

@Controller
public class LookifyController {

	
	
	@Autowired
	SongServ songServ;
	
	@RequestMapping("/")
	public String welcomePage() { //welcome page
		return "welcomePage.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String playList(@ModelAttribute("song") Song song, Model model){ //view All songs  
		model.addAttribute("songs", songServ.allSongs());
		return "playListPage.jsp";
	}
	
	@RequestMapping("/songs/new")
	public String addSong(@ModelAttribute("song") Song song) {
		return "addPage.jsp";
	}
	
	@RequestMapping(value="/dashboard", method=RequestMethod.POST)
	public String create(@ModelAttribute("song") Song song, BindingResult result ) { //create new song
//		model.addAttribute("songs", songServ.allSongs());
		if (result.hasErrors()) {
			return "addPage.jsp";
		} else {
			songServ.createSong(song);
			return "redirect:/dashboard";
		}
	}
	
	@RequestMapping("songs/{id}")
	public String details(@PathVariable("id") Long id, Model model ) { //find by song id 
		Song song = songServ.findSong(id) ;
        model.addAttribute("song",song );
		return "songDetails.jsp";
	}
	
	
	@RequestMapping("/search")
	public String search(Model model,@RequestParam("artist") String artist){
		return "redirect:/search/"+artist;
	}
	
	
	
	@RequestMapping("/search/{artist}")
	public String artist(Model model,@PathVariable("artist") String artist){ // find by artist 
		   List<Song> song = songServ.findArtist(artist);	
		   model.addAttribute("songs",song);
		   model.addAttribute("artist",artist);
		return "search.jsp";
	}
	
	@RequestMapping("/search/topTen")
	public String topSong(Model model ) {//
		model.addAttribute("topTen",songServ.topTen());
		return "top.jsp";
	}
	
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.DELETE)
	public String deleteBut(@PathVariable("id") Long id) { // delete song
		songServ.deleteSong(id);
		return "redirect:/dashboard";
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {//delete song without  request method
		songServ.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	
}

