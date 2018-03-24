package cn.cw.school.po;

import java.util.List;
/**
 * 登记成绩：前端传的list集合
 * @author fengyun
 *
 */
public class list_grade {

	List<Grade> grades;
	
	public List<Grade> getGrades() {
		return grades;
	}

	public void setGrades(List<Grade> grades) {
		this.grades = grades;
	}
}
