package com.techelevator.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.project.model.RunningBack;
import com.techelevator.project.model.RunningBackDao;
import com.techelevator.project.model.Team;
import com.techelevator.project.model.TeamDao;


@Controller
public class HomePageController {
	
	@Autowired
	TeamDao teamDao;
	RunningBackDao runningBackDao;

	@RequestMapping ("/homePage") 
	public String showAllTeams(ModelMap modelHolder) {
		List<Team> teams = teamDao.getAllTeams();
		modelHolder.put("allTeams", teams);
		
		return "homePage";
}	
	@RequestMapping ("/allRunningBacks") 
	public String showAllRunningBacks(ModelMap modelHolder) {
		List<RunningBack> runningback = runningBackDao.getAllRunningBacks();
		modelHolder.put("allRunningBacks", runningback);
		
		return "allRunningBacks";
	}
	
	
}