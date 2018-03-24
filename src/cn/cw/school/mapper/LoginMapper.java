package cn.cw.school.mapper;

import cn.cw.school.po.Login;

public interface LoginMapper {

	public int LoginStudent(Login login) throws Exception;
	
	public int LoginTeacher(Login login) throws Exception;
	
	public int LoginManager(Login login) throws Exception;
}
