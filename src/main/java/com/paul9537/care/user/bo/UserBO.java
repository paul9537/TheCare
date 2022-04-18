package com.paul9537.care.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paul9537.care.common.EncryptUtils;
import com.paul9537.care.user.dao.UserDAO;
import com.paul9537.care.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public int signup(String userType, String careType, String loginId, String nickname, String password, String name, String email, String address) {
	
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(userType, careType, loginId, nickname, encryptPassword, name, email, address);
	}
	
	public boolean isDuplicate(String loginId) {
		int count = userDAO.selectDuplicate(loginId);
		
		if(count == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public boolean nicknameDuplicate(String nickname) {
		int count = userDAO.selectNicknameDuplicate(nickname);
		
		if(count == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public User getUser(String loginId, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUser(loginId, encryptPassword);
	}
}
