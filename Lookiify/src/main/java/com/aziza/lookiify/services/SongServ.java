package com.aziza.lookiify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aziza.lookiify.models.Song;
import com.aziza.lookiify.repositories.SongRepo;

@Service
public class SongServ {

	
	@Autowired
	SongRepo songRepo;
	
	public List<Song> allSongs(){
		return songRepo.findAll();
	}
	
	public Song createSong(Song song) {
		return songRepo.save(song);
	}
	
	public void deleteSong(Long id) {
		songRepo.deleteById(id);
	}
	
	public Song findSong(Long id) {
		Optional<Song> optionalItem = songRepo.findById(id);
		if(optionalItem.isPresent()) {
			return optionalItem.get();
		} else {
			return null;
		}
	}
	
	
	public Song updateSong(Song song, Long id) {
		Song i = songRepo.findById(id).get();
		i.setTitleSong(song.getTitleSong());
		i.setArtistName(song.getArtistName());
		i.setRating(song.getRating());
		return songRepo.save(i);
	}
	
	public List<Song> findArtist(String artist) {
		return  songRepo.findByArtist(artist);
	}
	
	public List<Song> topTen() {
		return  songRepo.findTop10ByOrderByRatingDesc();
	}
	
}
