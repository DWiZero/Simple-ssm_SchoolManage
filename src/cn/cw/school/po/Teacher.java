package cn.cw.school.po;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Teacher {
	/*Teacher_no：   教师号  int 主键
	Teacher_name：姓名char（100）
	Teacher_sex：性别  enum
	Teacher_age：年龄 int
	Teacher_work:入校日期date
	Teacher_address:籍贯char（50）
	Teacher_id：身份证号  char（18）
	Teacher_tel:手机char（11）
	Teacher_ex：备注 text*/
	int  teacher_no;
	String teacher_name;
	String teacher_sex;
	int teacher_age;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date teacher_work;
	String teacher_address;
	String teacher_id;
	String teacher_tel;
	String teacher_ex;
	
	public String getTeacher_sex() {
		return teacher_sex;
	}
	public void setTeacher_sex(String teacher_sex) {
		this.teacher_sex = teacher_sex;
	}
	public int getTeacher_no() {
		return teacher_no;
	}
	public void setTeacher_no(int teacher_no) {
		this.teacher_no = teacher_no;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public int getTeacher_age() {
		return teacher_age;
	}
	public void setTeacher_age(int teacher_age) {
		this.teacher_age = teacher_age;
	}
	public Date getTeacher_work() {
		return teacher_work;
	}
	public void setTeacher_work(Date teacher_work) {
		this.teacher_work = teacher_work;
	}
	public String getTeacher_address() {
		return teacher_address;
	}
	public void setTeacher_address(String teacher_address) {
		this.teacher_address = teacher_address;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getTeacher_tel() {
		return teacher_tel;
	}
	public void setTeacher_tel(String teacher_tel) {
		this.teacher_tel = teacher_tel;
	}
	public String getTeacher_ex() {
		return teacher_ex;
	}
	public void setTeacher_ex(String teacher_ex) {
		this.teacher_ex = teacher_ex;
	}
	
	
}
