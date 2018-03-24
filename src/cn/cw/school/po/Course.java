package cn.cw.school.po;

public class Course {
	/*Course：
	Course_no：   课程号  int主键
	Course_name：课程名char（20）
	course_major：必修enum*/
	int  course_no;
	String course_name;
	String course_major;
	
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
	public String getCourse_major() {
		return course_major;
	}
	public void setCourse_major(String course_major) {
		this.course_major = course_major;
	}
	
}
