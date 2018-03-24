package cn.cw.school.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cw.school.mapper.LoginMapper;
import cn.cw.school.po.Login;

@Service("LoginService")
public class LoginService {
	@Autowired
	LoginMapper LoginMapper;
	
	public boolean LoginStudent(Login login) throws Exception{
		if(LoginMapper.LoginStudent(login)==1){
			return true;
		}
		return false;		
	}
	
	public boolean LoginTeacher(Login login) throws Exception{
		if(LoginMapper.LoginTeacher(login)==1){
			return true;
		}
		return false;	
	}
	
	public boolean LoginManager(Login login) throws Exception{
		if(LoginMapper.LoginManager(login)==1){
			return true;
		}
		return false;		
	}
}
