package cn.cw.school.mapper;

import java.util.List;

import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.Teacher;
import cn.cw.school.po.teacher_course;


public interface TeacherMapper {

	public Teacher findTeacher(int teacher_no) throws Exception;
	
	public List<Course> findCourse(int teacher_no) throws Exception;
	
	public List<Course_classinfo> findStudentClass(teacher_course cc) throws Exception;
	
	public List<Student> findClassStudent(int class_no) throws Exception;

	public void updataTeacherPa(Login login) throws Exception;

	public void updataTeacherinfo(Teacher t1) throws Exception;
	
	public int addTeacherinfo(Teacher t) throws Exception;
	
	public int addTeacherpa(Login login) throws Exception;
}
