package com.kaishengit.pms.service;

import java.util.List;

import com.kaishengit.pms.dao.GoalDao;
import com.kaishengit.pms.entity.Goal;

public class GoalService {

	private GoalDao goalDao = new GoalDao();
	
	public List<Goal> findByProjectId(String projectId) {
		return goalDao.findByProjectId(projectId);
	}

	public void save(Goal goal) {
		goalDao.save(goal);
	}

	public Goal findById(String goalId) {
		return goalDao.findById(goalId);
	}

}
