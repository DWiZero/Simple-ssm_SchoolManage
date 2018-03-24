package cn.cw.school.mapper;

import java.util.List;
import cn.cw.school.po.Student;
import cn.cw.school.po.course_class;
import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Grade;
import cn.cw.school.po.Login;;

public interface StudentMapper {

	public Student findStudent(int student_no) throws Exception;
	
	public List<Course> findCourse(int class_no) throws Exception;
	
	public Course_classinfo findTestinfo(course_class cc) throws Exception;
	
	public List<Grade> findGrade(List<Integer> li) throws Exception;

	public void updataStudentinfo(Student s1) throws Exception;

	public void updataStudentPa(Login login) throws Exception;

	public int addStudentinfo(Student stu) throws Exception;

	public int addStudentpa(Login login) throws Exception;

	public int updataGrade(Grade grade) throws Exception;

}
