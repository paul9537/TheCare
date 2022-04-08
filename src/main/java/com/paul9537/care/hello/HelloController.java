package com.paul9537.care.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

	@RequestMapping("/helloworld")
	@ResponseBody
	public String helloWorld() {
		return "helloWorld!";
	}
}
