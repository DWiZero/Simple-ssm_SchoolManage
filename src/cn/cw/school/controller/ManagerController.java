package cn.cw.school.controller;

import cn.cw.school.po.*;
import cn.cw.school.service.LoginService;
import cn.cw.school.service.ManagerService;
import cn.cw.school.service.StudentService;
import cn.cw.school.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/mm")
public class ManagerController {
	@Autowired
	ManagerService ManagerService;
	@Autowired
	LoginService LoginService;
	@Autowired
	StudentService studentService;
	@Autowired
	TeacherService teacherService;
	
	@RequestMapping("/msi")
	public String manageStudentinfo(Model model,HttpSession session,String method,String student_no)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/mss";
		}else if("updata".equals(method)){
			int no = Integer.valueOf(student_no);
			Student student=studentService.findStudent(no);
			model.addAttribute("student",student);
			return "ma/musi";
		}
		return "redirect:/jsp/lo1.jsp";  //问题
	}
	
	@RequestMapping("/mti")
	public String manageTeacherinfo(Model model,HttpSession session,String method,String teacher_no)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/mss";
		}else if("updata".equals(method)){
			int no = Integer.valueOf(teacher_no);
			Teacher teacher=teacherService.findTeacher(no);
			model.addAttribute("teacher",teacher);
			return "ma/muti";
		}
		return "redirect:/jsp/lo1.jsp";  //问题
	}
	
	@RequestMapping("/msl")
	public String updataStudentp(Model model,HttpSession session,Login login,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("updata".equals(method)){
			return "ma/musp";		
		}
		studentService.updataStudentPa(login);
		return "ma/mss";		
	}
	
	@RequestMapping("/mtl")
	public String updataTeacherp(Model model,HttpSession session,Login login,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("updata".equals(method)){
			return "ma/mutp";	
		}
		teacherService.updataTeacherPa(login);
		return "ma/mss";		
	}
	
	@RequestMapping("/musi")
	public String updataStudentinfo(Model model,HttpSession session,Student student)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		ManagerService.maUStudentinfo(student);
		return "ma/mss";		
	}
	
	@RequestMapping("/muti")
	public String updatateacherinfo(Model model,HttpSession session,Teacher teacher)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if(ManagerService.maUTeacherinfo(teacher)==1){
		return "ma/mss";		
		}else {
			model.addAttribute("message", "保存失败");
			return "ma/muti";
		}
	}
	
	@RequestMapping("/masi")
	public String addStudentinfo(Model model,HttpSession session,Student stu,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/masi";
		}else if("add".equals(method)){
			if(ManagerService.addStudent(stu)==1){
				return "ma/mss";		
				}else {
					model.addAttribute("message", "保存失败");
					return "ma/masi";
				}
		}
		return "ma/mss";	
	}
	
	@RequestMapping("/mati")
	public String addteacherinfo(Model model,HttpSession session,Teacher teacher,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/mati";
		}else if("add".equals(method)){
			if(ManagerService.addTeacher(teacher)==1){
				return "ma/mss";		
				}else {
					model.addAttribute("message", "保存失败");
					return "ma/mati";
				}
		}
		return "ma/mss";	
	}
	
	@RequestMapping("/msg")
	public String StudentGrade(Model model,HttpSession session,String method,String class_no)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/mcl";
		}else if("find".equals(method)){
			int no = Integer.valueOf(class_no);
			List<Course> courses=studentService.findCourse(no);
			model.addAttribute("courses",courses);
			model.addAttribute("class_no",class_no);
			return "ma/mcl";
		}
		return "ma/mss";		
	}
	
	@RequestMapping("/masg")
	public String addStudentGrade(Model model,HttpSession session,course_class cc,String course_name,String method,list_grade lg)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("find".equals(method)){
			int cno = Integer.valueOf(cc.class_no);
			List<Student> students=teacherService.findClassStudent(cno);
			model.addAttribute("students", students);
			model.addAttribute("course_class", cc);
			model.addAttribute("course_name", course_name);
			return "ma/masg";
		}else if("add".equals(method)){
			if(ManagerService.addgrade(lg.getGrades())>=1){
				return "ma/mss";
			}else {
				model.addAttribute("message","成绩添加失败");
				return "ma/masg";
			}	
		}
		return "ma/mss";			
	}
	
	@RequestMapping("/musg")
	public String upStudentGrade(Model model,HttpSession session,String method,String student_no,Grade grade)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/musg";
		}else if("find".equals(method)){
			int no = Integer.valueOf(student_no);
			List<Integer> li = new ArrayList<Integer>();
			li.add(no);
			li.add(100);
			List<Grade> grades=studentService.findGrade(li);
			model.addAttribute("grades",grades);
			model.addAttribute("student_no",student_no);
			return "ma/musg";
		}else if("up".equals(method)){
			if(studentService.updataGrade(grade)>=1){
				int no = Integer.valueOf(grade.getStudent_no());
				List<Integer> li = new ArrayList<Integer>();
				li.add(no);
				li.add(100);
				List<Grade> grades=studentService.findGrade(li);
				model.addAttribute("grades",grades);
				model.addAttribute("student_no",student_no);
				return "ma/musg";
			}else {
				model.addAttribute("message","成绩添加失败");
				return "ma/musg";
			}	
		}
		return "ma/mss";			
	}
	
	@RequestMapping("/mci")
	public String classtest(Model model,HttpSession session,String method,String class_no)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){
			return "ma/mci";
		}else if("find".equals(method)){
			int no = Integer.valueOf(class_no);
			List<Course> courses=studentService.findCourse(no);
			model.addAttribute("courses",courses);
			model.addAttribute("class_no",class_no);
			return "ma/mci";
		}
		return "ma/mss";		
	}
	
	@RequestMapping("/muci")
	public String upclassinfo(Model model,HttpSession session,course_class cc,String method,Course_classinfo ncci)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("find".equals(method)){
			Course_classinfo cci = studentService.findTestinfo(cc);
			model.addAttribute("cci", cci);
			return "ma/muci";
		}else if("upda".equals(method)){
			if(ManagerService.upacci(ncci)==1){
				return "ma/mss";
			}else {
				model.addAttribute("message","成绩添加失败");
				return "ma/muci";
			}	
		}
		return "ma/mss";			
	}
	
	@RequestMapping("/mco")
	public String manageCourse(Model model,HttpSession session,String method,String course_no)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("search".equals(method)){	
			return "ma/mco";
		}else if("find".equals(method)){
			int no = Integer.valueOf(course_no);
			List<CCTinfo> cct=ManagerService.findallclass(no);
			model.addAttribute("cct", cct);
			model.addAttribute("course_no", no);
			return "ma/mco";
		}
		return "ma/mss";		
	}
	
	@RequestMapping("/mdc")
	public String delClassCouse(Model model,HttpSession session,course_class cc)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if(ManagerService.delClassCouse(cc)==1){
			return "ma/mco";
		};
		return "ma/mss";		
	}
	
	@RequestMapping("/mcac")
	public String courseAddclass(Model model,HttpSession session,String course_no,String method,Course_classinfo cci)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("find".equals(method)){
			model.addAttribute("course_no", course_no);
			return "ma/mcac";
		}else if("add".equals(method)){
			System.out.println("dsdadas"+cci.getTest_date());
			if(ManagerService.courseAddclass(cci)==1){				
				return "ma/mss";
			}else {
				model.addAttribute("message","班级添加失败");
				return "ma/mcac";
			}	
		}
		return "ma/mss";
	}
	
	@RequestMapping("/maco")
	public String Addcourse(Model model,HttpSession session,Course co,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("find".equals(method)){			
			return "ma/maco";
		}else if("add".equals(method)){
			if(ManagerService.addCourse(co)==1){				
				return "ma/mss";
			}else {
				model.addAttribute("message","课程添加失败");
				return "ma/maco";
			}	
		}
		return "ma/mss";
	}
	
	@RequestMapping("/macl")
	public String Addclass(Model model,HttpSession session,CCTinfo ci,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";//应抛出异常
		}
		if("find".equals(method)){			
			return "ma/macl";
		}else if("add".equals(method)){
			if(ManagerService.addclass(ci)==1){				
				return "ma/mss";
			}else {
				model.addAttribute("message","班级添加失败");
				return "ma/macl";
			}	
		}
		return "ma/mss";
	}
	
	@RequestMapping("/mop")
	public String updatap(Model model,HttpSession session,String oldpa,String newpa,String method)throws Exception {
		String managername =(String) session.getAttribute("managername");
		if(managername==null){
		return "redirect:/jsp/lo1.jsp";
		}				
		if("find".equals(method)){
			return "ma/mop";
		}else if( "".equals(oldpa) || "".equals(newpa)){
			model.addAttribute("message", "输入不能为空，请重新设置");
			return "ma/mop";
		}else if(newpa.equals(oldpa)){
			model.addAttribute("message", "新密码不能和旧密码相同，请重新设置");
			return "ma/mop";
		}else{
			Login login = new Login();
			login.setUsername(managername);
			login.setPassword(oldpa);
			boolean yn = LoginService.LoginManager(login);
			if(!yn){
				model.addAttribute("message", "密码不正确");
				return "ma/mop";
			}else{
				Login login1 = new Login();
				login1.setUsername(managername);
				login1.setPassword(newpa);
				ManagerService.updataowerPa(login1);
				return "redirect:/jsp/lo1.jsp";	
			}			
		}		
	}
}
