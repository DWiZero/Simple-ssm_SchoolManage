package cn.cw.school.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.cw.school.po.Comment;
import cn.cw.school.po.Page;
import cn.cw.school.po.Title;
import cn.cw.school.service.CommentService;

@Controller
@RequestMapping("/LT")
public class CommentController {

	@Autowired
	CommentService CommentService;
	
	@RequestMapping("/title")
	public String TitlePage(Model model,HttpSession session,int pageNum)throws Exception {
		Page page = CommentService.TitlePage(pageNum);
		model.addAttribute("page", page);
		return "main/Luntan";		
	}
	
	@RequestMapping("/comment")
	public @ResponseBody List<Comment> comment(Model model,HttpSession session,int title_id)throws Exception {
		List<Comment> comments = CommentService.allComment(title_id);
		return comments;
	}
	
	@RequestMapping("/comadd")
	public String addcomment(Model model,HttpSession session,Comment comt)throws Exception {		
		int i = CommentService.addcomment(comt);
		if(i==1){
			return "redirect:/LT/title.action?pageNum=1";	
		}
		model.addAttribute("sav", "评论添加失败");
		return "main/Luntan";			
	}
	
	@RequestMapping("/addtitle")
	public String addtitle(Model model,HttpSession session,Title title)throws Exception {
		int i = CommentService.addtitle(title);
		if(i==1){
			return "redirect:/LT/title.action?pageNum=1";	
		}
		model.addAttribute("sav", "发表失败");
		return "main/Luntan";		
	}
}
