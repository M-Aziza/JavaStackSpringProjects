package com.aziza.lookiify.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="songs")
public class Song {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull(message = "Name is required")
	@Size(min = 5, max = 20, message="The title must be at least 2")
	private String titleSong;
	
	@NotNull(message = "Name is required")
	@Size(min = 2, max = 20, message="The name must be at least 2")
	private String artist;
	
	@Min(value = 1, message = "Rating must be greater than or equal to 1 ")
	@Max(value = 10, message = "Rating must be smaller than or equal to 10")
	private int rating;
	
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	public Song() {}
	
	public Song(String titleSong, String artist,int rating) {
		this.titleSong = titleSong;
		this.artist = artist;
		this.rating = rating;
	}

	public Long getId() {
		return id;
	}

	public String getTitleSong() {
		return titleSong;
	}

	public void setTitleSong(String titleSong) {
		this.titleSong = titleSong;
	}

	public String getArtistName() {
		return artist;
	}

	public void setArtistName(String artistName) {
		this.artist = artistName;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	

}
