package com.contact;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("contact")
public class ContactController {
	
	@GetMapping("/home")
	public String homeView() {
		return "contact/home";
	}
	
	@GetMapping("createView")
	public String createView() {
		return "contact/createView";
	}

}
