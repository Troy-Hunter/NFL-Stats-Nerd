package com.techelevator.project.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCRunningBackGamesDao implements RunningBackGamesDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCRunningBackGamesDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public RunningBackGames getRunningBack(String name) {
		RunningBack rb = new RunningBack();
		RunningBackGames games = new RunningBackGames();
		String sqlSelectRb = "SELECT * FROM runningback rb "
				+ "JOIN running_back_games rbg ON rbg.running_back_id = rb.running_back_id " 
				+ "JOIN team t ON rb.team_id = t.team_id WHERE name = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectRb, name.toUpperCase());
		
		while(results.next()) {
			games.setWeek1RushYards(results.getLong("week_1_rushing_yards"));
			games.setWeek2RushYards(results.getLong("week_2_rushing_yards"));
			games.setWeek3RushYards(results.getLong("week_3_rushing_yards"));
			games.setWeek1RushingAtt(results.getInt("week_1_rushing_attempts"));
			games.setWeek2RushingAtt(results.getInt("week_2_rushing_attempts"));
			games.setWeek3RushingAtt(results.getInt("week_3_rushing_attempts"));
			games.setWeek1RushYardsPerAtt(results.getInt("week_1_yards_per_rush_attempt"));
			games.setWeek2RushYardsPerAtt(results.getInt("week_2_yards_per_rush_attempt"));
			games.setWeek3RushYardsPerAtt(results.getInt("week_3_yards_per_rush_attempt"));
			games.setWeek1RecYards(results.getLong("week_1_receiving_yards"));
			games.setWeek2RecYards(results.getLong("week_2_receiving_yards"));
			games.setWeek3RecYards(results.getLong("week_3_receiving_yards"));
			games.setWeek1Receptions(results.getInt("week_1_receptions"));
			games.setWeek2Receptions(results.getInt("week_2_receptions"));
			games.setWeek3Receptions(results.getInt("week_3_receptions"));
			games.setWeek1Targets(results.getInt("week_1_targets"));
			games.setWeek2Targets(results.getInt("week_2_targets"));
			games.setWeek3Targets(results.getInt("week_3_targets"));
			games.setWeek1TD(results.getInt("week_1_touchdowns"));
			games.setWeek2TD(results.getInt("week_2_touchdowns"));
			games.setWeek3TD(results.getInt("week_3_touchdowns"));
			games.setTotalTouchdowns(results.getInt("total_touchdowns"));
			
			}
		return games;
	}

}
