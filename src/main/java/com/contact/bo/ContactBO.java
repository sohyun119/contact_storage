package com.contact.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.contact.common.FileManagerService;
import com.contact.dao.ContactDAO;

@Service
public class ContactBO {
	
	@Autowired
	private ContactDAO contactDAO;
	
	public int createContact(MultipartFile profileImgInput ,String name, String phoneNumber, String email) {
		
		String profileImg = "";
		
		if(!profileImgInput.getOriginalFilename().isEmpty()) {
			profileImg = FileManagerService.saveFile(profileImgInput);
		}
		
		return contactDAO.insertContact(profileImg, name, phoneNumber, email);
	}

}
