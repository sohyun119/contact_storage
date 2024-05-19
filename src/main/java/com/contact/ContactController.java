package com.contact;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.contact.bo.ContactBO;
import com.contact.dto.ContactDTO;

@Controller
@RequestMapping("contact")
public class ContactController {
	
	@Autowired
	private ContactBO contactBO;
	
	
	@GetMapping("/home")
	public String homeView(Model model) {
		
		List<ContactDTO> contactList = new ArrayList<>();
		
		contactList = contactBO.readContactList();
		System.out.println(contactList);
		model.addAttribute("contactList",contactList);
		
		return "contact/home";
	}
	
	@GetMapping("createView")
	public String createView() {
		return "contact/createView";
	}
	
	@GetMapping("updateView")
	public String updateView(@RequestParam("contactId") int contactId
							,Model model) {
		
		
		model.addAttribute("contactId",contactId);
		
		return "contact/createView";
	}
	

}
