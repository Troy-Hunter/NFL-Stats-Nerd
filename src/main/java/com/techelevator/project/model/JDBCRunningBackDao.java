package com.techelevator.project.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCRunningBackDao implements RunningBackDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCRunningBackDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<RunningBack> getAllRunningBacks() {
		List<RunningBack> allRunningBacks = new ArrayList<>();
		String sqlSelectAllRunningBacks = "SELECT * FROM runningback";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllRunningBacks);
		while(results.next()) {
			RunningBack runningback = new RunningBack();
			runningback.setId(results.getLong("running_back_id"));
			runningback.setName(results.getString("name"));
			allRunningBacks.add(runningback);
		}
		return allRunningBacks;
}
}