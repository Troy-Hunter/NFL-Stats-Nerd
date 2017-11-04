package com.techelevator.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.project.model.RunningBack;
import com.techelevator.project.model.RunningBackDao;
import com.techelevator.project.model.RunningBackGames;
import com.techelevator.project.model.RunningBackGamesDao;
import com.techelevator.project.model.Team;
import com.techelevator.project.model.TeamDao;


@Controller
public class HomePageController {
	
	@Autowired
	TeamDao teamDao;
	@Autowired
	RunningBackDao runningBackDao;
	@Autowired
	RunningBackGamesDao runningBackGamesDao;
	

	@RequestMapping (path="/", method=RequestMethod.GET) 
	public String showAllTeams(ModelMap modelHolder) {
		List<Team> teams = teamDao.getAllTeams();
		modelHolder.put("allTeams", teams);
		
		return "homePage";
}	
	@RequestMapping (path="/allRunningBacks", method=RequestMethod.GET) 
	public String showAllRunningBacks(ModelMap modelHolder) {
		List<RunningBack> runningback = runningBackDao.getAllRunningBacks();
		System.out.print(runningback);
		modelHolder.put("allRunningBacks", runningback);
		
		return "allRunningBacks";
	}
	
	@RequestMapping(path="/skillPlayers/{teamName}", method=RequestMethod.GET)
	public String showSkillPlayers(@PathVariable String teamName, ModelMap modelHolder){
		List<RunningBack> skillPlayers = runningBackDao.getRBByTeamName(teamName);
		System.out.print(skillPlayers);
		modelHolder.put("skillPlayers", skillPlayers);
		
		return "skillPlayers";
	}
	
	@RequestMapping(path="/individualStats/{name}", method=RequestMethod.GET)
	public String showIndividualPlayer(@PathVariable String name, ModelMap modelHolder){
		RunningBackGames stats = runningBackGamesDao.getRunningBack(name);
		System.out.print(stats);
		modelHolder.put("stats", stats);
	
	return "stats";
	}
}


