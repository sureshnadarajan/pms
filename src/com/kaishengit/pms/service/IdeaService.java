package com.kaishengit.pms.service;

import java.util.List;

import com.kaishengit.pms.dao.IdeaDao;
import com.kaishengit.pms.entity.Idea;

public class IdeaService {

	IdeaDao ideadao=new IdeaDao();
	public List<Idea> findAllIdea(String id2) {
		List<Idea> list=ideadao.findAllIdea(id2);
		return list;
	}
	public int save(Idea idea) {
		int rows=ideadao.save(idea);
		return rows;
	}
	public Idea findIdea(String id) {
		Idea idea=ideadao.findIdea(id);
		return idea;
	}

}
