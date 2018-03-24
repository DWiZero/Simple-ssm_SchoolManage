package cn.cw.school.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cw.school.mapper.CommentMapper;
import cn.cw.school.po.Comment;
import cn.cw.school.po.Page;
import cn.cw.school.po.Title;

@Service("CommentService")
public class CommentService {
	@Autowired
	CommentMapper CommentMapper;

	public Page TitlePage(int pageNum) throws Exception {
		int totalRecord = CommentMapper.totalTitle();
		Page page = new Page(totalRecord, pageNum);
		List<Title> titles = CommentMapper.showTitle(page);
		page.setList(titles);
		return page;		
	}

	public List<Comment> allComment(int title_id) throws Exception{
		return CommentMapper.allComment(title_id);
	}

	public int addcomment(Comment comt) throws Exception {
		return CommentMapper.addcomment(comt);
	}

	public int addtitle(Title title) throws Exception {
		return CommentMapper.addtitle(title);
	}
	
	
}
