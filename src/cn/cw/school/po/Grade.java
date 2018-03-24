package cn.cw.school.po;

public class Grade {
	/*
	Student_no：学生号，int
	Course_no： 课程号  int
	Grade_value：成绩 int*/
	int student_no;
	int course_no;
	String course_name;  //课程名称
	int grade_value;
	
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getGrade_value() {
		return grade_value;
	}
	public void setGrade_value(int grade_value) {
		this.grade_value = grade_value;
	}
	
}
