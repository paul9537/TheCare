package com.paul9537.care.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.paul9537.care.user.bo.UserBO;
import com.paul9537.care.user.model.User;

@RestController
@RequestMapping("/user")
public class UserRestController {
	
	@Autowired
	private UserBO userBO;
	
	
	@PostMapping("/signup")
	public Map<String, String> signup(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email) {
		
		int count = userBO.signup(loginId, password, name, email);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	@GetMapping("/isDuplicate")
	public Map<String, Boolean> duplicateId(@RequestParam("loginId") String loginId) {
		
		boolean isDuplicate = userBO.isDuplicate(loginId);
		
		Map<String, Boolean> result = new HashMap<>();
		
		result.put("is_duplicate", isDuplicate);
		
		return result;
	}
	
	@PostMapping("/signin")
	public Map<String, String> signin(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		User user = userBO.getUser(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(user != null) {
			result.put("result", "success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("loginId", user.getLoginId());
			session.setAttribute("name", user.getName());
			session.setAttribute("email", user.getEmail());
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	@PostMapping("/profile_edit")
	public Map<String, String> profileEdit(
			@RequestParam("careType") String careType,
			@RequestParam("file") MultipartFile file,
			@RequestParam("age") int age,
			@RequestParam("wage") int wage,
			@RequestParam("information") String information,
			@RequestParam("primaryAddress") String primaryAddress,
			@RequestParam("secondaryAddress") String secondaryAddress,
			@RequestParam("thirdAddress") String thirdAddress,
			@RequestParam("possibleDays") String possibleDays,
			@RequestParam("possibleActivity") String PossibleActivity,
			HttpServletRequest request) {
		
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = userBO.addProfile(userId, careType, file, age, wage, information, primaryAddress, secondaryAddress, thirdAddress, possibleDays, PossibleActivity);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}

}
