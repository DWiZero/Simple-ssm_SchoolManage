package cn.cw.school.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cw.school.mapper.StudentMapper;
import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Grade;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.course_class;

@Service("studentService")
public class StudentService {

	@Autowired
	StudentMapper studentMapper;
	
	public Student findStudent(int student_no) throws Exception {
		return studentMapper.findStudent(student_no);
	}
	
	public List<Course> findCourse(int class_no) throws Exception{
		return studentMapper.findCourse(class_no);
	}
	
	public Course_classinfo findTestinfo(course_class cc) throws Exception{
		return studentMapper.findTestinfo(cc);
	}
	
	public List<Grade> findGrade(List<Integer> li) throws Exception{
		return studentMapper.findGrade(li);		
	}

	public void updataStudentinfo(Student s1) throws Exception{
		studentMapper.updataStudentinfo(s1);		
	}
	
	public void updataStudentPa(Login login) throws Exception{
		studentMapper.updataStudentPa(login);		
	}

	public int updataGrade(Grade grade) throws Exception{
		return studentMapper.updataGrade(grade);
	}
}
