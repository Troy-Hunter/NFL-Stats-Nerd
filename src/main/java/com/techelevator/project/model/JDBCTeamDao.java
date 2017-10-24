package com.techelevator.project.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCTeamDao implements TeamDao {

		private JdbcTemplate jdbcTemplate;	

		@Autowired
		public JDBCTeamDao(DataSource dataSource) {
			this.jdbcTemplate = new JdbcTemplate(dataSource);
		}
		
		@Override
		public List<Team> getAllTeams() {
			List<Team> allTeams = new ArrayList<>();
			String sqlSelectAllTeams = "SELECT * FROM team";
			SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllTeams);
			while(results.next()) {
				Team team = new Team();
				team.setId(results.getLong("team_id"));
				team.setName(results.getString("team_name"));
				allTeams.add(team);
			}
			return allTeams;
		}
	}

