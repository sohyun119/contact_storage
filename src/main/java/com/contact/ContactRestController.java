package com.contact;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.contact.bo.ContactBO;

@RestController
@RequestMapping("contact")
public class ContactRestController {
	
	@Autowired
	private ContactBO contactBO;
	
	
	@PostMapping("create")
	public String createContact(@RequestParam("profileImgInput") MultipartFile profileImgInput
								, @RequestParam("nameInput") String nameInput
								, @RequestParam("phoneNumberInput") String phoneNumberInput
								, @RequestParam("emailInput") String emailInput) {
		
		int count = contactBO.createContact(profileImgInput, nameInput, phoneNumberInput, emailInput);
		
		String responseMessage = "";
		if(count == 1) {
			responseMessage = "success";
		}else {
			responseMessage = "fail";
		}
		
		return responseMessage;
	}

}
