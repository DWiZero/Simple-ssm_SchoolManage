package cn.cw.school.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.cw.school.mapper.ManagerMapper;
import cn.cw.school.mapper.StudentMapper;
import cn.cw.school.mapper.TeacherMapper;
import cn.cw.school.po.CCTinfo;
import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Grade;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.Teacher;
import cn.cw.school.po.course_class;

@Service("managerService")
public class ManagerService {
	@Autowired
	ManagerMapper managerMapper;
	@Autowired
	TeacherMapper teacherMapper;
	@Autowired
	StudentMapper studentMapper;
	
	public void updataowerPa(Login login) throws Exception {
		managerMapper.updataowerPa(login);
		
	}

	public void maUStudentinfo(Student student) throws Exception {
		managerMapper.maUStudentinfo(student);
		
	}

	public int maUTeacherinfo(Teacher teacher) throws Exception{
		return managerMapper.maUTeacherinfo(teacher);
		
	}

	public int addgrade(List<Grade> grades) throws Exception{
		return managerMapper.addgrade(grades);
		
	}

	public int upacci(Course_classinfo cci) throws Exception {
		return managerMapper.upacci(cci);
	}

	public List<CCTinfo> findallclass(int no) throws Exception{
		return managerMapper.findallclass(no);
	}

	public int delClassCouse(course_class cc) throws Exception{
		return managerMapper.delClassCouse(cc);
		
	}

	public int courseAddclass(Course_classinfo cci) throws Exception{
		return managerMapper.courseAddclass(cci);
	}

	public int addCourse(Course co) throws Exception{
		return managerMapper.addCourse(co);
	}

	public int addclass(CCTinfo ci) throws Exception{
		return managerMapper.addclass(ci);
	}
	
	@Transactional(propagation=Propagation.REQUIRED)
	public int addTeacher(Teacher teacher) throws Exception{
		int i = teacherMapper.addTeacherinfo(teacher);
		Login login = new Login();
		String usname =String.valueOf(teacher.getTeacher_no());
		String pa = String.valueOf(teacher.getTeacher_no());
		login.setUsername(usname);
		login.setPassword(pa);
		int j = teacherMapper.addTeacherpa(login);
		if (i == 1 && j == 1) {
			return 1;
		}
		return 0;
	}
	
    @Transactional(propagation=Propagation.REQUIRED)
	public int addStudent(Student stu) throws Exception{
    	Login login = new Login();
		String usname =String.valueOf(stu.getStudent_no());
		String pa = String.valueOf(stu.getStudent_no());
		login.setUsername(usname);
		login.setPassword(pa);
		
    	int i = studentMapper.addStudentinfo(stu);
		int j = studentMapper.addStudentpa(login);		
		if (i == 1 && j == 1) {
			return 1;
		}
		return 0;
	}

}
