package cn.cw.school.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cw.school.mapper.TeacherMapper;
import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.Teacher;
import cn.cw.school.po.teacher_course;

@Service("teacherService")
public class TeacherService {

	@Autowired
	TeacherMapper teacherMapper;
	
	public Teacher findTeacher(int teacher_no) throws Exception{
		return teacherMapper.findTeacher(teacher_no);
		
	}
	
	public List<Course> findCourse(int teacher_no) throws Exception{
		return teacherMapper.findCourse(teacher_no);
		
	}
	
	public List<Course_classinfo> findStudentClass(teacher_course cc) throws Exception{
		return teacherMapper.findStudentClass(cc);
		
	}
	
	public List<Student> findClassStudent(int class_no) throws Exception{
		return teacherMapper.findClassStudent(class_no);
		
	}

	public void updataTeacherPa(Login login) throws Exception{
		teacherMapper.updataTeacherPa(login);
		
	}

	public void updataTeacherinfo(Teacher t1) throws Exception{
		teacherMapper.updataTeacherinfo(t1);
		
	}
}
