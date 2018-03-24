package cn.cw.school.po;

public class CCTinfo {
	int course_no;  //课程号
	int class_no;   //班级号
	int teacher_no;
	String course_name;  //课程名称
	String class_name;   //班级名称
	String teacher_name;
	
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
	public int getTeacher_no() {
		return teacher_no;
	}
	public void setTeacher_no(int teacher_no) {
		this.teacher_no = teacher_no;
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
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
}
