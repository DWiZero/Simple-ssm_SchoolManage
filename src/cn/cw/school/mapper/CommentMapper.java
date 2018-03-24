package cn.cw.school.mapper;

import java.util.List;

import cn.cw.school.po.Comment;
import cn.cw.school.po.Page;
import cn.cw.school.po.Title;

public interface CommentMapper {

	public int totalTitle() throws Exception;
	
	public List<Title> showTitle(Page page) throws Exception;

	public List<Comment> allComment(int title_id) throws Exception;

	public int addcomment(Comment comt) throws Exception;

	public int addtitle(Title title) throws Exception;
}
