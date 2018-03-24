package cn.cw.school.mapper;

import java.util.List;

import cn.cw.school.po.CCTinfo;
import cn.cw.school.po.Course;
import cn.cw.school.po.Course_classinfo;
import cn.cw.school.po.Grade;
import cn.cw.school.po.Login;
import cn.cw.school.po.Student;
import cn.cw.school.po.Teacher;
import cn.cw.school.po.course_class;

public interface ManagerMapper {

	public void updataowerPa(Login login) throws Exception;

	public void maUStudentinfo(Student student) throws Exception;

	public int maUTeacherinfo(Teacher teacher) throws Exception;

	public int addgrade(List<Grade> list) throws Exception;

	public int upacci(Course_classinfo cci) throws Exception;

	public List<CCTinfo> findallclass(int no) throws Exception;

	public int delClassCouse(course_class cc) throws Exception;

	public int courseAddclass(Course_classinfo cci) throws Exception;

	public int addCourse(Course co) throws Exception;

	public int addclass(CCTinfo ci) throws Exception;

}
