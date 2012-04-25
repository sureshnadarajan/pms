package com.kaishengit.pms.service;

import java.util.List;

import com.kaishengit.pms.dao.EmployeeProjectDao;
import com.kaishengit.pms.dao.ProjectDao;
import com.kaishengit.pms.entity.EmployeeProject;
import com.kaishengit.pms.entity.Project;

public class ProjectService {

	private ProjectDao projectDao = new ProjectDao();
	private EmployeeProjectDao epDao = new EmployeeProjectDao();
	
	public List<Project> getEmployeeProject(String id) {
		return projectDao.findByEmployeeId(id);
	}

	/**
	 * ����projectId�͵�ǰ��¼�����Id�ҵ���Ӧ��EmployeeProject���󣬸ö����а���Project��Employee����
	 * @param id
	 * @return
	 */
	public EmployeeProject findById(String projectId,String employeeId) {
		return epDao.findByProjectId(projectId,employeeId);
	}


	
}
