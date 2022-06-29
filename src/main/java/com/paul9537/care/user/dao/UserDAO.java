package com.paul9537.care.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.paul9537.care.user.model.Profile;
import com.paul9537.care.user.model.User;

@Repository
public interface UserDAO {

	public int insertUser(
			@Param("loginId") String loginId,
			@Param("password") String password,
			@Param("name") String name,
			@Param("email") String email);
	
	public int selectDuplicate(@Param("loginId") String loginId);
	
	public User selectUser(
			@Param("loginId") String loginId,
			@Param("password") String password);
	
	public int insertProfile(
			@Param("userId") int userId,
			@Param("careType") String careType,
			@Param("imagePath") String imagePath,
			@Param("age") int age,
			@Param("wage") int wage,
			@Param("information") String information,
			@Param("primaryAddress") String primaryAddress,
			@Param("secondaryAddress") String secondaryAddress,
			@Param("thirdAddress") String thirdAddress,
			@Param("possibleDays") String possibleDays,
			@Param("possibleActivity") String possibleActivity);
	
	public int selectProfile(@Param("userId") int userId);
	
	public int updateProfile(
			@Param("userId") int userId,
			@Param("careType") String careType,
			@Param("imagePath") String imagePath,
			@Param("age") int age,
			@Param("wage") int wage,
			@Param("information") String information,
			@Param("primaryAddress") String primaryAddress,
			@Param("secondaryAddress") String secondaryAddress,
			@Param("thirdAddress") String thirdAddress,
			@Param("possibleDays") String possibleDays,
			@Param("possibleActivity") String possibleActivity);
	
	public Profile selectProfileByUserId(
			@Param("userId") int userId);
}
