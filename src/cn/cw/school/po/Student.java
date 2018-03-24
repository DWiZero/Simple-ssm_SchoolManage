package cn.cw.school.po;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Student {
	/*student_no：   学号  int 主键
	Student_name：姓名char（20）
	Student_sex：性别  enum
	Student_birthday：生日date
	Student_schooldate:入校日期date
	student_address:籍贯char（50）
	student_id：身份证号  char（18）
	Student_tel:手机char（11）
	student_ex：备注 text
	Class_id :班级号  int   外键*/
	int  student_no;
	String student_name;
	String student_sex;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date student_birthday;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date student_schooldate;
	String student_address;
	String student_id;
	String student_tel;
	String student_ex;
	int class_no;
	
	public String getStudent_sex() {
		return student_sex;
	}
	public void setStudent_sex(String student_sex) {
		this.student_sex = student_sex;
	}
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public Date getStudent_birthday() {
		return student_birthday;
	}

	public void setStudent_birthday(Date student_birthday) {
		this.student_birthday = student_birthday;
	}
	public Date getStudent_schooldate() {
		return student_schooldate;
	}

	public void setStudent_schooldate(Date student_schooldate) {
		this.student_schooldate = student_schooldate;
	}
	public String getStudent_address() {
		return student_address;
	}
	public void setStudent_address(String student_address) {
		this.student_address = student_address;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getStudent_tel() {
		return student_tel;
	}
	public void setStudent_tel(String student_tel) {
		this.student_tel = student_tel;
	}
	public String getStudent_ex() {
		return student_ex;
	}
	public void setStudent_ex(String student_ex) {
		this.student_ex = student_ex;
	}
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
}
