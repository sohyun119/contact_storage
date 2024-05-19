package com.contact;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		
		String result = "";
		if(count == 1) {
			result = "연락처가 등록되었습니다.";
		}else {
			result = "연락처 등록에 실패했습니다.";
		}
	    return "result";
	}
	
	@GetMapping("delete")
	public Map<String, String> deleteContact(@RequestParam("contactId") int contactId) {
		
		int count = contactBO.deleteContact(contactId);
	
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result","success");
		}else {
			map.put("result","fail");
		}
	
	    return map;
	}
	
	

}
