package com.contact.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.contact.dto.ContactDTO;

@Repository
public interface ContactDAO {
	
	public int insertContact(@Param("profileImg") String profileImg
							, @Param("name") String name
							, @Param("phoneNumber") String phoneNumber
							, @Param("email") String email);
	
	public List<ContactDTO> selectContactList();
	
	public int deleteContact(@Param("contactId") int contactId);
	
}
