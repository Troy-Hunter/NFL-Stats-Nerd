
package com.techelevator.project.model;

public class Team {
	
	private Long id;
	private String teamName;
	private String imageName;
	

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return teamName;
	}
	public void setName(String teamName) {
		this.teamName = teamName;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

}
