package cn.cw.school.controller;

import java.util.ArrayList;
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
import cn.cw.school.po.Grade;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.course_class;
import cn.cw.school.service.LoginService;
import cn.cw.school.service.StudentService;

@Controller
@RequestMapping("/sm")
public class StudentController {
	@Autowired
	StudentService studentService;
	@Autowired
	LoginService LoginService;
	
	@RequestMapping("/si")
	public String findStudent(Model model,HttpSession session,String method)throws Exception {
		String student_no =(String) session.getAttribute("student_no");
		if(student_no==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}		
		int no =Integer.valueOf(student_no);
		Student student=studentService.findStudent(no);
		session.setAttribute("class_no", student.getClass_no());
		model.addAttribute("student",student);
		if("updata".equals(method)){
			return "stu/susi";
		}
		return "stu/si";
	}
	
	@RequestMapping("/sc")
	public String findCourse(Model model,HttpSession session)throws Exception {
		String student_no =(String) session.getAttribute("student_no");
		if(student_no==null){
		return "redirect:/jsp/lo1.jsp";
		}	
		String class_no =session.getAttribute("class_no").toString();			
		int no =Integer.valueOf(class_no);
		List<Course> courses=studentService.findCourse(no);
		model.addAttribute("courses",courses);
		return "stu/sc";
	}
		
	@RequestMapping("/st")
	public @ResponseBody Course_classinfo findTestinfo(Model model,int course_no,HttpSession session)throws Exception {
		String class_no =(String) session.getAttribute("class_no").toString();
		int cno =Integer.valueOf(class_no);
		course_class cc = new course_class();
		cc.setClass_no(cno);
		cc.setCourse_no(course_no);
		Course_classinfo cci=studentService.findTestinfo(cc);
		return cci;
	}
	
	@RequestMapping("/sg")
	public String findGrade(Model model,HttpSession session,int limit)throws Exception {
		String student_no =(String) session.getAttribute("student_no");
		if(student_no==null){
		return "redirect:/jsp/lo1.jsp";
		}
		int no =Integer.valueOf(student_no);
		List<Integer> li = new ArrayList<Integer>();
		li.add(no);
		li.add(limit);
		List<Grade> grades=studentService.findGrade(li);
		model.addAttribute("grades",grades);
		return "stu/sg";
	}
	
	@RequestMapping(value="/susi",method=RequestMethod.POST)
	public @ResponseBody String updataStudent(Model model,HttpSession session,@RequestBody Student stu)throws Exception {
		String student_no =(String) session.getAttribute("student_no");
		if(student_no==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		Student s1 = new Student();
		int no =Integer.valueOf(student_no);
		s1.setStudent_no(no);
		s1.setStudent_tel(stu.getStudent_tel());
		s1.setStudent_ex(stu.getStudent_ex());
		studentService.updataStudentinfo(s1);
		return "";
	}
	
	@RequestMapping("/susp")
	public String updatap(Model model,HttpSession session,String oldpa,String newpa,String method)throws Exception {
		String student_no =(String) session.getAttribute("student_no");
		if(student_no==null){
		return "redirect:/jsp/lo1.jsp";
		}				
		if("find".equals(method)){
			return "stu/susp";
		}else if( "".equals(oldpa) || "".equals(newpa)){
			model.addAttribute("message", "输入不能为空，请重新设置");
			return "stu/susp";
		}else if(newpa.equals(oldpa)){
			model.addAttribute("message", "新密码不能和旧密码相同，请重新设置");
			return "stu/susp";
		}else{
			Login login = new Login();
			login.setUsername(student_no);
			login.setPassword(oldpa);
			boolean yn = LoginService.LoginStudent(login);
			if(!yn){
				model.addAttribute("message", "密码不正确");
				return "stu/susp";
			}else{
				Login login1 = new Login();
				login1.setUsername(student_no);
				login1.setPassword(newpa);
				studentService.updataStudentPa(login1);
				return "redirect:/jsp/lo1.jsp";	
			}			
		}		
	}
}
