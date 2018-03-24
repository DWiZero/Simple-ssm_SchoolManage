package cn.cw.school.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.Teacher;
import cn.cw.school.po.teacher_course;
import cn.cw.school.service.LoginService;
import cn.cw.school.service.TeacherService;

@Controller
@RequestMapping("/tm")
public class TeacherController {
	@Autowired
	TeacherService teacherService;
	@Autowired
	LoginService LoginService;
	
	@RequestMapping("/ti")
	public String fidStudent(Model model,HttpSession session,String method)throws Exception {
		String teacher_no =(String) session.getAttribute("teacher_no");
		if(teacher_no==null){
		return "redirect:/jsp/lo1.jsp";
		}
		int no =Integer.valueOf(teacher_no);
		Teacher teacher=teacherService.findTeacher(no);
		session.setAttribute("teacher_name", teacher.getTeacher_name());
		model.addAttribute("teacher",teacher);
		if("updata".equals(method)){
			return "tea/tuti";
		}
		return "tea/ti";
	}
	
	@RequestMapping("/tc")
	public String fidCourse(Model model,HttpSession session)throws Exception {
		String teacher_no =(String) session.getAttribute("teacher_no");
		if(teacher_no==null){
		return "redirect:/jsp/lo1.jsp";
		}
		int no =Integer.valueOf(teacher_no);
		List<Course> courses=teacherService.findCourse(no);
		model.addAttribute("courses",courses);
		return "tea/tc";
	}
	
	@RequestMapping("/tsc")
	public String findStudentClass(Model model,int course_no,String course_name,HttpSession session)throws Exception {
		String teacher_no =(String) session.getAttribute("teacher_no");
		if(teacher_no==null){
		return "redirect:/jsp/lo1.jsp";
		}
		int tno =Integer.valueOf(teacher_no);
		teacher_course cc = new teacher_course();
		cc.setTeacher_no(tno);
		cc.setCourse_no(course_no);
		List<Course_classinfo> studentClass=teacherService.findStudentClass(cc);
		model.addAttribute("studentClass",studentClass);
		model.addAttribute("course_name",course_name);
		return "tea/tsc";
	}
	
	@RequestMapping("/tcs")
	public @ResponseBody List<Student> findClassStudent(Model model,HttpSession session,int class_no)throws Exception {
		/*String teacher_no =(String) session.getAttribute("teacher_no");
		if(teacher_no==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}*/
		int cno =Integer.valueOf(class_no);
		List<Student> students=teacherService.findClassStudent(cno);
		return students;
	}
	
	/*@RequestMapping("/tt")
	public @ResponseBody Testinfo findTestinfo(Model model,int course_no,HttpSession session)throws Exception {
		String class_no =(String) session.getAttribute("class_no").toString();
		int cno =Integer.valueOf(class_no);
		course_class cc = new course_class();
		cc.setClass_no(cno);
		cc.setCourse_no(course_no);
		Testinfo test=teacherService.findTestinfo(cc);
		return test;
	}*/
	
	@RequestMapping(value="/tuti",method=RequestMethod.POST)
	public @ResponseBody String updataStudent(Model model,HttpSession session,@RequestBody Teacher tea)throws Exception {
		String teacher_no =(String) session.getAttribute("teacher_no");
		if(teacher_no==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		Teacher t1 = new Teacher();
		int no =Integer.valueOf(teacher_no);
		t1.setTeacher_no(no);
		t1.setTeacher_tel(tea.getTeacher_tel());
		t1.setTeacher_ex(tea.getTeacher_ex());
		teacherService.updataTeacherinfo(t1);
		return "";
	}
	
	@RequestMapping("/tutp")
	public String updatap(Model model,HttpSession session,String oldpa,String newpa,String method)throws Exception {
		String teacher_no =(String) session.getAttribute("teacher_no");
		if(teacher_no==null){
		return "redirect:/jsp/lo1.jsp";
		}				
		if("find".equals(method)){
			return "tea/tutp";
		}else if( "".equals(oldpa) || "".equals(newpa)){
			model.addAttribute("message", "输入不能为空，请重新设置");
			return "tea/tutp";
		}else if(newpa.equals(oldpa)){
			model.addAttribute("message", "新密码不能和旧密码相同，请重新设置");
			return "tea/tutp";
		}else{
			Login login = new Login();
			login.setUsername(teacher_no);
			login.setPassword(oldpa);
			boolean yn = LoginService.LoginTeacher(login);
			if(!yn){
				model.addAttribute("message", "密码不正确");
				return "tea/tutp";
			}else{
				Login login1 = new Login();
				login1.setUsername(teacher_no);
				login1.setPassword(newpa);
				teacherService.updataTeacherPa(login1);
				return "redirect:/jsp/lo1.jsp";	
			}			
		}		
	}
}
