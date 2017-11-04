package com.techelevator.project.model;

import java.util.List;

import com.techelevator.project.model.RunningBack;

public interface RunningBackDao {
	
	public List<RunningBack> getAllRunningBacks();
	public List<RunningBack> getRBByTeamName(String teamName);

}

