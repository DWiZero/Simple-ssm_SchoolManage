package cn.cw.school.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.cw.school.po.Login;
import cn.cw.school.service.LoginService;

@Controller
@RequestMapping("/Login")
public class LoginController {
	@Autowired
	LoginService LoginService;
	
	@RequestMapping("/loginin")
	public String Loginin()throws Exception {	
			return "Login";	
	}
	@RequestMapping("/loginout")
	public String Loginout(HttpSession session)throws Exception {
		if(session.getAttribute("student_no") != null){
		session.setAttribute("student_no", null);
		session.setAttribute("class_no", null);
		}
		if(session.getAttribute("teacher_no") != null){
			session.setAttribute("teacher_no", null);
			}
		if(session.getAttribute("managername") != null){
			session.setAttribute("managername", null);
			}
			return "redirect:/index.jsp";	
	}
	@RequestMapping("/student")
	public String LoginStudent(Model model,HttpSession session,Login login)throws Exception {
		if(LoginService.LoginStudent(login)){
			session.setAttribute("student_no", login.getUsername());
			return "redirect:/index.jsp";
		}else {
			model.addAttribute("message", "没有此学生，请检查学号或密码");
			return "Login";
		}		
	}
	
	@RequestMapping("/teacher")
	public String LoginTeacher(Model model,HttpSession session,Login login)throws Exception {
		if(LoginService.LoginTeacher(login)){
			session.setAttribute("teacher_no", login.getUsername());
			return "redirect:/index.jsp";
		}else {
			model.addAttribute("message", "没有此教师，请检查教师号或密码");
			return "Login";
		}	
	}
	
	@RequestMapping("/manager")
	public String LoginManager(Model model,HttpSession session,Login login)throws Exception {		
		if(LoginService.LoginManager(login)){
			session.setAttribute("managername", login.getUsername());
			return "redirect:/index.jsp";
		}else {
			model.addAttribute("message", "没有此用户，请检查用户名或密码");
			return "Login";
		}	
	}
}
