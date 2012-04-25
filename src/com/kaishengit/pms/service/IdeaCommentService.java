package com.kaishengit.pms.service;

import java.util.List;

import com.kaishengit.pms.dao.IdeaCommentDao;
import com.kaishengit.pms.entity.IdeaComment;

public class IdeaCommentService {

	IdeaCommentDao icd=new IdeaCommentDao();
	public List<IdeaComment> findAllComment(String id) {
		List<IdeaComment> list=icd.findAllComment(id);
		return list;
	}
	public int saveIC(IdeaComment ic) {
		int rows=icd.saveIC(ic);
		return rows;
	}

}
