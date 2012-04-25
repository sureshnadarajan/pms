package com.kaishengit.pms.service;

import java.util.List;

import com.kaishengit.pms.dao.TaskDao;
import com.kaishengit.pms.entity.Task;

public class TaskService {

	private TaskDao taskDao = new TaskDao();
	
	public List<Task> findByGoalId(String goalId) {
		return taskDao.findByGoalId(goalId);
	}
}
