package com.paul9537.care.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.paul9537.care.common.FileManagerService;
import com.paul9537.care.common.EncryptUtils;
import com.paul9537.care.user.dao.UserDAO;
import com.paul9537.care.user.model.Profile;
import com.paul9537.care.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public int signup(String loginId, String password, String name, String email) {
	
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(loginId, encryptPassword, name, email);
	}
	
	public boolean isDuplicate(String loginId) {
		int count = userDAO.selectDuplicate(loginId);
		
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
	
	public int addProfile(int userId, String careType, MultipartFile file, int age, int wage, String information, String primaryAddress, String secondaryAddress, String thirdAddress, String possibleDays, String possibleActivity) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		
		int count = userDAO.selectProfile(userId);
		
		if(count == 0) {
			return userDAO.insertProfile(userId, careType, filePath, age, wage, information, primaryAddress, secondaryAddress, thirdAddress, possibleDays, possibleActivity);
		} else {
			return userDAO.updateProfile(userId, careType, filePath, age, wage, information, primaryAddress, secondaryAddress, thirdAddress, possibleDays, possibleActivity);
		}

	}
	
	public Profile getProfile(int userId) {
		
		return userDAO.selectProfileByUserId(userId);
	}
	
	
}
