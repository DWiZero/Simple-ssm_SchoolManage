package cn.cw.school.po;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Course_classinfo {
	/*course_no：课程号  int
	Class_no:   班级号  int
	联合主键
	teacher_no:    教师号  int
	Classcouese_time:课程区间char
	Classcouese_address:课程地点char
	Test_date:  考试时间 datetime
	Test_address: 考试地点 char（50）*/
	int course_no;  //课程号
	int class_no;   //班级号
	int teacher_no; 
	String course_name;  //课程名称
	String class_name;   //班级名称
	String classcourse_time;
	String classcourse_address;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	Date  test_date;
	String test_address;
	
	public int getTeacher_no() {
		return teacher_no;
	}
	public void setTeacher_no(int teacher_no) {
		this.teacher_no = teacher_no;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getClasscourse_time() {
		return classcourse_time;
	}
	public void setClasscourse_time(String classcourse_time) {
		this.classcourse_time = classcourse_time;
	}
	public String getClasscourse_address() {
		return classcourse_address;
	}
	public void setClasscourse_address(String classcourse_address) {
		this.classcourse_address = classcourse_address;
	}
	public Date getTest_date() {
		return test_date;
	}
	public void setTest_date(Date test_date) {
		this.test_date = test_date;
	}
	public String getTest_address() {
		return test_address;
	}
	public void setTest_address(String test_address) {
		this.test_address = test_address;
	}
}
