package com.paul9537.care.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.paul9537.care.user.model.User;

@Repository
public interface UserDAO {

	public int insertUser(
			@Param("type") String type,
			@Param("loginId") String loginId,
			@Param("password") String password,
			@Param("name") String name,
			@Param("email") String email,
			@Param("address") String address);
	
	public int selectDuplicate(@Param("loginId") String loginId);
	
	public User selectUser(
			@Param("loginId") String loginId,
			@Param("password") String password);
}